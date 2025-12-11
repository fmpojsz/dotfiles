# Dotfiles

## Terminal Stack

| Layer | Tool |
| :--- | :--- |
| **Terminal** | Ghostty |
| **Shell** | Zsh |
| **Framework** | Oh My Zsh |
| **Prompt** | Starship |
| **Navigation** | zoxide |

## Setup

### 1. Bootstrap
Install Homebrew and clone the repo.

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# For Apple Silicon
eval "$(/opt/homebrew/bin/brew shellenv)"

git clone https://github.com/fmpojsz/dotfiles.git ~/dotfiles
```

### 2. Install Packages

```bash
brew bundle --file=~/dotfiles/Brewfile
```

### 3. Setup Shell

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
```

### 4. Link Configs

```bash
rm -rf ~/.zshrc
cd ~/dotfiles && stow zsh git
```

## Font Configuration

| App | Font |
| :--- | :--- |
| Obsidian | LXGW WenKai |
| VS Code | Sarasa Term TC Nerd Font |
| Ghostty | Sarasa Term TC Nerd Font |
