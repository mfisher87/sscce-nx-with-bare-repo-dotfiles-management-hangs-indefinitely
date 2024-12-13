# [SSCCE](sscce.org): Nx hangs with "bare repo" dotfiles management

When using a
[common dotfile management strategy](https://coffeeaddict.dev/how-to-manage-dotfiles-with-git-bare-repo/),
I encountered an indefinite hang while using Nx. I've narrowed the hang down to the
config in this repository.

Run `docker build .` (`./test.sh`) to reproduce. Nx's post-install script seems to
interact negatively with the `.gitignore` file in the home directory.
