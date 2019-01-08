  GNU nano 2.3.1                   File: chipseq.slurm

#!/bin/bash
#SBATCH -t 48:00:00
#SBATCH --mem=10G
#SBATCH -c 12

#Map fastq files  with bowtie2
for sample in CD8_WT CD8_KO;
do
module load bowtie2/2.2.6
bowtie2 -x "/work/IshikawaU/tsunghan/mm10/Sequence/Bowtie2Index/genome" -U ${sample}.fastq -S ${sample}.sam
done

for sample in CD8_WT CD8_KO; do
      #Convert sam to bam
      module load samtools/1.3.1
      samtools view -Sb ${sample}.sam > ${sample}.bam

      #Sort bam file
      module load samtools/1.3.1
      samtools sort ${sample}.bam  -o ${sample}_sorted.bam

      #Make index
      module load samtools/1.3.1
      samtools index ${sample}_sorted.bam

      #Delete temporary files
      rm ${sample}.sam ${sample}.bam
done
