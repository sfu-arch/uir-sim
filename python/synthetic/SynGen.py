# from _typeshed import WriteableBuffer
# import numpy as np
from io import SEEK_END
from random import randint, random
import csv
import os
import argparse

cwd = os.path.dirname(os.path.abspath(__file__))


parser = argparse.ArgumentParser(description='Synthetic Benchmark')

parser.add_argument('--rep', dest='REP', type=int, required= False, default= 2048,
                    help='Number of generated address')

parser.add_argument('--round', dest='ROUND', type=int, required= False, default= 1,
                    help='number of reads from DRAM for each address')

parser.add_argument('--p', dest='PARAL', type=int, required= True,
                    help='number of addresses searched in parallel')

parser.add_argument('--ag', dest='AG', type=str, choices=['random', 'skewed', 'linkedList'],
 required= True,
                    help='number of addresses searched in parallel')

parser.add_argument('--sk', dest='SK', type=int, required= False, default= 0,
                    help='number of addresses searched in parallel')                    

args = parser.parse_args()


INDEX = 10
AGEN = 10
DRAM = 200 #ALWAYS FIXED
NUM_ADDR = 4096

REP = args.REP
ROUND = args.ROUND
PARAL = args.PARAL
AG_TYPE = args.AG
SK_RANGE = args.SK



FILE = "{}/walker.csv".format(cwd)
HEADER =  ["opcode", "address", "data"]


INDEX_OPCODE = 0
AGEN_OPCODE = 5
DRAM_OPCODE  = 1
ACK_OPCODE = 2
PROD_OPCODE = 3
STALL_OPCODE = 4


class Generator:
    def __init__(self):
        self.indexTime = INDEX
        self.DRAMTime = DRAM
        self.repetition = REP
        self.round = ROUND
        # self.fileName = FILE
        self.listOut = []
        self.addr = [None] * PARAL

        self.skStart = 0
        self.skEnd = SK_RANGE


    
    def indexing(self, thread):
        self.listOut.append([INDEX_OPCODE,self.addr[thread], INDEX])
        for i in range(INDEX): self.listOut.append( [STALL_OPCODE,0,0])  


    def agen(self, thread):
        self.listOut.append([AGEN_OPCODE,self.addr[thread], AGEN])
        # for i in range(INDEX): self.listOut.append( [STALL_OPCODE,0,0])  

    def reading (self,thread):
        self.listOut.append([DRAM_OPCODE, self.addr[thread], DRAM])
        # for i in range(INDEX): self.listOut.append( [STALL_OPCODE,0,0] )

    def producing (self,thread):
        self.listOut.append([PROD_OPCODE, self.addr[thread], 0])
    
    def ack(self):
        self.listOut.append([ACK_OPCODE, 0, PARAL *self.round * self.repetition - 1])


    def generting (self):
        for i in range (self.repetition):
            self.addrGen(i)
            for k in range(PARAL): 
                self.indexing(k)
            for k in range (PARAL):
                for j in range (self.round - 1):
                    self.reading (k)
                    self.agen(k)
                self.reading (k)
                self.producing(k)




            # for k in range (PARAL):

        self.ack()
        self.dump()
    
    def addrGen(self, round):
        self.addr = [ None ] * 4

        
        if (AG_TYPE == 'random'):
            self.addr = [ (randint(0, NUM_ADDR) << 6 ) for i in range (PARAL)]
            while(len(set(self.addr)) != PARAL):
                self.addr = [ (randint(0, NUM_ADDR) << 6 ) for i in range (PARAL)]

        elif(AG_TYPE == 'skewed'):
            self.addr = [ (randint(self.skStart, self.skEnd) << 6 ) for i in range (PARAL)]

            while(len(set(self.addr)) != PARAL):
                self.addr = [ (randint(self.skStart, self.skEnd) << 6 ) for i in range (PARAL)]
            
            if ((round % SK_RANGE) == SK_RANGE - 1 ):
                skStart = self.skEnd
                self.skEnd += SK_RANGE

        elif(AG_TYPE == 'randomInBlock'):
            self.addr = [ (randint(0, NUM_ADDR) << 6 ) for i in range (PARAL)]
            while(len(set(self.addr)) != PARAL):
                self.addr = [ (randint(0, NUM_ADDR) << 6 ) for i in range (PARAL)]

        




    def dump (self):
        file =open (FILE,'w')
        writer = csv.writer(file)
        writer.writerow(HEADER)
        writer.writerows(self.listOut)


        
if __name__ == '__main__':

    for i in range (PARAL):
        gen = Generator()
    gen.generting()
