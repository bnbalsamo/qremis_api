FROM bnbalsamo/flask_stack
ENV APP_NAME=qremis_api
ARG SECRET_KEY=passThisAtBuildTime
ARG VERBOSITY=WARN
# You have to pass a storage backend (redis or mongo)
# and for either of them the required arguments to
# instantiate the connection.
# For redis this is:
# - REDIS_HOST
# For mongo:
# - MONGO_HOST
# - MONGO_DBNAME
ARG STORAGE_BACKEND
ARG MONGO_HOST
ARG MONGO_PORT
ARG MONGO_DBNAME
ARG REDIS_HOST
ARG REDIS_PORT
ARG REDIS_DB
ENV \
  QREMIS_API_STORAGE_BACKEND=${STORAGE_BACKEND} \
  QREMIS_API_SECRET_KEY=${SECRET_KEY} \
  QREMIS_API_MONGO_HOST=${MONGO_HOST} \
  QREMIS_API_MONGO_PORT=${MONGO_PORT} \
  QREMIS_API_MONGO_DBNAME=${MONGO_DBNAME} \
  QREMIS_API_REDIS_HOST=${REDIS_HOST} \
  QREMIS_API_REDIS_PORT=${REDIS_PORT} \
  QREMIS_API_REDIS_DB=${REDIS_DB} \
  QREMIS_API_VERBOSITY=${VERBOSITY} 
