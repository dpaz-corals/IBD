# "Isolation by environment and distance: contrasting patterns of genetic diversity in two scleractinian corals in the Gulf of California"

Dennis LE, Favoretto F, Balart EF, Hellberg ME, Munguia-Vega A, Sánchez-Ortiz A, Paz-García DA (In Review). [Isolation by environment and distance: contrasting patterns of genetic diversity in two scleractinian corals in the Gulf of California](https://www.marinebiogenomics.com/publicaciones). *Frontiers in Marine Science* https://doi.org/

IBE is a information repository for Manuscript "Isolation by environment and distance: contrasting patterns of genetic diversity in two scleractinian corals in the Gulf of California" (Frontiers in Marine Science, Deniss et al. in Review).

**Poner link del Paper aqui**


# "Morphological stasis masks ecologically divergent coral species on tropical reefs"
Bongaerts P, Cooke I, Ying H, Wels D, Haan den S, Hernandez-Agreda, Brunner C, Dove S, Englebert N, Eyal G, Forêt S, Grinblat M, Hay KB, Harii S, Hayward DC, Lin Y, Mihaljević M, Moya A, Muir P, Sinniger F, Smallhorn-West P, Torda G, Ragan MA, van Oppen MJH, Hoegh-Guldberg O (2021) [Morphological stasis masks ecologically divergent coral species on tropical reefs](https://www.cell.com/current-biology/fulltext/S0960-9822(21)00367-5). *Current Biology* https://doi.org/10.1016/j.cub.2021.03.028

![Norbert_collecting_from_large_Pachyseris_colony_-_Pim_Bongaerts](media/Norbert_collecting_from_large_Pachyseris_colony_-_Pim_Bongaerts.jpg)

### A - Genome assembly and annotation (PacBio)

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
