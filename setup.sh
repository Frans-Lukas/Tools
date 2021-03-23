#!/bin/bash
cat bashrc >> ~/.bashrc 
soruce ~/.bashrc

copyMacros(){
        for dir in ~/.config/JetBrains/*; do
                read -p "copying macros.xml to $dir/options/macros.xml, y/n?" yn
                case $yn in
                    [Yy]* ) break;;
                    [Nn]* ) return;;
                    * ) echo "Please answer yes or no.";;
                esac
                cp macros.xml $dir/options/macros.xml
        done
}

copyMacros
