#!/usr/bin/env python3

'''
Show the name of the customer if the current directory is somewhere in its tree.
Use -q to suppress error messages
'''

import os
import sys

def customer(quiet=False):
    cwd = os.path.abspath(os.curdir)

    if not cwd.startswith('/var/www'):
        raise ValueError('Not in customer root')

    try:
        return cwd.split(os.path.sep)[3]
    except IndexError as e:
        raise ValueError('Not in customer location')

def main(argv):

    quiet = False
    if argv:
        if argv[0] == '-q':
            quiet = True
    try:
        print(customer())
    except ValueError as e:
        if not quiet:
            print(e, file=sys.stderr)
        sys.exit(2)

if __name__ == '__main__':
    main(sys.argv[1:])