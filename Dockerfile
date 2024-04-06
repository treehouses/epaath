# FROM treehouses/nginx:1.18

# RUN apk --no-cache upgrade
# RUN apk add --no-cache curl git

# WORKDIR /var/lib/nginx

# RUN rm -rf html
# # COPY ./epaath_es_oneactivity_project /var/lib/nginx/html
# RUN git clone --depth=1 --single-branch --branch with_all_activities https://GITLAB_USERNAME:GITLAB_PASSWORD@git2023.olenepal.org/regan/epaath_es_oneactivity_project.git html 
# # RUN mv -f musicblocks html
# # COPY . html

# EXPOSE 80 443 3000

# CMD ["nginx", "-g", "daemon off;"]

FROM treehouses/nginx:1.18

RUN apk --no-cache upgrade
RUN apk add --no-cache curl git

WORKDIR /var/lib/nginx

RUN rm -rf html
# Assuming the 'cloned_repo' directory is your build context
COPY ./cloned_repo/epaath_es_oneactivity_project /var/lib/nginx/html

# The next line clones the project directly, which is now handled in the GitHub Actions workflow
# RUN git clone --depth=1 --single-branch --branch with_all_activities https://GITLAB_USERNAME:GITLAB_PASSWORD@git2023.olenepal.org/regan/epaath_es_oneactivity_project.git html 
# If there are additional steps to move or prepare the project files, they should be adjusted to reflect the new context.

EXPOSE 80 443 3000

CMD ["nginx", "-g", "daemon off;"]
