from python:2.7.8

RUN apt-get install -y python-lxml libcairo2 libpango1.0-0 libgdk-pixbuf2.0-0 libffi-dev shared-mime-info
RUN pip install WeasyPrint

WORKDIR /usr/data
