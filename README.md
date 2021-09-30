
# Ubuntu setting


# 
## Install
```
$ apt-get install direnv
$ pip3 install virtualenv
```
## Usage
```
$ mkdir [project_name]
$ cd [project_name]
$ touch .envrc
$ direnv allow
$ source ~/bashrc file
```

## ~/.bashrc file
paste below to ~/.bashrc file
```
eval "$(direnv hook bash)"  
```

## .envrc 
paste below to .envrc file
```
use python 3
```

## ~/.direnvrc file
paste below to ~/.direnvrc file
```
use_python() {
  local python_root=/usr
  load_prefix "$python_root"
  layout_python "$python_root/bin/python3"
}
```




# virtualenv & virtualenvwrapper
## Install
```
$ pip3 install virtualenv virtualenvwrapper
```

## Usage
1. make directory to store all virtual envs
```
$ mkdir ~/.virtualenvs
```
2. add path settings(as below) to ~/.bashrc file
```
$ export WORKON_HOME=~/.virtualenvs
$ export VIRTUALENVWRAPPER_PYTHON='/usr/bin/python3'  # Usage of python3
$ source ~/.local/bin/virtualenvwrapper.sh            # On ubuntu 17.04 
```
