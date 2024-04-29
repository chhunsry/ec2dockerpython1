FROM ubuntu:latest

#Set the working directory in the image
WORKDIR /app

# Copy the files from the host file system to the image file system
COPY . /app

#install the nescessary packages
RUN apt-get update && apt-get install -y python3 python3-pip

# run a commnad to start the application
CMD [ "python3" , "prog.py" ]