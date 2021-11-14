# tsne-kmeans-loan-application
This dataset contains a list of loan application from small businesses and how TSNE and Kmeans was used to visualize relationship between each application.

Please see cluster plot using TSNE below:
<img width="823" alt="Screen Shot 2021-10-09 at 2 25 58 pm" src="https://user-images.githubusercontent.com/32384910/136642570-573a7eae-2c56-492f-a2ac-cdc8781cb2ff.png">

Also an anomaly detection model was built on top of the Kmeans cluster to quickly identify extreme values. This can be extremely useful for Financial instutions and lenders who want to quickly identify high networth looan application. A 3D plot of thee anomaly detection system is seen below:

![4](https://user-images.githubusercontent.com/32384910/141665751-30800d67-8e07-4614-9e06-642b7da3b731.png)

To run this Pycaret app, use the Makefile command to first:

1. Build a docker image of a jupyter notebook that has pycaret pre-installed in it.

Use these commands to build and run the docker container:

`build:
	docker build -t $(appname) .
	
	
run:
	docker run -it -p 8888:8888 $(appname)
`
