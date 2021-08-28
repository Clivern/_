cd /tmp

export KUBECTX_VERSION=0.9.4
export KUBECTX_LATEST_VERSION=$(curl --silent "https://api.github.com/repos/ahmetb/kubectx/releases/latest" | jq '.tag_name' | sed -E 's/.*"([^"]+)".*/\1/')
echo "Installing Kubectx v$KUBECTX_VERSION. Latest version is $KUBECTX_LATEST_VERSION"

curl -sL https://github.com/ahmetb/kubectx/releases/download/v{$KUBECTX_VERSION}/kubectx_v{$KUBECTX_VERSION}_darwin_x86_64.tar.gz | tar xz

chmod +x ./kubectx

mv -f kubectx $LOCAL_BIN/kubectx