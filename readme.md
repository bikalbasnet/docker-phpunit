# Docker container to run phpunit development

This docker container allows you run phpunit tests on the fly.

# Pull it from docker registry
```
docker pull l3ikal/docker-phpunit
```
# Usage
```
docker run -v $(pwd):/var/www l3ikal/phpunit bash
```