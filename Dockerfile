FROM node:latest
WORKDIR /app/AngularFolder
COPY /AngularFolder/. /app/AngularFolder/
COPY /BootstrapFolder/. /app/BootstrapFolder/
EXPOSE 4200 
RUN npm install -g @angular/cli
RUN npm install --save-dev @angular-devkit/build-angular
ENV NODE_OPTIONS=--openssl-legacy-provider
CMD ng serve --open --host 0.0.0.0 --port 4200 --disable-host-check
