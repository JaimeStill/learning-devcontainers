# Dev Containers

## Helpful Links

* [VS Code - Dev Containers](https://code.visualstudio.com/docs/devcontainers/containers)
    * [Pre-building Dev Container Images](https://code.visualstudio.com/docs/devcontainers/containers#_prebuilding-dev-container-images)
    * [Always Installed Extensions](https://code.visualstudio.com/docs/devcontainers/containers#_always-installed-extensions)
    * [Port Forwarding](https://code.visualstudio.com/docs/devcontainers/containers#_forwarding-or-publishing-a-port)
* [Dev Container CLI](https://code.visualstudio.com/docs/devcontainers/devcontainer-cli)
* [Dev Containers CI Action](https://github.com/devcontainers/ci)
* [Container Features](https://containers.dev/implementors/features/)
    * [Published Features](https://containers.dev/features)
    * [Features Distribution](https://containers.dev/implementors/features-distribution/)
    * [Feature Starter Repo](https://github.com/devcontainers/feature-starter)

## Create an Image from a Container

```
docker commit <container-name> <image-name>:<tag>

docker commit learning-devcontainers_devcontainer-app-1 airgapped-dev:latest
```

## Open By URL in VS Code

```
vscode://ms-vscode-remote.remote-containers/cloneInVolume?url={url}

# example
vscode://ms-vscode-remote.remote-containers/cloneInVolume?url=https://github.com/microsoft/vscode-remote-try-node
```