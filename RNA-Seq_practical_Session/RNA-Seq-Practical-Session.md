# RNA-Seq Practical Session

## Ubelix
**Login**   
<font  color="#088F8F"><b> `ssh username@submit.unibe.ch`</b> </font>

**Login to compute node**   
- To ensure proper usage, avoid conducting any analysis on the interactive node by default. To activate the compute node, use the following command:

	<font  color="#088F8F"><b> `srun --pty bash`</b> </font>

## Folder Structure

To set up for today's session, create a directory named RNA-Seq-Practical_Session. Within this directory, add two folders named StarMap and fastqc. You can use the following code to achieve this and change directory to `RNA-Seq-Practical_Session`.

<font  color="#088F8F"><b> ``mkdir -p RNA-Seq-Practical_Session/StarMap RNA-Seq-Practical_Session/fastqc``</b> </font>

<font  color="#088F8F"><b> ``cd RNA-Seq-Practical_Session``</b> </font>


## Dataset Overview
During this practical session, we will be examining a toy dataset. It is simplified example dataset.

**Toy Dataset**: 
- Mice Mitochondrial mRNA
- Sample Count: 8 (equally divided between groups A and B)
- Read Type: Single-end, with 100bp reads
- Location: Stored on the UBELIX within the scratch directory 

**Location**:   <font  color="#088F8F"><b> `ls /storage/scratch/users/aa20g217/raw_fastq_files` </b> </font>

## Vital-IT
We need various tools to analyze RNA-seq data. Instead of installing them individually, we'll utilize the Vital-IT module for today's session. Vital-IT is a comprehensive bioinformatics resource that provides the necessary tools for efficient analysis.

**Load Vital-IT module**   
<font  color="#088F8F"><b> `module load vital-it `</b> </font>

## Raw data quality control (QC)
It is a crucial step in RNA-seq analysis as it ensures the reliability and accuracy of downstream results. It helps identify issues such as sequencing errors, adapter contamination, or biases that can affect the interpretation of gene expression and downstream analysis.

**FastQC**
FastQC, a widely used tool for initial QC, assesses the quality of raw sequencing data by generating detailed reports on various metrics such as per base sequence quality, adapter content, overrepresented sequences, and GC content. Please refer to the [FastQC tutorial](https://www.bioinformatics.babraham.ac.uk/projects/fastqc/) for detailed information.

- FastQC has many parameters, but for today's session, we will run it (and other tools as well) with default parameters unless necessary. 
- To check the quality of each FastQ file in a folder, use the following command:

	`fastqc -o /path/to/save/output /path/to/raw/fastq/files/*.fastq`

	- `fastqc`: This command runs the FastQC tool for analyzing the quality of FastQ files.
	- `-o /path/to/save/output`: This flag specifies the directory path where the output files will be saved.
	- `/path/to/raw/fastq/files`: This denotes the path to the raw FastQ files that you want to analyze.
	
- To check the quality toy dataset, use the following command:
	- Load fastQC module
		 <font  color="#088F8F"><b> `module load UHTS/Quality_control/fastqc`</b> </font>
		 
	- Run FastQC for each Fastq file in the
 <font  color="#088F8F"><b> `fastqc -o ./fastqc/ /storage/scratch/users/aa20g217/raw_fastq_files/*.fastq`</b> </font>


**MultiQC**
MultiQC is a powerful tool that aggregates results from bioinformatics analyses across many samples into a single, comprehensive report, simplifying data interpretation and comparison.
- To aggregate FastQC results, use the following command:
	- Load MultiQC module
		 <font  color="#088F8F"><b> `module load UHTS/Analysis/MultiQC`</b> </font>
		
	- Run MultiQC
 <font  color="#088F8F"><b> `multiqc ./fastqc/*fastqc.zip -o ./fastqc/  --title "Toy Dataset"`</b> </font>

**Trimming**
Trimming after QC in RNA-seq data helps to remove low-quality bases, adapter sequences, and other artifacts identified during the QC process. This step ensures the reliability of downstream analyses, leading to more accurate quantification of gene expression and improved biological insights.

## Alignment

**Alignment Strategy: Reference-Based Mapping**

In this exercise, our focus is on reference-based mapping alignment for RNA-seq analysis. We do not perform de novo assembly in this context. 

**Utilizing Pre-Built Index Files and GTF File**

For the alignment process, we rely on pre-built index files and a GTF file, eliminating the need for generating these files from scratch.

**Choice of Aligner: STAR**

We utilize the STAR aligner for the mapping alignment process. STAR is known for its speed and accuracy, making it an excellent choice for aligning RNA-seq reads to the reference genome. 

- **Run STAR**:
	Copy shell script called `starAllign.sh` from `/storage/scratch/users/aa20g217/` and run it. 
<font  color="#088F8F"><b> `cp /storage/scratch/users/aa20g217/starAllign.sh .`</b> </font>
				<font  color="#088F8F"><b> `sh starAllign.sh`</b> </font>

	
## QC on the Aligned Reads

Performing QC on the aligned reads is crucial to ensure the reliability and accuracy of the alignment results, facilitating the identification of potential issues and the overall assessment of data integrity.

You can call MultiQC on the STAR output folder to gather a comprehensive report on the individual alignments, streamlining the QC process for efficient data analysis. Here is the command:


 <font  color="#088F8F"><b> `multiqc ./StarMap/ -o ./StarMap/  --title "Toy Dataset (Mapped reads)"`</b> </font>

## Download Results

 <font  color="#088F8F"><b> `scp -r aa20g217@submit.unibe.ch:/storage/homefs/aa20g217/RNA-Seq-Practical_Session .`</b> </font>



