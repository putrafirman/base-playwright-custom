# Playwright Custom Docker Image

This README provides guidance on how to build a Docker image for a Playwright project.

## Overview

The provided Docker command builds a Docker image named `playwright-pyx` with the tag `v1`. This image is configured to include all necessary dependencies to run Playwright tests.

## Prerequisites

Before you can build this Docker image, ensure you have Docker installed on your machine. You can download and install Docker from [Docker's official website](https://www.docker.com/get-started).

## Building the Docker Image

To build the Docker image, navigate to the directory containing your Dockerfile and run the following command:

```bash
docker build -t playwright-pyx:v1 .
```

This command will build the image and tag it with `playwright-pyx:v1`.

## Running the Docker Container

To run the Docker container, use the following command:

```bash
docker run -d -v $PWD:/app playwright-pyx:v1
```

This command will run the container in detached mode and mount the current directory (`$PWD`) to the `/app` directory inside the container.
