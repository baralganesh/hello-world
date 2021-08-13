#!/bin/bash
# Display the UID and username of the user executing this script.
# Display if the ser is the root user or not

# Diplay UID
echo "Your UID is ${UID}"
echo "Your Public IP Address is: $(curl checkip.amazonaws.com)"
# Display username
#USER_NAME=$(id -un)
#or
mkdir fromjenkinsjob

USER_NAME=`id -un` # older style
echo "Your user name is - ${USER_NAME}."

# Display root user or not?
if [[ "${UID}" -eq 0 ]]
then
    echo 'You are root.'
   
else
    echo 'You are not root.'
fi
