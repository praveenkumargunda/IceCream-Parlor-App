
    FROM python:3.10-slim
    WORKDIR /app
    COPY . /app
    RUN pip install --no-cache-dir -r requirements.txt
    ENV NAME IceCreamParlor
    CMD ["python", "ice_cream_parlor.py"]

    #To connect this application to the docker file, the steps we need to follow :-
    1.) Install Docker for desktop and keep it open.
    2.) Insert all the files related to the project in one single folder and create a file name "Dockerfile" in it and also create a text file anmed "requiremnts.txt".
    3.)Give the above commands in Dockerfile and also and mention if we have any other dependencies mention them in the requirments file so that they can be accessible
    in this application.
    4.)"docker build -t ice-cream-parlor ." Enter this comand in the bash to uild the docker image with the name ice-cream-parlor and the dot(.) indicating that the 
    docker file is present in this particular repository.
    5.)"docker run -it --rm --name ice-cream-parlor ice-cream-parlor " And then enter this command to run the dictionary an dit needs to be interactive. Here also we
    gave the same image name to the dictionary and then it will be having the docker image from where we created the dictionary.
    => And then we are eady to run the application by using this docker.
    
