#!/bin/bash
cat bashrc >> ~/.bashrc 
soruce ~/.bashrc

copyMacros(){
        for dir in ~/.config/JetBrains/*; do
                read -p "copying macros.xml to $dir/options/macros.xml, y/n?" yn
                case $yn in
                    [Yy]* ) break;;
                    [Nn]* ) return;;
                    * ) echo "Please answer y or n.";;
                esac
                cp macros.xml $dir/options/macros.xml
        done
        
        for dir in ~/.config/JetBrains/*; do
                read -p "copying my_keybinds.xml to $dir/keymaps/my_keybinds.xml, y/n?" yn
                case $yn in
                    [Yy]* ) break;;
                    [Nn]* ) return;;
                    * ) echo "Please answer y or n.";;
                esac
                cp my_keybinds.xml $dir/keymaps/my_keybinds.xml
        done
}

copyMacros
