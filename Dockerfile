FROM java:8
#VOLUME /tmp
ADD manager.py ./app.jar
RUN sh -c 'touch /app.jar'
ENV JAVA_OPTS=""
ENTRYPOINT [ "echo" "lxk" ]
