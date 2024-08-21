#!/bin/bash

#SBATCH --job-name=run_sarek_rat
#SBATCH --output=run_sarek_ratj.out
#SBATCH --error=run_sarek_rat_%j.err
#SBATCH --time=72:00:00
#SBATCH --partition=htc
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=8
#SBATCH --mem-per-cpu=2000


module load nextflow/23.10.1
module load apptainer/1.2.2
module load singularity/3.9.6


nextflow run nf-core/sarek -r 3.4.0 -profile singularity \
    --input /bgfs/alee/LO_LAB/Personal/Alexander_Chang/alc376/nfcore/achang4_bridgesPSC/sarek/Part2_FASTQ2SAREK/samplesheet_rat_tumoronly.csv \
    --outdir /bgfs/alee/LO_LAB/General/Lab_Data/20240628_WES_Rat_Neil/results_tumoronly/ \
    --genome Rnor_6.0 \
    --tools cnvkit,mutect2 \
    --skip_tools baserecalibrator \
    --wes \
    -c slurm_bare_htc.config



