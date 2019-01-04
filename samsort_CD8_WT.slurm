#!/bin/bash 
#SBATCH -t 24:00:00 
#SBATCH --mem=10G 
#SBATCH -c 12

module load samtools/1.3.1 
samtools sort "/work/IshikawaU/tsunghan/Th1_chip/180604ChIP/CD8_WT.bam" -o "/work/IshikawaU/tsunghan/Th1_chip/180604ChIP/CD8_WT_sorted.bam"
