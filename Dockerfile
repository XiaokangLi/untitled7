FROM java:8
VOLUME /tmp
ADD manage.py app.jar
RUN sh -c 'touch /app.jar'
ENV JAVA_OPTS=""
ENTRYPOINT [ "echo" "lxk" ]
