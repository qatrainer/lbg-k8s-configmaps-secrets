#Use Python 3.6 as a base image
From python:latest
# Copy contents into image
Copy . . 
# install pip dependencies from requirements file
RUN pip install -r requirements.txt 
# added sevurity with env
ENV password ="${password}"
# Expose correct port
EXPOSE 5000
# Create an entrypoint
ENTRYPOINT ["python3","app.py"]
