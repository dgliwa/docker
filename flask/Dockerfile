FROM dgliwa/python:20201028
LABEL maintainer="Flask-Dockerfile@DerekGliwa.Name"
ENV HW_FLASK_IMAGE_BUILT_AFTER 20201028

RUN pip install Flask==0.10.1

ENV file_name=hello_world.py

ADD ${file_name} /${file_name}

CMD /${file_name}
