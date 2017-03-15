#!/bin/bash

sudo docker run -it --rm \
     -v $PWD/client/components:/source/client/components \ 
     -v $PWD/client/test:/source/client/test \ 
     -v $PWD/src:/source/src -v $PWD/target:/source/target \
     -p 8080:8080 \
     --env TEST_TYPE=watch_front \
     vfarcic/books-ms-tests
