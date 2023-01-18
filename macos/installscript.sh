/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# Install packages using brew

packages_list=(
  bat
  exa
  jq
  terraform
  kubectl
  awscli
  gtop
  delta
  dust
  duf
  fd
  ripgrep
  cheat
  tldr
  neovim
  httpie
  curlie
  dog
  ansible
)


for package in "${packages_list[@]}"
do
  brew install "$package"
done

# Install applications
cask_list=(
  signal
  visual-studio-code
  thunderbird
  flutter
  android-studio
)

for cask in "${cask_list[@]}"
do
  brew install --cask "$cask"
done

# Install nerd fonts for terminal
fonts_list=(
  font-jetbrains-mono-nerd-font
  font-overpass-nerd-font
  font-ubuntu-mono-nerd-font
  font-agave-nerd-font
  font-meslo-lg-nerd-font
)

brew tap homebrew/cask-fonts

for font in "${fonts_list[@]}"
do
  brew install --cask "$font"
done


# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Set aliases
cat <<- 'EOF' > ~/.aliases
alias tf=terraform
alias k=kubectl
alias nv=nvim
EOF

echo "source ~/.alias" >> ~/.zshrc
