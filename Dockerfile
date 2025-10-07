# Use an official Tomcat image
FROM tomcat:9.0-jdk11-openjdk

# Remove default webapps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your JSP project into Tomcat webapps
COPY . /usr/local/tomcat/webapps/ROOT/

# Expose Tomcat default port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
