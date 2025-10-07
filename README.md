# My Fish Shell Configuration

My personal Fish shell setup with an intelligent two-line prompt, git integration, and productivity enhancements.

![Fish Shell Prompt](cg-fish.png)

## Features

### Intelligent Prompt
- **Two-line design** prevents long paths from pushing cursor off-screen
- **Git integration** with branch names and dirty status indicators
- **Command timing** shows execution time for commands over 2 seconds
- **Virtual environment** detection and display
- **Exit status** indicators for failed commands
- **Unicode styling** with clean box-drawing characters

### Enhanced Terminal Experience
- **Syntax highlighting** with custom color scheme
- **Smart autocompletion** with case-insensitive matching
- **History search** with arrow keys
- **Advanced keybindings** for productivity
- **Custom functions** for common tasks

### Productivity Features
- **Smart cd** that lists directory contents automatically
- **Enhanced ls, grep, tree** with colors
- **Archive extraction** function for multiple formats
- **Process search** and file finder utilities
- **Weather information** integration

## Installation

### Quick Install
```bash
curl -fsSL https://raw.githubusercontent.com/Hadi493/fish-config/main/install.sh | bash
```

### Manual Install
```bash
git clone https://github.com/Hadi493/fish-config.git
cd fish-config
./install.sh
```

### Selective Install
Copy only the files you need:
```bash
# Just the config
cp config.fish ~/.config/fish/

# Include functions and completions
cp -r conf.d ~/.config/fish/
cp fish_variables ~/.config/fish/
```

## Configuration Files

- `config.fish` - Main configuration with prompt and settings
- `conf.d/` - Additional configuration modules
- `fish_variables` - Universal variables and settings
- `install.sh` - Automated installation script

## Customization

### Colors
Edit the color variables in `config.fish`:
```fish
set -g fish_color_command 00ff87
set -g fish_color_quote 999900
```

### Prompt Elements
Modify the `fish_prompt` function to customize:
- User and hostname display
- Path formatting
- Git integration level
- Timing thresholds

### Aliases and Functions
Add your own aliases in the designated section:
```fish
# Custom aliases
alias myalias="command here"
```

## Dependencies

### Required
- Fish shell 3.0+
- Git (for git integration)
- A Nerd Font (recommended: Iosevka)

### Optional
- `tree` - Enhanced directory listing
- `bat` - Better cat with syntax highlighting
- `curl` - Weather function

## Philosophy

This configuration prioritizes:
- **Information density** without clutter
- **Visual hierarchy** for easy scanning
- **Functional beauty** over minimalism
- **Productivity** through intelligent automation

## Contributing

Issues and pull requests welcome. Please maintain the existing code style and philosophy.

## License

MIT License - See LICENSE file for details.

### Requarements
- Any Linux distro (I personally use CachyOS)
- Fish shell 
- Fastfetch

### Usage
Backup and remove old-config

```bash
mkdir -p ~/fish.bak
cp ~/.config/fish/* -r ~/fish.bak
rm -rf ~/.config/fish
```

Clone
```bash
git clone https://github.com/Hadi493/cg-fish.git ~/.config/fish/
```

source
```bash
source ~/.config/fish/config.fish
```

### Aliases 
```
ll, la, cls, git_graph, g_graph, gb_graph.
sys-upgrade, full-sys-upgrade
```

### ⚠️ Important: Customize Your Aliases
Please make sure to review the ***[config.fish](./config.fish)*** file and update the aliases according to your Linux distribution.
Note: Default aliases are pre-configured for Arch-based systems.


### Customize aliases
nvim
```bash
nvim ~/.config/fish/config.fish
```


### Custom Aliases
For Debian

```bash
alias sys-upgrade="sudo apt update && sudo apt upgrade -y"
alias apt="sudo apt"
```

For Fedora
```bash
alias sys-upgrade="sudo dnf upgrade -y"
alias dnf="sudo dnf"
```
