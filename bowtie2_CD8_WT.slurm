#!/bin/bash
#SBATCH -t 24:00:00
#SBATCH --mem=10G
#SBATCH -c 12

module load bowtie2/2.2.6
bowtie2 -x "/work/IshikawaU/tsunghan/mm10/Sequence/Bowtie2Index/genome" -U "/work/IshikawaU/tsunghan/Th1_chip/180604ChIP/CD8_WT.fastq" -S "/work/IshikawaU/tsunghan/Th1_chip/180604ChIP/CD8_WT.sam" 
