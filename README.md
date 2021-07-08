# dockbox

`dockbox` is a useful tool for when you want to try out code quickly and easily without compromising your own system. As a bonus, it makes it easy to delete the dependencies and other side effects as a result of trying out code.

All you need is Docker installed on your system, and let dockbox do the rest.

## Getting Started

`dockbox` currently requires Docker to run. Please visit https://docs.docker.com/get-started/ for installation instructions.

If installing `dockbox` from the source, run `go install` in the root directory to install dockbox on your system.

Then run `dockbox create <url>` to create a dockbox from a URL. The code repository that you choose does not need to have a Dockerfile to run, but if it does, `dockbox` will use it to create a `dockbox`. Otherwise, it will generate one for you.

Once you are done with the dockbox, clean up your resources with `dockbox clean` which will clean up all side-effects/resources associated with the code you just installed.

5 easy steps to getting started:

1. `git clone https://github.com/sriharivishnu/dockbox.git`
2. `cd dockbox`
3. `go install`
4. `dockbox create <url>`
5. `dockbox clean <dockbox name>`

For a full list of available commands, `dockbox help`

## Features

```
-> % dockbox help

Usage: dockbox [OPTIONS] COMMAND

Manage workspaces and dependencies with ease in an isolated, secure environment.

To get started with dockbox, try entering:

        dockbox create <url>

Usage:
  dockbox [command]

Available Commands:
  clean       Removes all dockboxes on your machine
  create      Creates a dockbox from a URL, file or git URL
  enter       Enters into a dockbox in a given directory
  help        Help about any command
  list        List all your dockboxes on your system
  tree        Shows a tree of dockbox image histories

Flags:
      --config string   config file (default is $HOME/.dockbox.yaml)
  -h, --help            help for dockbox

Use "dockbox [command] --help" for more information about a command.
```

## Roadmap

This project is still a work in progress! We will continue to add more features as we explore more use cases. If you have ideas on possible additions of features you would like to see added to dockbox, reach out at srihari.vishnu@gmail.com, or better yet, open a pull request!

Features in Progress:

- Allowing URLs other than git repositories
- Adding better customizability for images and commands
- Multi-module support to analyze a file tree and give possible groupings of a possible project structure
  - This is useful when say having a backend and a frontend in different folders in the same repository

## Contributing

There is still a lot of work to do on this project! All help is welcome!

The repository follows the standard structure of a Cobra Go CLI project. For questions and inquiries, again feel free to reach out at srihari.vishnu@gmail.com.

If there are no open issues to work on, here are some ideas on how you can contribute:

- Add documentation
- Create tests
- Add more options to commands to give more granular control
- Implement features for Roadmap
