FROM ubuntu:18.04
RUN apt-get update && apt-get install -y python3 python3-pip
RUN pip3 install jupyter
RUN pip3 install matplotlib
RUN pip3 install pandas
RUN pip3 install sklearn
# install additional python libraries
RUN useradd -ms /bin/bash jupyter
# Copy files from the cloned GitHub repository to the container
COPY ./src/ /home/jupyter/
COPY ./data/ /home/jupyter/data/
COPY ./Analysis.ipynb /home/jupyter/.
USER jupyter
# Set the container working directory to the user home folder
WORKDIR /home/jupyter
RUN python3 hello.py # run any script to generate any results
# Automatically start the jupyter notebook when the container is run
ENTRYPOINT ["jupyter", "notebook", "--ip=*"]
