#!/usr/bin/env bash

APP_FILE="${APP_FILE:=/opt/app/app.jar}"
DB_HOST="${DB_HOST:=localhost}"
DB_NAME="${DB_NAME:=workflow}"
DB_USER="${DB_USER:=camunda}"
DB_PASSWORD="${DB_PASSWORD:=camunda}"

java -jar ${APP_FILE} -Dspring.datasource.url=jdbc:postgresql://${DB_HOST}:5432/${DB_NAME} -Dspring.datasource.username=${DB_USER} -Dspring.datasource.password=${DB_PASSWORD}
