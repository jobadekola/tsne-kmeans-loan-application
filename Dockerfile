# Use the latest ubuntu image as base for the new image
FROM ubuntu:latest

# Run a system update 
# Install python3 and pip3
RUN apt-get update && apt-get install -y python3 \
    python3-pip

# Install jupyter
RUN pip3 install jupyter 

# Install Numpy
RUN pip3 install numpy

# Install Pandas
RUN pip3 install pandas

# Install libgompl pycaret dependency
RUN apt-get update && apt-get install -y libgomp1

# copy the contents into the working dir
COPY requirements.txt .

# Install pycaret
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Install Statsmodel
RUN pip3 install statsmodels

# Matplotlib
RUN pip3 install matplotlib

# Install Plotly
RUN pip3 install plotly

# Install Seaborn
RUN pip3 install seaborn

# Install Sklearn
RUN pip3 install sklearn

# Create a new system user
RUN useradd -ms /bin/bash jupyter

# Change to this new user
USER jupyter

# Set the container working directory to the user home folder
WORKDIR /home/jupyter

# Start the jupyter notebook
ENTRYPOINT ["jupyter", "notebook", "--ip=*"]
