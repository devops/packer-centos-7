# Vagrant CentOS Base Boxes

## Downloads

## How these boxes were built

These boxes were automatically built using [packer](http://www.packer.io) (v0.10.0) and the definitions in this repo:

```sh
$ cd packer
$ ./build.sh
```

## Definitions

- Minimal CentOS installation
- The disk can grow to 100GB
- Provides 4GB of swap
- Modification NIC name to eth*
