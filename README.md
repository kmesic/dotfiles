# Kenan's dotfiles

![Screenshot of my shell prompt](./misc/terminal-screenshot.png)

## Installation

**Warning:** If you want to give these dotfiles a try, you should first fork this repository, review the code, and remove things you don’t want or need. Don’t blindly use my settings unless you know what that entails. Use at your own risk!

### Using Git and the bootstrap script

You can clone the repository wherever you want. The bootstrapper script will pull in the latest version and copy the files to your home folder.

```bash
git clone https://github.com/mathiasbynens/dotfiles.git && cd dotfiles && sh bootstrap.sh
```

To update, `cd` into your local `dotfiles` repository and then:

```bash
sh bootstrap.sh
```

Alternatively, to update while avoiding the confirmation prompt:

```bash
sh bootstrap.sh -f
```

## Feedback

Suggestions/improvements
[welcome](https://github.com/kmesic/dotfiles/issues)!


## Thanks to…

* [Mathias Bynens](https://github.com/mathiasbynens/dotfiles)