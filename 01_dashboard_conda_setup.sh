#!/bin/bash
# =============================================================================
# Run this script to create the conda environment for the aml-clonal-dashboard.
# Shreya Das
# Date: 06/30/2026
# =============================================================================

# Load the conda module
module load conda

source /apps/software/Miniforge3/24.11.3-0/bin/activate

# Create the conda environment
conda create -n aml_dashboard -c conda-forge python=3.10 -y
conda activate aml_dashboard

# Install the packages that are required
pip install scanpy anndata pandas numpy matplotlib seaborn plotly streamlit GEOparse

# Make the conda environment into a kernal avalible to Jupyter notebook
pip install ipykernel
python -m ipykernel install --user --name aml_dashboard --display-name "Python (aml_dashboard)"