echo "Password?"
stty -echo
read pass
stty echo


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
echo $proxy
python ./examples/like_timeline_feed_eing.py zeing $password $proxy

