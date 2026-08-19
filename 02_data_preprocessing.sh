#!/bin/bash
# =============================================================================
# Run this script to do pre-processing on the data
# Shreya Das
# Date: 06/30/2026
# =============================================================================

# Navigate to the raw data folder
cd /data/vangalenlab/das/aml-clonal-dashboard/data/raw

# Download the metadata
wget "https://ftp.ncbi.nlm.nih.gov/geo/series/GSE116nnn/GSE116256/suppl/GSE116256_RAW.tar"

# Extract both
tar -xvf GSE116256_RAW.tar

# Unzip all patient files
cd aml-clonal-dashboard/data/raw
gunzip *.gz