#!/bin/bash
#SBATCH -p sched_mit_g4nier
#SBATCH -N 1
#SBATCH -J EMC_ncbi-download-bacteroidetes
#SBATCH -o EMC_ncbi-download-bacteroidetes.out
#SBATCH --mail-type=begin
#SBATCH --mail-type=end
#SBATCH --mail-user=ecutts@mit.edu

module add engaging/python/3.6.0
ncbi-genome-download --taxids NCBI-bacteroidetes-genus-representatives-taxids.csv \
--refseq-categories representative \
--formats protein-fasta,genpept,assembly-report,assembly-stats bacteria
