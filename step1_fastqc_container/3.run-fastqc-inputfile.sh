#!/bin/bash

fastqc_cont=quay.io/biocontainers/fastqc:0.11.7--4
run_flags="--rm -v $(pwd):/data -w /data"

cp -p ../data_files/SRR6166481_10k_?.fastq .

docker run $run_flags $fastqc_cont fastqc SRR6166481_10k_1.fastq
