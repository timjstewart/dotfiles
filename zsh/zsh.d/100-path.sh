directories=(
    /usr/local/bin
    /usr/local/sbin
    /usr/local/go/bin
    $PYENV_ROOT/bin
    ${GOPATH}/bin
    $HOME/.pyenv/versions/3.6.10/bin
    $HOME/bin
    $HOME/.local/bin
    $HOME/scripts
)

for dir in ${directories[@]}
do
    PATH="$dir:$PATH"
done


export PATH
