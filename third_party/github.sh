cd /tmp

export GITHUB_VERSION=0.5.4
echo "Installing Github v$GITHUB_VERSION"

curl -sL https://github.com/cli/cli/releases/download/v{$GITHUB_VERSION}/gh_{$GITHUB_VERSION}_macOS_amd64.tar.gz | tar xz

chmod +x ./gh_*/bin/gh

mv ./gh_*/bin/gh /usr/local/bin/gh

gh --version