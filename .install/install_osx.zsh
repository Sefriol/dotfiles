# Install exa

brew install exa

# Install tmux (Optional)
# brew install tmux

# Install antigen

curl -L git.io/antigen > ~/.antigen/antigen.zsh
# or use git.io/antigen-nightly for the latest version

# Install FiraCode Retina font

cd ~/Library/Fonts && { curl -O 'https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/FiraCode/Retina/complete/Fira%20Code%20Retina%20Nerd%20Font%20Complete.otf' ; cd -; }

# Copy configs. i.e. copy all files in this repository except this install directory

rsync -a -f"- */" -f"+ *" -f"-"../configs ~/

