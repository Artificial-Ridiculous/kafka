import random
import sys

def myrand(digit):
    print("%.2f"%(random.random()*(10**digit)))

if __name__=='__main__':
    myrand(int(sys.argv[1]))
