# Use the official R base image
FROM r-base:4.4.1

# Install necessary system packages
RUN apt update && apt install -y \
    curl \
    libxml2-dev \
    libfontconfig1-dev \
    openssl \
    libssl-dev \
    libcurl4-openssl-dev \
    libtiff5-dev \
    liblapack-dev \
    libblas-dev \
    libglpk-dev \
    libudunits2-dev \
    libgdal-dev \
    libgeos-dev \
    libproj-dev \
    gfortran \
    libharfbuzz-dev \
    libfribidi-dev \
    git \
    libgit2-dev \
    libv8-dev \
    libnode-dev \
    python3 \
    python3-pip \
    pipx \
    libfreetype6-dev \
    fonts-dejavu \
    fonts-liberation && \
    python3 -m pip install --no-cache-dir --break-system-packages olga && \
    apt clean && rm -rf /var/lib/apt/lists/*


RUN Rscript -e "Sys.setenv(CXX='g++'); \
    if (!require('BiocManager', quietly = TRUE)) install.packages('BiocManager'); \
    BiocManager::install('DropletUtils'); \
    BiocManager::install('SingleCellExperiment'); \
    BiocManager::install('SummarizedExperiment'); \
    BiocManager::install('ComplexHeatmap'); \
    if (!require('devtools', quietly = TRUE)) install.packages('devtools'); \
    if (!require('usethis', quietly = TRUE)) install.packages('usethis');"

# Set the working directory
WORKDIR /app

# Copy the R installation script to the container
COPY . .

RUN Rscript docker_install.R
# Command to run when starting the container
CMD ["bash"]