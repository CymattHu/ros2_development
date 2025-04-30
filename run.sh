xhost +local:docker  # permit docker to access X server

docker run -it --rm \
    --net=host \
    --env="DISPLAY=${DISPLAY}" \
    --env="QT_X11_NO_MITSHM=1" \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    --privileged \
    ros2-nav2:humble