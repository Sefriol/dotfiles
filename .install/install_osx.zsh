echo "Installing exa"
brew install exa

# Install tmux (Optional)
# echo "Install tmux (Optional)"
# brew install tmux

echo "Installing antigen"
brew install antidote


echo "Installing font(s): MesloLGS NF for Powerlevel10k"
cd /Library/Fonts && {
    curl -O 'https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf';
    mv MesloLGS%20NF%20Regular.ttf "MesloLGS NF Regular.ttf";
    curl -O 'https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf';
    mv MesloLGS%20NF%20Bold.ttf "MesloLGS NF Bold.ttf";
    curl -O 'https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf';
    mv MesloLGS%20NF%20Italic.ttf "MesloLGS NF Italic.ttf";
    curl -O 'https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf';
    mv MesloLGS%20NF%20Bold%20Italic.ttf "MesloLGS NF Italic.ttf";
    cd -;
}
echo "REMINDER: Fonts need to be set for each Terminal / IDE manually"
echo "DOCS: https://github.com/romkatv/powerlevel10k/blob/master/font.md"

# Copy configs. i.e. copy all files in this repository except this install directory
echo "Copying config files to $HOME"

rsync -av ../configs/ ~/

echo "Installation complete!"