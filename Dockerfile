FROM python:2.7

RUN apt-get update
RUN pip install requests
RUN pip install influxdb

COPY plexpy_influxdb_export.py /
COPY runner.bash /


CMD "/runner.bash"
