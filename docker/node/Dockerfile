FROM node:latest

# Switch to root user
USER root

# APPLICATION
RUN mkdir /app
WORKDIR /app
COPY scripts/* /bin/ 
RUN chmod +x /bin/start /bin/restart /bin/stop

# VUE-CLI
RUN yarn global add @vue/cli -g

# Logs
RUN touch /var/log/amalgam-front

# ClEAN
RUN apt-get autoremove -y && apt-get autoclean -y 

# RUN APPLICATION
CMD ["tail","-f","/var/log/amalgam-front"]