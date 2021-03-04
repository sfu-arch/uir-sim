package dandelion.shell

import chisel3._
import chisel3.util._
import chipsalliance.rocketchip.config._
import dandelion.config._
import dandelion.interfaces.{ControlBundle, DataBundle}
import dandelion.interfaces.axi._
import dandelion.memory.cache._
import dandelion.junctions._
import dandelion.accel._
import memGen.memory.cache._
import memGen.shell._




class memGenAccel ( PtrsIn: Seq[Int] = List(),
                               ValsIn: Seq[Int] = List(64, 64, 64),
                               RetsOut: Seq[Int] = List(8,32,256))
                             (implicit p:Parameters) extends  memGenModule (PtrsIn, ValsIn, RetsOut){

  val accel = Module (new memGenTopLevel())

//  val ArgSplitter = Module(new SplitCallDCR(ptrsArgTypes = List(1, 1, 1, 1), valsArgTypes = List()))
//  ArgSplitter.io.In <> io.in

  accel.io.instruction.bits.inst := io.in.bits.dataVals("field0").asUInt()
  accel.io.instruction.bits.addr := io.in.bits.dataVals("field1").asUInt()
  accel.io.instruction.bits.data := io.in.bits.dataVals("field2").asTypeOf(UInt((accelParams.cacheBlockBits).W))

 
   io.out <> DontCare

  io.out.bits.data("field0").data := accel.io.resp.bits.inst
  io.out.bits.data("field1").data := Mux(accel.io.resp.valid, accel.io.resp.bits.addr,0.U)
  io.out.bits.data("field2").data := accel.io.resp.bits.data

  // io.out.bits.data("field0").asControlBundle()
  // io.out.bits.data("field1").asControlBundle()
  // io.out.bits.data("field2").asControlBundle()
  io.out.valid := accel.io.resp.valid

  accel.io.resp.ready := io.out.ready


//  ArgSplitter.io.Out.enable.bits.debug := false.B
//  ArgSplitter.io.Out.enable.bits.taskID := 0.U
//  ArgSplitter.io.Out.enable.bits.control := accel.io.instruction.ready

  accel.io.instruction.valid := io.in.valid
  // io.out <> DontCare

  io.in.ready := accel.io.instruction.ready
  io.mem <> accel.io.mem

}