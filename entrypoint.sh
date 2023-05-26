#!/bin/bash

# Run the startup script in the background
/opt/openclinic/bin/startup.sh &

# Run tail -f /dev/null to keep the container running
tail -f /dev/null
