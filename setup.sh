#!/bin/bash

symlink() {
    from="$1"
    to="$2"
    echo "Set link from '$from' to '$to'"
    rm -f "$to"
    ln -s "$from" "$to"
}

find $PWD -regex "[^.]*" -type f | while read filepath
do
    file="${filepath##*/}"
    symlink "$filepath" "$HOME/.$file"
done

