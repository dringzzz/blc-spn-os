# Dockerfile for https://index.docker.io/u/crosbymichael/python/ 
FROM debian:jessie

# Set the working directory to /shoppening
WORKDIR /shoppening


RUN apt-get update && apt-get install -y aptitude

RUN aptitude update

RUN aptitude -y --without-recommends \
    install python-pip mercurial libjpeg62-turbo libfreetype6 libgeos-dev git-core python-mysqldb python-pip python-django python-redis python-pil python-django-south python-xlwt python-reportlab python-requests python-openssl python-simplejson python-tz python-numpy python-qrcode python-elasticsearch python-six python-html5lib python-docutils python-django-haystack python-geopy python-pandas uwsgi uwsgi-plugin-python git mysql-client python-crypto python-m2crypto libssl-dev libffi-dev python-dev build-essential

# Install any needed packages specified in requirements.txt
RUN pip install --upgrade setuptools
RUN pip install --upgrade wheel
RUN pip install six cffi pynacl cryptography pysftp ConcurrentLogHandler pyfcm elasticstack django_jenkins xmlrunner django_redis django-redis-cache django-cors-headers Django==1.7.11
