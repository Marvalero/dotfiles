# dotfiles

dotfiles inspired by [rgomezcasas/dotfiles](https://github.com/rgomezcasas/dotfiles)

# Basic Setup

Install:
- Chrome + extensions
- 1Password
- Configure github in local including SSH configuration

Create basic folders:
- ~/workspace

Create basic config:
- ~/.gitconfig
```
[core]
sshCommand = ssh -i ~/.ssh/<SSH_KEY> -F /dev/null
[user]
name = <USERNAME>
email = <EMAIL>
signingkey = <GPG_SIGNING_KEY>
```

- clone dotfiles Clone dotfiles in  ~/workspace/dotfiles
