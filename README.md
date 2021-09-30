
# Ubuntu setting

# virtualenv & virtualenvwrapper
1. install
```
$ pip3 install virtualenv virtualenvwrapper
```

2. make directory for all virtual envs
```
$ mkdir ~/.virtualenvs
```
3. add path settings(as below) to ~/.bashrc 
```
$ export WORKON_HOME=~/.virtualenvs
$ export VIRTUALENVWRAPPER_PYTHON='/usr/bin/python3'  # Usage of python3
$ source ~/.local/bin/virtualenvwrapper.sh            # On ubuntu 17.04 
```

# direnv 
1. install
```
$ apt-get install direnv
```

2. .envrc file




