#!/bin/bash

# Send a POST request with custom header to 0.0.0.0:5000/catch_me
curl -sX PUT -d "user_id=98" -H "Origin: HolbertonSchool" 0.0.0.0:5000/catch_me

