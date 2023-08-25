FROM gitlab-registry.nrp-nautilus.io/prp/jupyter-stack/scipy

# Install sage via conda
RUN conda install -y -c conda-forge -n base geopandas geoplot rasterio laspy netcdf4 psycopg2 networkx pysal beautifulsoup4 selenium 
