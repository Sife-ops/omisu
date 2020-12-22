# omisu (*Simple Notification Handler*)

<!-- <a href="https://asciinema.org/a/qvNlrFrGB3xKZXb6GkremjZNp" target="_blank"><img src="https://asciinema.org/a/qvNlrFrGB3xKZXb6GkremjZNp.svg" alt="img" height="210px" align="right"/></a>
-->

Simple event handler for desktop notifications.

<!-- <a href="https://github.com/dylanaraps/fff/releases"><img src="https://img.shields.io/github/release/dylanaraps/fff.svg"></a>
-->

- Features...
- ... and many more!


## Table of Contents

<!-- vim-markdown-toc GFM -->

* [Dependencies](#dependencies)
* [Installation](#installation)
* [Usage](#usage)

<!-- vim-markdown-toc -->


## Dependencies

- `bash ?.?+`
- `inotify-tools`
- `jq` & `gron`
    - JSON processing.


## Installation

<!--
### Linux

- Arch Linux: `sudo make install`
-->

### Manual

1. Download `omisu`.
    - Release: https://github.com/Sife-ops/omisu/releases/latest
    - Git: `git clone https://github.com/Sife-ops/omisu`
2. Change working directory to `fff`.
    - `cd omisu`
3. Run `make install` inside the script directory to install the script.
    - **Arch Linux**: `make install`
    - **NOTE**: You may have to run this as root.

**NOTE:** `omisu` can be uninstalled easily using `make uninstall`. This removes all of files from your system.


## Usage

<!-- tiramisu, named pipes, environment variables, etc.
-->
`omisu` reads json-formatted desktop notifications from a file or named pipe.
`tiramisu` can generate json-formatted output for desktop notifications and redirrect output
to a named pipe or file that `omisu` can read from.
By default, omisu reads notifications from /tmp/notifications-$(whoami).
Here is how to get tiramisu up and running:

```sh
#!/bin/sh
notifs=/tmp/notifications-$(whoami)
mkfifo $notifs
chmod 600 $notifs
tiramisu -j >> $notifs &
```

You can now start `omisu` and begin to use it:

```sh
omisu &
```
