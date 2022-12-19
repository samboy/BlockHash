rem This batch file will regenerate the block hash file so that 
rem allow_block_hash_zero_key does not need to be set to load porn.bin

blockHashRead.exe --dump porn.bin > foo.txt
del foo.bin
type foo.txt | blockHashMake.exe foo.bin
del porn.bin
rename foo.bin porn.bin
del foo.txt

echo porn.bin file regenerated with secure key
pause
