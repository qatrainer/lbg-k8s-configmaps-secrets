# Trio-task

This is a Flask application that is set up and configured to work with a database and nginx. Write a docker-compose.yaml that will bring all these services up and allow the app to run on port `80`.

- VPC setup with 3 subnets 
    - 1 public subnet 
    - 2 private subnets to allow for creation of RDS availability zone necessity

-setup route tables 
    - all subnets can communicate with each other
-setup internet gateway
    - public subnet connects internet traffic
-create ec2 instance
- create RDS 
- Install updates on ec2
- Install docker on ec2
- Clone repo on ec2
- change database string 
- Update docker files to collect dependacies e.g images create volumes and networks and bind volumes and mounts
- Setup db variables 
- setup os env and hide password and to databse string 
- setup mysql on ec2
- use mysql to check tables
- run create.py 
- run app.py

