# Isolation by environment and distance: Contrasting patterns of genetic diversity in two scleractinian corals in the Gulf of California

## Information repository for Manuscript:

Dennis LE, Favoretto F, Balart EF, Hellberg ME, Munguia-Vega A, Sánchez-Ortiz A, Paz-García DA (In Review). [Isolation by environment and distance: contrasting patterns of genetic diversity in two scleractinian corals in the Gulf of California](https://www.marinebiogenomics.com/publicaciones). *Frontiers in Marine Science* https://doi.org/

**Poner foto de postada!!!**

![Portada](media/Portada.jpg)

## General information about the Research

### Study Area (Gulf of California)

The study area includes the Espíritu Santo Archipelago National Marine Park and five surrounding sites outside of the protected area within the southern Gulf of California, Mexico (Fig. 1).

![Map](Media/Fig01_map.jpg)

This MPA has three levels of protection: 1) no-take zones where anchoring of boats and fishing is prohibited; 2) buffer zones of “traditional use”; and 3) buffer zones of “sustainable use” (CONANP 2014).

### Genetic Diversity

 A total of 12 and 14 haplotypes (GenBank accession numbers OP271742-OP271753 and OP554198-OP554211) were identified from *Pocillopora* and *P. panamensis* corals, respectively.

## R scripts

* **Script 01**
* **Script 02**
* **Script 03**
* **Script 04**
* **Script 05**


**[*Pachyseris speciosa* genome (v0.12)](genome/)** - Genome scaffolds and gene models, also available through: http://pspe.reefgenomics.org/. Genomic DNA was extracted from the sperm of a *P. speciosa* colony belonging to the "green" lineage (accession code [PRJNA686482](https://www.ncbi.nlm.nih.gov/bioproject/?term=PRJNA686482)).

**[Raw sequence data - reference genome (ENA)](https://www.ebi.ac.uk/ena/browser/view/PRJEB23386)** - Raw PacBio and Illumina sequence data used for the genome assembly (accession code [PRJEB23386)](https://www.ncbi.nlm.nih.gov/bioproject/?term=PRJEB23386).

### B - Reduced-representation sequencing (nextRAD)

**[NextRAD electronic notebook](nextrad/)** - Details the processing and analyses of the *Pachyseris speciosa* reduced representation (nextRAD) genome sequencing data.

[**Raw sequence data - nextRAD (NCBI SRA)**](https://www.ncbi.nlm.nih.gov/bioproject/?term=PRJNA701715) - Raw Illumina sequence data (fastq format) for the 501 coral colonies succesfully sequenced in this study (accession code [PRJNA701715)](https://www.ncbi.nlm.nih.gov/bioproject/?term=PRJNA701715).

**[RADseq script library (GitHub)](https://github.com/pimbongaerts/radseq)** - Separate github repository with generic Python scripts used throughout the nextRAD electronic notebook.

### C - Whole-genome resequencing (WGS)

**[WGS electronic notebook (by Ira Cooke)](https://github.com/iracooke/pachyseris_wgs)** - Details the processing and analyses of the *Pachyseris speciosa* whole-genome resequencing data.

[**Raw sequence data - whole-genome resequencing (NCBI SRA)**](https://www.ncbi.nlm.nih.gov/bioproject/?term=PRJNA686482) - Raw Illumina sequence data (fastq format) for the whole genomes of 20 coral colonies sequenced in this study (accession code [PRJNA686482)](https://www.ncbi.nlm.nih.gov/bioproject/?term=PRJNA686482).

[Whole-genome resequencing coverage summary](https://github.com/iracooke/pachyseris_wgs/blob/master/04_sequencing_summary.md) - Sequencing coverage estimates from `samtools depth` based on the entire genome.

### D - Diagnostic PCR assay (CAPS)

**[CAPS electronic notebook](caps/)** - Details the development of the cleaved amplified polymorphic sequence (CAPS) markers from the nextRAD data, and subsequent scoring of the CAPS genotyping data.

### E - Phenotypic and microbial characterization

**[Phenotype data](phenotype/)** - Morphology, physiology and reproductive data files.

**[Raw 16S amplicon sequencing data (NCBI SRA)](https://www.ncbi.nlm.nih.gov/bioproject/?term=PRJNA328211)** - Raw Illumina sequence data (fastq format) for the microbial communities sequenced in [Hernandez-Agreda et al. (2016)](https://doi.org/10.1128/mbio.00560-16) (accession code [PRJNA328211](https://www.ncbi.nlm.nih.gov/bioproject/?term=PRJNA328211)).

### F - Statistical analyses

**[Statistical analyses](stats/)** - Tables with outcomes of univariate/multivariate statistics.

### Additional resources

[Fieldwork Photos](media/) - Several photos of the fieldwork associated with this study.



## Goals
* Provide a comprehensive and dynamic record of all the published scientific information on these ecosystems and make it queryable through a single web portal
* Allow for the exploration of spatial/temporal trends and identification of knowledge gaps through curated metadata for each publication
*  act as an institution-independent platform and as a shared resource for and by
the research community to accelerate our understanding regarding the occurrence, composition and functioning of these ecosystems.

## Metadata

The primary entities in the database are scientific publications, for which standard citation data and associated metadata are indexed. [Click here](erd.pdf) for the entity relation diagram (ERD; generated with the `rails-erd` [gem](https://github.com/voormedia/rails-erd)).

## Authors (code)

* [Pim Bongaerts](https://github.com/pimbongaerts)
* [Ryan Booker](https://github.com/ryanbooker)

Please contact us if you are interested in contributing. See the list of [content editors](http://mesophotic.org/about) on the website

## Citation

Bongaerts P, Perez-Rosales G, Radice VZ, Eyal G, Gori A, Gress E, Hammerman NM, Hernandez-Agreda A, Laverick J, Muir P, Pinheiro H, Pyle RL, Rocha L, Turner JA, Booker R (2019) Mesophotic.org: a repository for scientific information on mesophotic ecosystems. Database 2019:baz140 [doi:10.1093/database/baz140](https://doi.org/10.1093/database/baz140)
