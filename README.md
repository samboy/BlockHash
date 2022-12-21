# Quickstart guide

The quick start guide for Windows and *NIX varies.

## Windows 10

* Install this folder as C:\BlockHash-1.0.01
* As non-admin, double click on `regenerate.bat`
* Right click on `install.bat` and run it as an administrator *after* 
  inspecting the file to make sure it does *not* contain malware.
* In the Windows search bar, find and start up `control panel`
* Find “network and sharing center”
* Click on “change adaptor settings”
* Choose the adaptor used for internet access (Wi-Fi, wired, etc.)
* Right click on that adaptor and select “properties”
* Double Click on “Internet protocol version 4”
* Select “Use the following DNS server addresses”
* Put in “127.0.0.1” for the preferred DNS server
* Hit “OK” to make the changes stick

# BlockHashMake and BlockHashRead

These are tools which generate a *block hash*, a list of binary strings 
along with hashing used to generate a compact database which can quickly
see if a given binary string is in a given list.

This is useful for what I call “naughty lists”; a list of domains we 
do not want Deadwood to resolve.  A current real-world list of over 200,000
domains would take around 200 megabytes of memory with Deadwood; by using
this compact format, we can have the same data take up less than eight
megabytes of data.

## To use

Let’s have a hosts.txt (or simply `hosts`) file of names we do not
want to resolve, where the undesirable names are given the IP `0.0.0.0`.  
To convert them in to a compact hash:

```
make # Compile the programs
cat naughty.hosts.txt | grep 0.0.0.0 | awk '{print $2}
  ' | fgrep '.' | ./blockHashMake 
./blockHashRead
```

This generates a file named `bigBlock.bin` which is a compact representation
of a hosts file with names black listed.

## Getting that naughty hosts.txt file

One possible source of a hosts file which can block naughty domains is
here:

https://github.com/StevenBlack/hosts


