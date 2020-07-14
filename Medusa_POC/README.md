# Medusa PoC

In this folder, you find different proof-of-concept implementations for the
Medusa attacks.

## List of proof-of-concept codes

| Folder name                                | Description |
| ------------------------------------------ | ----------- |
| [wc_v1_cacheindexing](wc_v1_cacheindexing) | Medusa Variant 1: Cache Indexing |
| [wc_v2_unalignedSTL](wc_v2_unalignedSTL)   | Medusa Variant 2: Unaligned Store-to-Load Forwarding |
| [wc_v3_shadowREPMOV](wc_v3_shadowREPMOV)   | Medusa Variant 3: Shadow REP MOV |
| [wc_victim](wc_victim)                     | Victim |
| [wc_victim_mt](wc_victim_mt)               | Victim Memory Type |
| [wc_victim_store](wc_victim_store)         | Victim Store |

## Building and running a PoC

### Pre-requesits

In order to build the proof-of-concept codes, make sure that you have cloned the
PTEditor repository and compiled it:

    git submodule init
    git submodule update
    cd PTEditor
    make

### Building a PoC

In order to build a PoC, change into its directory and run:

    make

## Running a PoC

Building the proof-of-concept yields an executable binary called `leak`.
In order to execute the PoC, run:

    ./leak

or, if you want to bind it to a certain CPU core:

    taskset -c 3 ./leak

The same procedure applies for the victim codes. Just run `make` in the folder
and execute the victim by running:

    taskset -c 7 ./secret
