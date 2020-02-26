cd /tmp

export APES_VERSION=0.1.0
export APES_LATEST_VERSION=$(curl --silent "https://api.github.com/repos/Clivern/Apes/releases/latest" | jq '.tag_name' | sed -E 's/.*"([^"]+)".*/\1/')
echo "Installing Apes $APES_VERSION. Latest version is $APES_LATEST_VERSION"

curl -sL https://github.com/Clivern/Apes/releases/download/{$APES_VERSION}/Apes_{$APES_VERSION}_Darwin_x86_64.tar.gz | tar xz

chmod +x ./Apes

mv -f Apes /usr/local/bin/apes
