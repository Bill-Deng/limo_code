#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/dlx/catkin_limo_workspace/src/mrt_cmake_modules"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/dlx/catkin_limo_workspace/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/dlx/catkin_limo_workspace/install/lib/python2.7/dist-packages:/home/dlx/catkin_limo_workspace/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/dlx/catkin_limo_workspace/build" \
    "/usr/bin/python2" \
    "/home/dlx/catkin_limo_workspace/src/mrt_cmake_modules/setup.py" \
    build --build-base "/home/dlx/catkin_limo_workspace/build/mrt_cmake_modules" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/dlx/catkin_limo_workspace/install" --install-scripts="/home/dlx/catkin_limo_workspace/install/bin"
