FROM r-base

RUN RUN apt-get update \
   && apt-get install -y --no-install-recommends  \
   libcurl4-openssl-dev
   
RUN install2.r --error --deps TRUE  DBI   

RUN install2.r --error --deps TRUE  Rcpp

RUN install2.r --error --deps TRUE  foreach

RUN install2.r --error --deps TRUE  BatchJobs

RUN install2.r --error --deps TRUE  BBmisc

RUN install2.r --error --deps TRUE  RSQLite

RUN install2.r --error --deps TRUE  XML

RUN install2.r --error --deps TRUE  RSQLite

RUN install2.r --error --deps TRUE  RCurl

RUN install2.r --error --deps TRUE  bitops


RUN install2.r -r http://bioconductor.org/packages/3.0/bioc --deps TRUE \
	
	QuasR \

	rtracklayer \
	
	BSgenome \

	Rsamtools \

    BSgenome.Hsapiens.UCSC.hg38 \
    
    DESeq2 \


    rm -rf /tmp/downloaded_packages