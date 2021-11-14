appname=pycaret_app

build:
	docker build -t $(appname) .
run:
	docker run -it -p 8888:8888 $(appname)
kill: 
	docker stop $(appname)
	docker container prune -f
	docker rmi -f $(appname)