clone this repository for source code and data
$ git clone https://github.com/shresthaanu/docker-project.git

To build the container
$ docker build -t \<image-name\> .

To run the container
$ docker run -it -p 8888:8888 \<image-name\>

Open in a browser the URL:
http://127.0.0.1:8888/?token= \<randomlygenerated\>
    
To run the experiment open Analysis.ipynb file and use shift+enter key to run each cell of the notebook.

This experiment is simple code to analyse the difference between the k-fold cross validation models provided by scikit learn.
Data used for this experiment is iris data. Based on the distribution of the data in each fold, the performance of the model is evaluated. This distribution is shown as histogram of data distributed in each label of iris data.
