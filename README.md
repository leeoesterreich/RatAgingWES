# RatAgingWES
Github repository for code used to analyze whole exome sequencing data from older and younger rat tumors for {Paper name in Journal Name}

This jupyter notebook takes in input files from VEP and other functions such as Sarek, input files, where possible as provided, sequencing files are stored on GEO_________. Some software may need to be installed based on instructions from their respective mainainers.

Sarek and VEP must be run first to generate necessary Mutect, CNVKit and VEP output files for this jupyter notebook. Example bash scripts for the University of Pittsburgh HTC Cluster end in the .sh suffix. 


---

## Installation Guide

### Setting Up the Conda Environment

To run the code in this repository, you'll need to set up a Conda environment using the provided `aging_wes.yml` file. Follow the steps below to create the environment:

1. **Install Miniconda/Anaconda**:  
   If you don't already have Conda installed, download and install Miniconda or Anaconda from the official website:  
   - [Miniconda](https://docs.conda.io/en/latest/miniconda.html)  
   - [Anaconda](https://www.anaconda.com/products/distribution)

2. **Clone the Repository**:  
   Clone this repository to your local machine using the following command:

   ```bash
   git clone https://github.com/your_username/your_repository.git
   cd your_repository
   ```

3. **Create the Conda Environment**:  
   Use the `aging_wes.yml` file to create a new Conda environment. Run the following command:

   ```bash
   conda env create --file aging_wes.yml
   ```

   This will create a new environment with all the necessary dependencies.

4. **Activate the Environment**:  
   Once the environment is created, activate it using:

   ```bash
   conda activate aging_wes
   ```

5. **Verify the Installation**:  
   After activating the environment, verify that the necessary packages have been installed:

   ```bash
   conda list
   ```

   This will display a list of all the packages installed in the environment.

6. **Run the Code**:  
   With the environment activated, you can now run the code as intended. Make sure to check the specific instructions in the repository for running scripts or notebooks.

---

