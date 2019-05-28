echo "Password?"
stty -echo
read pass
stty echo
proxy=122.154.123.2

while true ; do
    echo "Do you want custom proxy (y/n)?"
    read uselog
    if [[ $uselog == 'y' || $uselog == 'n' ]]; then
       if [[ $uselog == 'y' ]]; then
             echo "proxy?"
             read  proxy
       fi
       break;
    else echo "not y or n , please input again !!";
    fi
done

python ./examples/like_timeline_feed_eing.py zeing $password $proxy

