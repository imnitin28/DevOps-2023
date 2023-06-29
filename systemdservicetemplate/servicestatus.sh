#!/bin/bash
systemctl list-units --type=service

echo "Enter the service name"
read service_name

echo "do you want to check service status"
if true
systemctl status $service_name

else if
echo "do you want to see cpu usage"
    if true 
        command
    fi
else if "do you want to see memory usage"
    if true
        command
    fi
fi
