#!/usr/bin/env bash


# add missing simbols 
xmodmap -e "keycode 134 = slash question slash question degree questiondown degree questiondown slash question degree questiondown slash question degree questiondown"
xmodmap -e "keycode 26 = e E e E backslash EuroSign EuroSign EuroSign e E EuroSign EuroSign e E EuroSign EuroSign"
xmodmap -e "keycode 27 = r R r R bar registered registered registered r R registered registered r R registered registered"

