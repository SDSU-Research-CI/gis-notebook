FROM gitlab-registry.nrp-nautilus.io/prp/jupyter-stack/prp:v1.3

USER root
WORKDIR /opt

# Install rclone
RUN curl https://rclone.org/install.sh | bash

# Switch back to notebook user
USER $NB_USER
WORKDIR /home/${NB_USER}

# Install packages via conda-forge
RUN conda install -y -c conda-forge -n base \
    geopandas \
    geoplot \
    laspy \
    netcdf4 \
    pysal \
    selenium \
    natsort \
    xeus-python 

# Install opencv via pip
RUN pip install \
    opencv-contrib-python
