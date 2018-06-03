#!/bin/bash
#Author: Ian Lin

#Please Take a Look in Document:https://hub.docker.com/_/mongo/

#pull mongodb images
docker pull mongo

#run mongodb images in mongodb_name_youWant(--name), which you just download, in background(-d) with mapping database folder(-v)
docker run --name <mongodb_name_youWant> -v <mongodb_data>:/data/db -d mongo:latest

#exec docker container 
docker exec -it <container_id> /bin/bash

#exec a js file
docker exec -it <container_id> mongo <jsfile_location>
#ex:docker exec -it 0412e mongo /data/db/mongodb_code/query1.js
