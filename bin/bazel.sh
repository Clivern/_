export BAZEL_VERSION=4.2.1

curl -fLO "https://github.com/bazelbuild/bazel/releases/download/${BAZEL_VERSION}/bazel-${BAZEL_VERSION}-installer-darwin-x86_64.sh"

chmod +x "bazel-${BAZEL_VERSION}-installer-darwin-x86_64.sh"

./bazel-${BAZEL_VERSION}-installer-darwin-x86_64.sh --user