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
set -- -f; source bootstrap.sh
```

## Feedback

Suggestions/improvements
[welcome](https://github.com/kmesic/dotfiles/issues)!

## Author

| [![twitter/dev__ken](http://gravatar.com/avatar/24e08a9ea84deb17ae121074d0f17125?s=70)](http://twitter.com/dev__ken "Follow @dev__ken on Twitter") |


## Thanks to…

* [Mathias Bynens](https://github.com/mathiasbynens/dotfiles)