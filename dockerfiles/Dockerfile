ARG IMAGE=store/intersystems/iris-community:2020.3.0.200.0
FROM $IMAGE

USER root

WORKDIR /opt/irisapp
RUN chown ${ISC_PACKAGE_MGRUSER}:${ISC_PACKAGE_IRISGROUP} /opt/irisapp
USER ${ISC_PACKAGE_MGRUSER}

COPY Installer.cls .
COPY src /usr/irissys/mgr/src
COPY irisinstall.script /tmp/irisinstall.script

# run iris and initial 
RUN iris start IRIS \
	&& iris session IRIS < /tmp/irisinstall.script
