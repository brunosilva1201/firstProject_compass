#!/bin/bash

# var
TIMESTAMP=$(date '+%d-%m-%Y %H:%M:%S')
SERVICE_NAME="Nginx"

# status service
if systemctl is-active --quiet nginx; then
    STATUS="ONLINE"
    MESSAGE="O serviço $SERVICE_NAME esta ativo."
    echo "$TIMESTAMP | $SERVICE_NAME | $STATUS | $MESSAGE" >> /home/ubuntu/firstProject_compass/active_service.log
else
    STATUS="INATIVO"
    MESSAGE="O serviço $SERVICE_NAME está inativo."
    echo "$TIMESTAMP | $SERVICE_NAME | $STATUS | $MESSAGE" >> /home/ubuntu/firstProject_compass/inactive_service.log
fi
