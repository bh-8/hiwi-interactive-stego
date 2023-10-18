#!/bin/bash

IMAGE_NAME="interactive_stego"
BASE_PATH="./interactive_stego"

if [ ! -d "$BASE_PATH/docker-wine" ]; then
    echo "Downloading base repository..."
    git clone https://github.com/scottyhardy/docker-wine $BASE_PATH/docker-wine 2> /dev/null
fi

echo "Patching Dockerfile..."
rm -f "$BASE_PATH/docker-wine/Dockerfile"
cp "$BASE_PATH/Dockerfile.patch" "$BASE_PATH/docker-wine/Dockerfile"
if [ -d "$BASE_PATH/docker-wine/bin" ]; then
    rm -fdr "$BASE_PATH/docker-wine/bin"
fi
cp -R "$BASE_PATH/bin" "$BASE_PATH/docker-wine/bin"
if [ -d "$BASE_PATH/docker-wine/home" ]; then
    rm -fdr "$BASE_PATH/docker-wine/home"
fi
if [ ! -d "$BASE_PATH/home/io" ]; then
    mkdir "$BASE_PATH/home/io"
fi
cp -R "$BASE_PATH/home" "$BASE_PATH/docker-wine/home"
cp "$BASE_PATH/apt.txt" "$BASE_PATH/docker-wine/packages.txt"
cp "$BASE_PATH/pip.txt" "$BASE_PATH/docker-wine/requirements.txt"

echo "Building image..."
DOCKER_BUILDKIT=1 docker build \
    --tag birnbaum01/$IMAGE_NAME \
    $BASE_PATH/docker-wine

echo "Starting container..."
docker run -it \
    --rm \
    --hostname="$(hostname)" \
    --env="DISPLAY" \
    --volume="${XAUTHORITY:-${HOME}/.Xauthority}:/root/.Xauthority:ro" \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:ro" \
    --volume=$(realpath ./io):/home/wineuser/io \
    --cap-add SYS_ADMIN \
    --device /dev/fuse \
    birnbaum01/$IMAGE_NAME /bin/bash

#stop running container
if [ "$(docker container ls | grep "$IMAGE_NAME" | wc -l)" = "1" ]; then
    DOCKER_ID=$(docker container ls | grep "$IMAGE_NAME" | cut -d" " -f1)
    echo "Stopping container '$DOCKER_ID'..."
    docker stop $DOCKER_ID
fi

exit 0
