#!/bin/sh

ROOT=`pwd`/../dotfiles

# for vim
if [ ! -d $HOME/.vim ] ; then
	ln -s $ROOT/vim $HOME/.vim
fi
if [ ! -f $HOME/.vimrc ] ; then
	ln -s $ROOT/vimrc $HOME/.vimrc
fi

if [ ! -f $HOME/.gitconfig ] ; then
	ln -s $ROOT/gitconfig $HOME/.gitconfig
fi
if [ ! -f $HOME/.gitignore ] ; then
	ln -s $ROOT/gitignore $HOME/.gitignore
fi

