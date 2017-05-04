FROM r-base

RUN install2.r --error --deps TRUE  Rcpp

RUN install2.r -r http://bioconductor.org/packages/3.0/bioc --deps TRUE \

	BiocInstaller \
	
	QuasR \

	BSgenome \

	Rsamtools \

	rtracklayer \

    BSgenome.Hsapiens.UCSC.hg38 \


    rm -rf /tmp/downloaded_packages