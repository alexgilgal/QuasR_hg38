FROM r-base:3.3.2

RUN apt-get update \
   && apt-get install -y --no-install-recommends  \
   libcurl4-openssl-dev \
   libssl-dev \
   libxml2-dev
   
   
RUN install2.r --error --deps TRUE  Rcpp

RUN install2.r --error --deps TRUE  foreach

RUN install2.r --error --deps TRUE  BatchJobs

RUN install2.r --error --deps TRUE  BBmisc

RUN install2.r --error --deps TRUE  RSQLite

RUN install2.r --error --deps TRUE  XML

RUN install2.r --error --deps TRUE  bitops

RUN install2.r --error --deps TRUE  hwriter

RUN install2.r --error --deps TRUE  latticeExtra

RUN install2.r --error --deps TRUE  matrixStats

RUN install2.r --error --deps TRUE  Hmisc

RUN install2.r --error --deps TRUE  locfit





RUN Rscript -e 'source("http://bioconductor.org/biocLite.R"); biocLite(c('QuasR', 'BSgenome.Hsapiens.UCSC.hg38', 'DESeq2' ));'