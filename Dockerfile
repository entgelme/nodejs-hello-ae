# FROM registry.access.redhat.com/rhscl/nodejs-6-rhel7
FROM registry.access.redhat.com/ubi8/nodejs-20  
EXPOSE 8080
# Mandate that all Node.js apps use /usr/src/app as the main folder (APP_ROOT).
RUN mkdir -p /opt/app-root/
WORKDIR /opt/app-root
# Copy the sources to APP_ROOT 
COPY package.json server.js /opt/app-root
# Install the dependencies 
RUN npm install
# Start node server on port 8080
CMD [ "npm", "start" ]
RUN echo "Started Node.js server..."
