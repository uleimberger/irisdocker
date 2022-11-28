# irisdocker
An Iris Docker WSL Development Template

- includes WebTerminal
- includes ZPM
- inculdes USER namespace
- includes IRISAPP namespace

Change settings in .env to fit your needs.

Management Portal:
http://<host>:<port>/csp/sys/UtilHome.csp

Standard User:
Username: SuperUser
Password: SYS
(you have to change this after the first login)

Development User:
Username: dev
Password: DEV

System Shell:
docker exec –it <containername> bash

Iris Console:
docker exec -it <containername> iris session iris

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


