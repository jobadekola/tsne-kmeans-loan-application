# tsne-kmeans-loan-application
This dataset contains a list of loan application from small businesses and how TSNE and Kmeans (Unspervised machine learning alogrithms) were used to visualize the relationship between each category of loan application.

***Please see cluster plot using TSNE below:***

![6](https://user-images.githubusercontent.com/32384910/141766540-7e9ccf6c-b557-40a3-b531-8dbfa9c0d7e6.png)

Also, an anomaly detection model was built on top of the Kmeans cluster to quickly identify extreme values. This can be extremely useful for Financial instutions and lenders who want to quickly identify high networth loan applications. 

***A 3D plot of the anomaly detection system is seen below:***

![4](https://user-images.githubusercontent.com/32384910/141665751-30800d67-8e07-4614-9e06-642b7da3b731.png)

***To run this Pycaret app, use the Makefile command to:***

1. Build a docker image of a jupyter notebook that has pycaret pre-installed in it.

***Use these commands to build and run the docker container:***

```
build:
	docker build -t $(appname) .
		
run:
	docker run -it -p 8888:8888 $(appname)
```

2. Open the tsne-kmeans.ipynb file and run the notebook

