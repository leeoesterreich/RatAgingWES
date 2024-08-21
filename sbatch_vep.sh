#!/bin/bash

#SBATCH --job-name=vep
#SBATCH --output=vep_rat_%j.out
#SBATCH --error=vep_rat_%j.err
#SBATCH --time=72:00:00
#SBATCH --partition=htc
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=8
#SBATCH --mem-per-cpu=2000

folder=/bgfs/alee/LO_LAB/General/Lab_Data/20240628_WES_Rat_Neil/results/variant_calling/mutect2

module load vep/95

# Loop through each subfolder in the specified folder
for subfolder in "$folder"/*/; do
  # Extract the subfolder name without the trailing slash
  subfolder_name=$(basename "$subfolder")
  
  # Construct the input and output file paths
  input_vcf="$subfolder/${subfolder_name}.mutect2.vcf.gz"
  output_txt="$subfolder/${subfolder_name}.mutect2.txt"
  
  # Run the VEP command
  vep -i "$input_vcf" \
      -o "$output_txt" \
      --species rat --cache --dir_cache /bgfs/alee/LO_LAB/Personal/Alexander_Chang/alc376/NeilRatWES/ --force_overwrite
done
