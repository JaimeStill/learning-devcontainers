# install mssql extension
curl - O https://github.com/microsoft/vscode-mssql/releases/download/v1.22.1/mssql-1.22.1-ubuntu.16.04-x64.vsix
code --install-extension ./mssql-1.22.1-ubuntu.16.04-x64.vsix
rm mssql-1.22.1-ubuntu.16.04-x64.vsix

# install dotnet tools
dotnet tool install -g dotnet-ef

# install global npm packages
npm i -g @angular-devkit/schematics-cli @angular/cli @devcontainers/cli @npm