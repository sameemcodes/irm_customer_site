if [ "$1" == "stop" ]
then
  sudo /etc/init.d/mysql stop
elif [ "$1" == "start" ]
then
  sudo /etc/init.d/mysql start
fi
