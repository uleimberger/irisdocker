# irisdocker
An Iris Docker Development Template

Change settings in .env to fit your needs.

Management Portal:
http://localhost:9092/csp/sys/UtilHome.csp

Standard User:
Username: SuperUser
Password: SYS
(you have to change this after the first login)

Development User:
Username: dev
Password: DEV

System Shell:
docker exec –it my-iris bash

Extensions:

WebTerminal:
Browser: http://<host>:<port>/terminal/

ZPM Package Manager:
Call zpm in iris terminal
USER> zpm 

Iris Terminal:
iris session iris

Iris Terminal in namespace IRISAPP
iris session iris -U IRISAPP


