# Docker Container For PHPUnit Development

This docker container allows you run phpunit tests and other CI tools on [sebastianbergmann/phpunit](https://github.com/sebastianbergmann/phpunit)

## Docker Registry
```
docker pull l3ikal/docker-phpunit
```

## STEPS
1. Fork [sebastianbergmann/phpunit](https://github.com/sebastianbergmann/phpunit) project if you have not already
2. Clone the forked repo into your machine
3. Install the dependencies
    ```
    docker run -it --rm --name phpunit-app -v $PWD:/usr/src/myapp -w /usr/src/myapp l3ikal/docker-phpunit:php-7.3 composer install
    ```
3. Do your magic
4. With the scripts below make sure that you didn't break anything

## Scripts that you can run
#### tests
```
docker run -it --rm --name phpunit-app -v $PWD:/usr/src/myapp l3ikal/docker-phpunit:php-7.3 composer install
```

#### php-cs-fixer
```
$ docker run -it --rm --name phpunit-app -v $PWD:/usr/src/myapp l3ikal/docker-phpunit:php-7.3 php ./tools/php-cs-fixer fix --diff-format=udiff --dry-run --show-progress=dots --using-cache=no --verbose
```

#### psalm on public API
```
docker run -it --rm --name phpunit-app -v $PWD:/usr/src/myapp l3ikal/docker-phpunit:php-7.3 php ./tools/psalm --config=.psalm/static-analysis.xml --no-progress --show-info=false                     
```

#### psalm on internal code
```
$ docker run -it --rm --name phpunit-app -v $PWD:/usr/src/myapp l3ikal/docker-phpunit:php-7.3 php ./tools/psalm --config=.psalm/config.xml --no-progress --shepherd --show-info=false --stats           
```