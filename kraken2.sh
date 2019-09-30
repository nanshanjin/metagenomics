kraken2-2.0.8-beta/kraken2 -db /kraken2/metadb  \
    --threads 8 --fastq-input --gzip-compresse \
    --paired hisat.fq.1.gz hisat.fq.2.gz --report kraken2.report.xls
##mpa format result
kraken2-2.0.8-beta/kraken2 -db /kraken2/metadb  \
    --threads 8 --fastq-input --gzip-compresse \
    --paired hisat.fq.1.gz hisat.fq.2.gz --report kraken2.report.xls --use-mpa-style

## use bracken to get abundance
Bracken-2.5/bracken -d kraken2/metadb  -i kraken2.report.xls -o D_abdance.xls -l D -r 150
