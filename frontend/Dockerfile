FROM lucee/lucee:5.4-light
LABEL authors="Nicholas Kwiatkowski"

ENV LUCEE_EXTENSIONS "A03F4335-BDEF-44DE-946FB16C47802F96;name=JSON;version=1.0.0.0-RC"

RUN rm -R /var/www
RUN if [ -f /opt/lucee/web/logs/application.log ]; then ln -sf /dev/stdout /opt/lucee/web/logs/application.log; ln -sf /dev/stdout /opt/lucee/web/logs/exception.log; fi
RUN if [ -f /opt/lucee/server/lucee-server/context/logs/application.log ]; then ln -sf /dev/stdout /opt/lucee/server/lucee-server/context/logs/application.log; ln -sf /dev/stdout /opt/lucee/server/lucee-server/context/logs/exception.log; fi
RUN echo "echo \$LUCEE_ADMIN_PASSWORD > /opt/lucee/server/lucee-server/context/password.txt" >> /usr/local/tomcat/bin/setenv.sh
COPY ./webroot/ /var/www/

RUN /usr/local/tomcat/bin/prewarm.sh

EXPOSE 8888