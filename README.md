
# Python Virtual Environment setting

## Install
```
$ apt-get install direnv
$ pip3 install virtualenv
$ curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash
```
## Usage
```
$ mkdir [project_name]
$ cd [project_name]
$ touch .envrc
$ direnv allow
$ source ~/.bashrc      # after modify resource file(~/.bashrc)
$ source ~/.direnvrc    # after modify resource file(~/.direnvrc)
```

## Resource files
1. ~/.bashrc file  
paste below to ~/.bashrc file
```
# pyenv 
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# direnv
eval "$(direnv hook bash)"  
show_virtual_env() {
    if [[ -n "$VIRTUAL_ENV" && -n "$DIRENV_DIR" ]]; then 
        echo "($(basename $VIRTUAL_ENV))"
    fi    
}
export -f show_virtual_env 
PS1='$(show_virtual_env)'$PS1  
```

2. .envrc  
paste below to .envrc file
```
# ~/.envrc
# -*- mode: sh; -*-
# (rootdir)/.envrc : direnv configuration file
# see https://direnv.net/
# pyversion=$(head .python-version)
# pvenv=$(head     .python-virtualenv)
pyversion=3.8.0     # [python version]
pvenv=exp           # [env name]

use python ${pyversion}
# Create the virtualenv if not yet done
layout virtualenv ${pyversion} ${pvenv}
# activate it
layout activate ${pvenv}-${pyversion}

```

3. ~/.direnvrc file  
paste below to ~/.direnvrc file
```
# use a certain pyenv version
use_python() {
    if [ -n "$(which pyenv)" ]; then
        local pyversion=$1
        pyenv local ${pyversion}
    fi
}

layout_virtualenv() {
    local pyversion=$1
    local pvenv=$2
    if [ -n "$(which pyenv virtualenv)" ]; then    
        pyenv virtualenv --force --quiet ${pyversion} ${pvenv}-${pyversion}
    fi    
    pyenv local --unset
}

layout_activate() {
    if [ -n "$(which pyenv)" ]; then
        source $PYENV_ROOT/versions/$1/bin/activate
    fi
}
```



