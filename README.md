# omisu (*Simple Notification Handler*)

<!-- <a href="https://asciinema.org/a/qvNlrFrGB3xKZXb6GkremjZNp" target="_blank"><img src="https://asciinema.org/a/qvNlrFrGB3xKZXb6GkremjZNp.svg" alt="img" height="210px" align="right"/></a>
-->

Simple event handler for desktop notifications.

<!-- <a href="https://github.com/Sife-ops/omisu/releases"><img src="https://img.shields.io/github/release/Sife-ops/omisu.svg"></a>
-->

<!--
- create events using filters
- ... and many more!
-->


## Table of Contents

<!-- vim-markdown-toc GFM -->

* [Dependencies](#dependencies)
* [Installation](#installation)
* [Usage](#usage)

<!-- vim-markdown-toc -->


## Dependencies

- `bash`
- `inotify-tools`
    - inotify interface
- `jq` and `gron`
    - JSON processing


## Installation

<!--
### Linux
- Arch Linux: `yay omisu`
-->


### Manual

<!-- Release: https://github.com/Sife-ops/omisu/releases/latest -->
1. Download `omisu`.
    - Git: `git clone https://github.com/Sife-ops/omisu`
2. Change working directory to `omisu`.
    - `cd omisu`
3. Run `make install` inside the script directory to install the script.
    - **Arch Linux**: `make install`
    - **NOTE**: You may have to run this as root.

**NOTE:** `omisu` can be uninstalled easily using `make uninstall`. This removes all files from your system.


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
