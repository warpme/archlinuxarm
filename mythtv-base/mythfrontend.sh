#!/bin/sh

# Summary:
# mythfrontend.sh [x11|eglfs|eglfsdrm|wayland] [gdb|apitrace|strace]

# Uncomment if you want speciffic cmd.line to start mythfrontend
# MM_MYTHFRONTEND_CMDLINE="/usr/bin/mythfrontend -O IgnoreSchemaVerMismatch=1 -O IgnoreProtoVerMismatch=1 --verbose playback,gpu,libav --loglevel debug"

# Uncomment to degug Qt QPA
# export QT_QPA_DEBUG=1
# export QT_LOGGING_RULES=qt.qpa.*=true
# export QT_QPA_EGLFS_DEBUG=1

#
# Launched without any params: starts undef X11 'su mythtv -c "mythfrontend > /var/log/mythfrontend.log 2>&1"'
# To start in EGLFS - give first param 'eglfs'
# To start in EGLFS DRM - give first param 'eglfsdrm'
# To start in Wayland - give first param 'wayland'
#
# To run under GDB give 2nd param 'gdb'. Script will go:
#   gdb ${myth_cmdline} -x /etc/gdb.commands"
#
# If run uder apitrace give 2nd param 'apitrace'. Script will go:
#   apitrace trace -a egl -o /usr/local/share/mythfrontend-apitrace.txt ${myth_cmdline}"
#
# If run uder strace give 2nd param is 'strace'. Script will go:
#   strace -o /usr/local/share/mythfrontend-strace.txt ${myth_cmdline}
#


















MM_MYTHTV_DRAW_ON=${1}
CURRENT_USER=$(whoami)

if [ x${CURRENT_USER} = "xmythtv" ] ; then
    echo "Launched as mythtv user"
else
    echo "Launched as ${CURRENT_USER} user. Pls run under mythtv user. Exiting ..."
    exit 1
fi


export QT_PLUGIN_PATH=/usr/lib/qt/plugins
#export XDG_RUNTIME_DIR=/run/user/1001

# Setup desired env variables
case "${MM_MYTHTV_DRAW_ON}" in

    eglfs)
        echo "Runing with drawing to EGLFS"
        export QT_QPA_PLATFORM=eglfs
        export QT_QPA_EGLFS_INTEGRATION=eglfs_kms
        ;;
    eglfsdrm)
        echo "Runing with drawing to EGLFS in DRM planes mode"
        export QT_QPA_PLATFORM=eglfs
        export QT_QPA_EGLFS_INTEGRATION=eglfs_kms
        export MYTHTV_DRM_VIDEO=1
        ;;

    wayland)
        echo "Runing with drawing to Wayland-EGL"
        export QT_QPA_PLATFORM=wayland-egl
        ;;

    x11|*)
        echo "Runing with drawing to Xorg"
        export QT_QPA_PLATFORM=xcb
        export DISPLAY=':0.0'
        ;;

esac

env

if [ -n "${MM_MYTHFRONTEND_CMDLINE}" ] ; then
    myth_cmdline="${MM_MYTHFRONTEND_CMDLINE}"
else
    myth_cmdline="mythfrontend"
fi

echo "Myth cmd.line:${myth_cmdline}"

if [ x$1 = "xgdb" ] || [ x$2 = "xgdb" ] ; then

    echo "Starting under GDB"
    gdb /usr/bin/mythfrontend -x /usr/share/mythtv/gdb.commands

elif [ x$1 = "xapitrace" ] || [ x$2 = "xapitrace" ] ; then

    echo "Starting under apitrace"
    apitrace trace -a egl -o /home/mythtv/mythfrontend-apitrace.txt ${myth_cmdline}

elif [ x$1 = "xstrace" ] || [ x$2 = "xstrace" ] ; then

    echo "Starting under strace"
    strace -o /home/mythtv/mythfrontend-strace.txt ${myth_cmdline}

else

    ${myth_cmdline}

fi
