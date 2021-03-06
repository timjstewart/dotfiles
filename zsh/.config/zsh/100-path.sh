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
    $ANDROID_HOME/tools
    $ANDROID_HOME/platform-tools
    $HOME/.ghcup/bin
    $HOME/opam/default/bin
    $HOME/.pub-cache/bin
)

for dir in ${directories[@]}
do
    PATH="$dir:$PATH"
done

export PATH
