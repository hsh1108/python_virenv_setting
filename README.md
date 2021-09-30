
# Virtual Environment to develop

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

## Init setting
1. ~/.bashrc file
paste below to ~/.bashrc file
```
eval "$(direnv hook bash)"  
```

2. .envrc 
paste below to .envrc file
```
use python 3
```

3. ~/.direnvrc file
paste below to ~/.direnvrc file
```
use_python() {
  local python_root=/usr
  load_prefix "$python_root"
  layout_python "$python_root/bin/python3"  # python path to use
}
```



