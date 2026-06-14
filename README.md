# 💤 LazyVim

Configuration installation guide for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

# Initialize on other devices

## Clone the repository

### Windows

```
git clone https://github.com/0DarkPhoenix/lazyvim-config.git %USERPROFILE%\AppData\Local\nvim
```

### MacOS & Linux

```
git clone https://github.com/0DarkPhoenix/lazyvim-config.git ~/.config/nvim
```

# Update lazyvim config from remote

```
git pull --ff-only

```

# Cspell

Cspell is configured to also use the Dutch and German dictionary. To install these, use the following commands:

```
cd <nvim-dir>
npm install
```

or when installing them specifically is necessary:

```
cd <nvim-dir>
npm install -D cspell-dict-nl-nl cspell-dict-de-de 
```
