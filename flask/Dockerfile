FROM gjigsaw/python:20160802-1700
MAINTAINER HelloWorld@JasonGreen.Name
ENV HW_FLASK_IMAGE_BUILT_AFTER 20160802-1700

RUN pip install Flask==0.10.1

ENV file_name=hello_world.py

ADD ${file_name} /${file_name}

CMD /${file_name}
