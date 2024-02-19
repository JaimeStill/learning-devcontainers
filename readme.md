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

## Use devcontainer CLI to Build Dev Container Image

```
devcontainer build --workspace-folder <path-to-workspace> --image-name <image-name>:<tag>

devcontainer build --workspace-folder . --image-name airgapped-dev:latest
```

## Extract GZipped Cached Resources

Run from within the [online-base](./online-base/) container.

**Global NPM Packages**  

```bash
# change to global package cache
cd /usr/local/share/nvm/versions/node/[version]/

# extract to cached-base
tar -zcvf /workspaces/learning-devcontainers/cached-base/.devcontainer/cache/node.tar.gz .
```

**dotnet tools**

```bash
# change to dotnet tools install location
cd $HOME/.dotnet/tools

# extract to cached-base
tar -zcvf /workspaces/learning-devcontainers/cached-base/.devcontainer/cache/dotnet-tools.tar.gz .
```

## Create an Image from a Container

```
docker commit <container-name> <image-name>:<tag>

docker commit learning-devcontainers_devcontainer-app-1 airgapped-dev:latest
```

## Install Extension from VSIX

Given an extension located at [`.devcontainer/mssql-1.22.1-ubuntu-x64.vsix`](https://github.com/microsoft/vscode-mssql?tab=readme-ov-file#offline-installation):

```json
"extensions": [
    "${containerWorkspaceFolder}/.devcontainer/mssql-1.22.1-ubuntu-x64.vsix"
]
```

### Download VSIX with CLI

**PowerShell**  

```pwsh
Invoke-RestMethod -Uri [Package-Uri] -OutFile [File]

# example
Invoke-RestMethod `
    -Uri https://github.com/microsoft/vscode-mssql/releases/download/v1.22.1/mssql-1.22.1-ubuntu.16.04-x64.vsix `
    -OutFile mssql-1.22.1-ubuntu-x64.vsix
```

**Bash**  

```bash
curl -sL [package-uri] -o [file]

# example
curl -sL https://github.com/microsoft/vscode-mssql/releases/download/v1.22.1/mssql-1.22.1-ubuntu.16.04-x64.vsix -o mssql-ubuntu-x64.vsix
```

## Open By URL in VS Code

```
vscode://ms-vscode-remote.remote-containers/cloneInVolume?url={url}

# example
vscode://ms-vscode-remote.remote-containers/cloneInVolume?url=https://github.com/microsoft/vscode-remote-try-node
```