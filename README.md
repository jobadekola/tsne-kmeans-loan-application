# tsne-kmeans-loan-application
This dataset contains a list of loan application from small businesses and how TSNE and Kmeans was used to visualize relationship between each application.

***Please see cluster plot using TSNE below:***

![5](https://user-images.githubusercontent.com/32384910/141666703-abab0288-27dc-4c17-bc96-1bf8dc558c83.png)

Also an anomaly detection model was built on top of the Kmeans cluster to quickly identify extreme values. This can be extremely useful for Financial instutions and lenders who want to quickly identify high networth looan application. 

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

