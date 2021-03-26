#!/bin/bash
cat bashrc >> ~/.bashrc 
source ~/.bashrc

copyMacros(){
        for dir in ~/.config/JetBrains/*; do
                read -p "copying macros.xml to $dir/options/macros.xml, y/n?" yn
                case $yn in
                    [Yy]* ) cp macros.xml $dir/options/macros.xml;;
                    [Nn]* ) return;;
                    * ) echo "Please answer y or n.";;
                esac
        done
        
        for dir in ~/.config/JetBrains/*; do
                read -p "copying my_keybinds.xml to $dir/keymaps/my_keybinds.xml, y/n?" yn
                case $yn in
                    [Yy]* ) 
			    mkdir $dir/keymaps
			    cp my_keybinds.xml $dir/keymaps/my_keybinds.xml;;
                    [Nn]* ) return;;
                    * ) echo "Please answer y or n.";;
                esac
        done
}

copyMacros
