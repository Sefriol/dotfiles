echo "Installing eza"
brew install eza

echo "Installing Stow for managing scripts"
brew install stow

# Install tmux (Optional)
# echo "Install tmux (Optional)"
# brew install tmux

echo "Installing antidote"
brew install antidote


echo "Installing font(s): MesloLGS NF for Powerlevel10k"
brew install font-meslo-lg-nerd-font
# Copy configs. i.e. copy all files in this repository except this install directory
echo "Creating Symbolic links to $HOME"

cd ..
stow  -t $HOME .

echo "Installation complete!"
