FROM gitlab-registry.nrp-nautilus.io/prp/jupyter-stack/scipy

# Install sage via conda
RUN mamba install -y -c conda-forge -n base geopandas geoplot rasterio laspy netcdf4 psycopg2 networkx pysal beautifulsoup4 selenium natsort \
    && mamba clean --all -f -y \
    && pip install torch==2.0.0+cu117 \
        torchvision==0.15.1+cu117 \
        torchaudio==2.0.1+cu117 \
        -f https://download.pytorch.org/whl/torch_stable.html \
    && pip install pip install opencv-python \
        opencv-contrib-python



