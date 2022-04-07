alias:str = """
alias mkvirtualenv="$VIRTUALENVWRAPPER_PYTHON $VIRTUALENVWRAPPER_CODE $VIRTUALENVWRAPPER_PYTHON $WORKON_HOME"
"""
#alias mkvirtualenv=\"echo \"testing $WORKON_HOME\";\" " #\ 
#"WORKON_PATH='$WORKON_HOME $1' ;" \
#"echo $WORKON_PATH"" 
# $VIRTUALENVWRAPPER_PYTHON -m venv $WORKON_HOME/$1"'
#alias:str = 'echo $1'

if __name__ == "__main__":
    print(alias)