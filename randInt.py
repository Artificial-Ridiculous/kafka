import random
import sys

def myrand(digits):
    print(random.randint(int(10**(digits-1)),int(10**digits-1)))

if __name__=='__main__':
    myrand(int(sys.argv[1]))
