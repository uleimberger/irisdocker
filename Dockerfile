ARG IMAGE=intersystems/iris-community:2022.1.0.209.0
ARG IMAGE=containers.intersystems.com/intersystems/iris-community:2022.3.0.545.0
#ARG IMAGE=intersystems/iris-community:2022.3.0.545.0

FROM $IMAGE

# Parameter has to be after FROM to access them aftter FROM
# ARG irissrcdir

# RUN adduser ${ISC_PACKAGE_MGRUSER} root && adduser ${ISC_PACKAGE_MGRUSER} ${ISC_PACKAGE_MGRUSER}
USER root
# WORKDIR /data
# RUN chown ${ISC_PACKAGE_MGRUSER}:${ISC_PACKAGE_IRISGROUP} /data
WORKDIR /opt/irisdb
RUN chown ${ISC_PACKAGE_MGRUSER}:${ISC_PACKAGE_IRISGROUP} /opt/irisdb
USER ${ISC_PACKAGE_MGRUSER}

WORKDIR /opt/irisapp
RUN chown ${ISC_PACKAGE_MGRUSER}:${ISC_PACKAGE_IRISGROUP} /opt/irisapp
USER ${ISC_PACKAGE_MGRUSER}

COPY dockerfiles/irisinstall.script /tmp/irisinstall.script
COPY dockerfiles/Installer.cls .
COPY dockerfiles/terminal/WebTerminal-v4.9.5.xml .
COPY dockerfiles/zpm/zpm-0.5.1.xml .
COPY dockerfiles/demos/EndStateProduction.xml .
COPY irisapp ./irisapp

# run iris and initial 
RUN iris start IRIS \
	&& iris session IRIS < /tmp/irisinstall.script
