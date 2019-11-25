echo "Installing exa"
brew install exa

# Install tmux (Optional)
echo "Install tmux (Optional)"
brew install tmux

echo "Installing antigen"
curl -L git.io/antigen > ~/.antigen/antigen.zsh
# or use git.io/antigen-nightly for the latest version


echo "Installing font(s): FiraCode Retina"
cd /Library/Fonts && { curl -O 'https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/FiraCode/Retina/complete/Fira%20Code%20Retina%20Nerd%20Font%20Complete.ttf' ;mv Fira%20Code%20Retina%20Nerd%20Font%20Complete.ttf "Fira Code Retina Nerd Font Complete.ttf"; cd -; }

# Copy configs. i.e. copy all files in this repository except this install directory
echo "Copying config files to $HOME"

rsync -av ../configs/ ~/

echo "Installation complete!"