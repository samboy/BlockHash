#!/bin/sh

# This shell script will regenerate the block hash file so that 
# allow_block_hash_zero_key does not need to be set to load porn.bin

make
./blockHashRead --dump porn.bin > foo.txt
rm -f foo.bin
cat foo.txt | ./blockHashMake foo.bin
mv foo.bin porn.bin
