# Suman Jayapathi's Resume

## Table of Contents

- [About](#about-)
- [Getting Started](#getting-started-)
  - [Prerequisites](#prerequisites-)
  - [Installation](#installation-)
- [Usage](#usage-)

## About <a name = "about"></a>

A [JSON Resume](https://jsonresume.org/) to drive the resume website.

## Getting Started <a name = "getting_started"></a>

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See [deployment](#deployment) for notes on how to deploy the project on a live system.

### Prerequisites <a name = "prerequisites"></a>

<https://jsonresume.org/getting-started/>

### Installation <a name = "installation"></a>

```sh
npm install -g resume-cli@3.0.8
```

## Usage <a name = "usage"></a>

```sh
resume serve
```

### Docker development

```sh
docker build -t dev -f Dockerfile.dev .   
docker run --rm -p 4000:4000 -it --init --mount type=bind,src="$(pwd)",target=/app dev resume serve
```

And then, launch <http://localhost:4000/> on your browsers to view your resume.
