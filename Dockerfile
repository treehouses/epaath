FROM treehouses/nginx:1.18

RUN apk --no-cache upgrade
RUN apk add --no-cache curl git

WORKDIR /var/lib/nginx

RUN rm -rf html
# COPY ./epaath_es_oneactivity_project /var/lib/nginx/html
RUN git clone --depth=1 --single-branch --branch with_all_activities https://GITLAB_USERNAME:GITLAB_PASSWORD@git2023.olenepal.org/regan/epaath_es_oneactivity_project.git html 
# RUN mv -f musicblocks html
# COPY . html

EXPOSE 80 443 3000

CMD ["nginx", "-g", "daemon off;"]