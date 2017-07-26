# debian-development

    Docker debian image to use for development, testing and deployment.

| Docker base image | Docker image            | Tag            |
| ----------------- | ----------------------- | -------------- |
| [debian][1]       | [debian-development][2] | [latest][3]    |
| [debian][1]       | [debian-development][2] | [edge][3]      |

[1]: https://hub.docker.com/_/debian/
[2]: https://hub.docker.com/r/vergissberlin/debian-development/
[3]: https://hub.docker.com/r/vergissberlin/debian-development/tags/

## Promise

> You will **always get the latest** build from the base image with additional installed packages. 
> An [concourse ci](http://concourse.ci) instance is watching on changes. It starts to rebuild the image and push it to the registry immediately.
  

## Installed packaged
| Package       | Description                                                                                               |
| ------------- | ---------------------------------------------------------------------------------------------------------- | 
| bash          | Bash is a Unix shell and command language as a free software replacement for the Bourne shell.             |
| bats          | Bats is a TAP-compliant testing framework for Bash. It provides a simple way to verify that the UNIX programs you write behave as expected. |
| curl          | cURL is a computer software project providing a library and command-line tool for transferring data using various protocols. |
| figlet        | FIGlet generates text banners, in a variety of typefaces, composed of letters made up of conglomerations of smaller ASCII characters (see ASCII art). |
| git           | Git is a version control system (VCS) for tracking changes in computer files and coordinating work on those files among multiple people.    |
| mc            | GNU Midnight Commander (also known as mc) is a free cross-platform orthodox file manager.                  |
| wget          | GNU Wget is a computer program that retrieves content from web servers.                                    |
| vim           | Vim is a clone of Bill Joy's vi text editor program for Unix.                                              |

## Usage

        docker run -it vergissberlin/debian-development:latest bash
        docker run -it vergissberlin/debian-development:edge bash

### Docker registry

https://hub.docker.com/r/vergissberlin/debian-development/

### concourse ci

```
fly set-pipeline --target example --config pipeline.yml --pipeline docker-debian -l credentials.yml
```
