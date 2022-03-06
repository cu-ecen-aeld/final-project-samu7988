!/bin/sh

case "$1" in 
	start)
		echo 'Start scull and misc-modules on startup'
		/usr/bin/module_load faulty
		/usr/bin/scull_load
		modprobe hello
		;;
	stop)
		echo 'Stop scull and misc-modules on shutdown'
		/usr/bin/module_unload faulty
		/usr/bin/scull_unload
		rmmod hello
		;;
	*)
	echo "Usage of script: $0 {start|stop} - to load and unload modules"
	exit 1
esac

exit 0
