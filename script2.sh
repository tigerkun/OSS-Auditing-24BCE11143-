#!/bin/bash
# Script 2: FOSS Package Inspector

PACKAGE="git" 

git_path=$(which git 2>/dev/null)
if [ -z "$git_path" ]; then
    echo "Git Version Control is missing!"
    echo "install it with apt for ubuntu:"
    echo "sudo apt install git"
else
    # git version
    git_ver=$(git --version | awk '{print $3}')
    echo "Git is installed at $git_path"
    echo "Version: $git_ver"
    echo "#####################################"
    # default to git if nothing passed
    pkg=${1:-git}
    echo "Checking info for: $pkg"
    case $pkg in
        git)
            echo "Git is a version control system created by Linus Torvalds , allowing devs to track changes to files over time" # created by linus 
            ;;
        python3|python)
            echo "Python was created by Guido van Rossum as a hobby project."
            ;;
        apache2|httpd)
            echo "Apache web server also known as Apache was created by Robert McCool ."
            ;;
        vim|nano)
            echo "Terminal text editor created by Bram Moolenaar and was later passed on to the open source community for further development."
            ;;
        *)
            echo "I have no info about $pkg. Try git, python , vim or neovim"
            ;;
    esac
fi
