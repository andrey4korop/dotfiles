# Dotfiles

This repository contains my system configurations (dotfiles) managed with [GNU Stow](https://www.gnu.org/software/stow/).

## What are Dotfiles?

Dotfiles are plain text configuration files for various applications and tools on a Unix-like system. They often reside in your home directory and are typically hidden (prefixed with a dot, e.g., `.bashrc`, `.vimrc`).

## Why Stow?

[GNU Stow](https://www.gnu.org/software/stow/) is a symlink farm manager. It helps manage the installation of multiple software packages into the same directory tree. In the context of dotfiles, `stow` allows you to keep your configuration files organized in a single repository and then symlink them into your home directory, keeping your home directory clean and making it easy to manage and version control your configurations.

## Setup

1.  **Clone the repository:**
    ```bash
    git clone https://github.com/yourusername/dotfiles.git ~/.dotfiles
    ```
    (Replace `yourusername` with your GitHub username or the appropriate repository URL.)

2.  **Navigate to the dotfiles directory:**
    ```bash
    cd ~/.dotfiles
    ```

3.  **Install dotfiles using Stow:**
    For each directory representing a configuration set (e.g., `zsh`, `mpv`, `theme`), you can use `stow` to create symlinks:
    ```bash
    stow <package_name>
    ```
    For example, to install `zsh` configurations:
    ```bash
    stow zsh
    ```
    This will create symlinks from `~/.dotfiles/zsh/.zshrc` to `~/.zshrc`, etc.

    **Important:** Before stowing, ensure that there are no existing files or directories in your home directory that would conflict with the symlinks `stow` wants to create. If conflicts exist, you may need to back them up or remove them first.

## Structure

The repository is organized by application or configuration set. Each top-level directory within this repository (e.g., `zsh`, `mpv`, `theme`) is treated as a `stow` package.

```
.
├── zsh/
│   ├── .zshrc
│   └── .p10k.zsh
├── mpv/
│   └── .config/
│       └── mpv/
│           └── mpv.conf
└── theme/
    └── .themes/
        └── Layan-Dark/
            └── ...
```

This structure allows `stow` to correctly symlink the contents of each package into your home directory (`~/`).
