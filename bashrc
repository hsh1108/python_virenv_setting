
# virtualenvwrapper 설정
export WORKON_HOME=~/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON='/usr/bin/python3'  # Usage of python3
source ~/.local/bin/virtualenvwrapper.sh

# direnv 설정
eval "$(direnv hook bash)"
