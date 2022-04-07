# virtualenvwrapper

This is just to emulate the basic behavior since I was having a lot of problems trying to install a version in my ubuntu OS.

## Installation:

### Pre-requisits:

- Python3.8 or superior installed.

### Steps

1. You can clone this repo in your favorite folder let's use ~/Documents/repos as example.
1. Create your virtualenv folder for example in ~/.virtualenv:
    ```
    $ mkdir ~/.virtualenvs
    ```
1. Configure some variables in `~/.bashrc`, or `~/.zshrc`, etc. (depending of your favorite shell): 
    ```
    export WORKON_HOME=$HOME/.virtualenvs
    export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3.8
    source ~/Documents/repos/virtualenvwrapper/setup.sh
    ```

## Commands:

```bash
# create a virtual environment
$ mkvirtualenv myenv

# lists all environments generated
$ lsvirtualenv
myenv

# use a current environment
$ workon myenv
myenv ▒ ~/Documents/repos $

# deactivate environment
myenv ▒ ~/Documents/repos $ deactivate
```