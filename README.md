# dotfiles

dotfiles inspired by [rgomezcasas/dotfiles](https://github.com/rgomezcasas/dotfiles)

# Basic Setup

Install:
- Chrome + extensions
- 1Password
- Configure github in local including SSH configuration
- iTerm2 (set profile command to /bin/bash)
- Zoom
- Brew
- JetBrains Toolbox > install IDE and configure terminal (Settings > Tools > Terminal > path: /bin/bash)
- (optional) Install copilot

Create basic folders:
- ~/workspace/personal

Create basic config:
- ~/.gitconfig
```
[includeIf "gitdir:/Users/<username>/workspace/personal/"]
    path = /Users/<username>/.gitconfig-personal
[core]
    sshCommand = ssh -i ~/.ssh/<SSH_KEY> -F /dev/null
[user]
    name = <USERNAME>
    email = <EMAIL>
    signingkey = <GPG_SIGNING_KEY>
```
- clone dotfiles Clone dotfiles in  ~/workspace/dotfiles
