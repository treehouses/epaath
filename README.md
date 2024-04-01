
## Overview

This GitHub project automates the building and pushing of Docker images containing the `epaath` project cloned from a GitLab repository. It utilizes GitHub Actions for CI/CD processes, ensuring that the latest version of `epaath` is always packaged within the Docker images, ready for deployment.

## GitHub Workflow

The `.github/workflows/build-on-change.yml` workflow triggers on pushes to the `master` and `main` branches, as well as on `workflow_dispatch` and `repository_dispatch` events specifically for `epaath`. It builds Docker images for `amd64`, `arm`, and `arm64` architectures, then pushes them to Docker Hub under the repository `rayheyehygun/epaath`.

## Dockerfile

The `Dockerfile` in the root directory specifies the environment for running the `epaath` project. It is based on `treehouses/nginx:1.18`, with the `epaath` project cloned directly into the nginx serving directory.

## Prerequisites

To use this workflow and Dockerfile, ensure you have the following:

- Docker installed and running on your machine.
- A GitHub account with access to this repository.
- A Docker Hub account for pushing the images.
- A GitLab account with access to the `epaath_es_oneactivity_project` repository.

## Setup

1. **GitHub Secrets**: Configure the following secrets in your GitHub repository settings:
   - `DOCKER_USERNAME` and `DOCKER_PASSWORD`: Credentials for Docker Hub.
   - `GITLAB_USERNAME` and `GITLAB_PASSWORD`: Credentials for GitLab.

2. **Running the Workflow**: Trigger the workflow by pushing changes to the `master` or `main` branches, or manually via the GitHub Actions tab.

## Usage

After the workflow successfully pushes a Docker image, you can pull the image using:

```bash
docker pull rayheyehygun/epaath:<architecture>-<timestamp>
```

Replace `<architecture>` with `amd64`, `arm`, or `arm64` and `<timestamp>` with the build timestamp.

To run the Docker container:

```bash
docker run -d -p 80:80 rayheyehygun/epaath:<tag>
```

This will start a container with `epaath` running on port 80.

## Contributing

Contributions to the project are welcome! Please follow standard GitHub pull request procedures to submit your changes.

## License

Specify your project's license here.


# About E-Paath

E-Paath is a free learning platform created by OLE Nepal with over 400 interactive learning modules that are designed to align with Nepal's national curriculum. Catering to specific subjects and grade levels from 1 to 8, E-Paath modules are available in Nepali and English languages, and adaptable to any. E-Paath also offers instruction in Nepali Sign Language (NSL) for grades 1 to 6. E-Paath is accessible through any web browser, on mobile and tablets, and can be utilized online via OLE Nepal's digital library, E-Pustakalaya.

## Key Features

- **Engaging and Meaningful**: Designed for interactive and contextual learning experiences.
- **Curriculum Aligned**: Complements national curriculum for learning objectives.
- **Multimedia Based**: Uses contextualized images, audio, animations, games.
- **400+ Modular Activities**: Each module corresponds to a subject and a grade.
- **Grades Covered**: One - Eight
- **Subjects Covered**: Math, Science, English, and Nepali (Grades 1-4)
- **Multilingual Support**: In Nepali and English, Chepang (Grades 2-6), and NSL (Grades 1-6).
- **Activity Guide**: Modules include activity guide for teachers and guardians.

## How is E-Paath Developed?

A team of curriculum experts, graphic designers, software developers and translators work together to create E-Paath activities. From conceptualization to design and development, the team pays close attention to ensure that the activities meet the learning objectives, are fun and interactive, and the graphic elements, text and audio components are contextualized to match students' diverse local environments.

## What is our approach for E-Paath Development?

E-Paath design and development is based on a student-centered learning approach. The learning content is situated in real world scenarios and local context so that learning is personally meaningful to the students. We provide timely assessment so that the students can learn in a practice-based approach at their own pace. Along with giving fun and engaging learning experiences to the students, we also aim to promote a positive attitude to learning and positive self-esteem as a learner.