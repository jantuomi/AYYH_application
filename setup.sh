#!/bin/bash

besure(){
        read -n1 -rsp $'Press any key to continue.\nQuit with CTRL+C\n'
    }


    clear

    [ $UID -eq 0 ] && echo "Do not run this with sudo." && exit 1

    echo "Things to install:"
    echo " * texlive"
    echo " * make"
    echo " * tree"
    echo ""
    besure

    clear

    sudo apt-get install texlive texlive-latex-recommended texlive-latex-extra texlive-lang-european make tree 
    echo ""
    echo ""
    echo ""
    echo ""



    besure

    clear

    make

    clear

    tree -l
    echo "All done."

