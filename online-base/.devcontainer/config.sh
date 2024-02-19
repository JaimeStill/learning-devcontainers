# install dotnet tools
dotnet --list-sdks
dotnet tool install -g dotnet-ef

# install global npm packages
npm i -g @angular-devkit/schematics-cli @angular/cli @devcontainers/cli

basecache=/workspaces/learning-devcontainers/cached-base/.devcontainer/cache
origin=$(pwd)
nodepath=/usr/local/share/nvm/versions/node
version=$(ls $nodepath)
cd "$nodepath/$version"

if [ -d $basecache/node.tar.gz ]; then
    rm $basecache/node.tar.gz;
fi

tar -zcvf $basecache/node.tar.gz .

cd $HOME/.dotnet/tools

if [ -d $basecache/dotnet-tools.tar.gz ]; then
    rm $basecache/dotnet-tools.tar.gz;
fi

tar -zcvf $basecache/dotnet-tools.tar.gz .
