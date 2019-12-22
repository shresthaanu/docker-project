To build the container
$ docker build -t \<image-name\> .

To run the container
$ docker run -it -p 8888:8888 \<image-name\>

Open in a browser the URL:
http://127.0.0.1:8888/?token= \<randomlygenerated\>
    
To run the experiment open Analysis.ipynb file and use shift+enter key to run each cell of the notebook.

This experiment is simple code to analyse the difference between the k-fold cross validation models provided by scikit learn.
