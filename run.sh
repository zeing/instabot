echo "Password?"
stty -echo
read password
stty echo

proxy=101.51.137.102

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

while true ; do
    echo "Do you run background (y/n)?"
    read uselog
    if [[ $uselog == 'y' || $uselog == 'n' ]]; then
       if [[ $uselog == 'y' ]]; then
             python ./examples/like_timeline_feed_eing.py zeing $password $proxy
       else
            python ./examples/like_timeline_feed_eing.py zeing $password $proxy
            tail -f my_output.log
       fi
       break;
    else echo "not y or n , please input again !!";
    fi
done

