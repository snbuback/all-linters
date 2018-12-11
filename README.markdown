# All linters

Docker image with most common linters.
Despite being functional this image was created to be a demo of [Container-Env](https://github.com/snbuback/container-env).

Ideally linters should be installed as part of your project (avoiding a fat docker image).

## Linters
* pylint
* pylama
* isort
* pycodestyle
* flake8
* pyflakes
* rubocop
* foodcritic
* puppet-lint
* yamllint
* jsonlint

## How to use

To use all linters seemlessly you need to install [Container-Env](https://github.com/snbuback/container-env).
After, you can link all in the `/usr/local/bin`.

```shell
git clone git@github.com:snbuback/all-linters.git
cd all-linters
direnv allow .
./link-all.sh
```

 After, you can use all linters in your command line or in your favourite IDE. Just be aware they will only work checking source code inside your home directory and any subpath, since this is the only path mounted in the container.
