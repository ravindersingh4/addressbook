FROM bitnami/tomcat
COPY addressbook.war /opt/bitnami/tomcat/webapps_default/addresssbook.war
