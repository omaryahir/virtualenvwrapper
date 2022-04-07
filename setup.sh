#/bin/bash

function mkvirtualenv() {
    ENV=$1
    $VIRTUALENVWRAPPER_PYTHON -m venv $WORKON_HOME/$ENV
    echo "... creating [$WORKON_HOME/$ENV]"
    sed -i 's/deactivate/virtualenvdeactivate/g' $WORKON_HOME/$ENV/bin/activate
    workon $1
}

function deactivate() {
    if ! [[ -z $VIRTUAL_ENV_OLD_PROMPT ]] ; then
        export PS1=$VIRTUAL_ENV_OLD_PROMPT
        virtualenvdeactivate
        VIRTUAL_ENV_OLD_PROMPT=""
    fi
}

function workon() {
    deactivate

    ENV=$1
    VIRTUAL_ENV_DISABLE_PROMPT=1
    VIRTUAL_ENV_PROMPT="$ENV ▒"

    VIRTUAL_ENV_OLD_PROMPT=$PS1
    
    NEWLINE=$'\n'
    FIRST_CHAR_PS1=${PS1:0:1}
    if [[ $FIRST_CHAR_PS1 == $NEWLINE ]] ; then
        # adding \n in new prompt
        VIRTUAL_ENV_PROMPT="$NEWLINE$VIRTUAL_ENV_PROMPT"
        # remove first char \n
        PS1=${PS1:1}
    fi
    export PS1="$VIRTUAL_ENV_PROMPT $PS1"
    source $WORKON_HOME/$ENV/bin/activate
}

alias workoff="deactivate"

function lsvirtualenv() {
    ls $WORKON_HOME
}

function rmvirtualenv() {
    ENV=$1
    echo "This folder is going to be removed: $WORKON_HOME/$ENV"
    echo "Do you want to continue? (Y/N)"
    select yn in "Yes" "No"; do
        case $yn in
            Yes ) rm -r $WORKON_HOME/$ENV; break;;
            No ) echo "Canceled!"; break;;
        esac
    done
}
