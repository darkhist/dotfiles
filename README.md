# dotfiles 

## Prerequisites
1. Homebrew
```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

2. Stow
```sh
brew install stow
```

## Clone 
```sh
cd $HOME && git clone https://github.com/darkhist/dotfiles.git
```

## Symlink
```sh
cd dotfiles
stow . 
```

## Customizations

### Font
[Fira Code](https://www.programmingfonts.org/#firacode)

### Prompt
[Pure](https://github.com/sindresorhus/pure)

## Acknowledgements
My setup is heavily inspired by the [dreamsofautonomy dotfiles](https://github.com/dreamsofautonomy/dotfiles)
