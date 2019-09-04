echo "Username?"
read username
echo "Password?"
stty -echo
read password
stty echo

while true ; do
    echo "Do you want use proxy (y/n)?"
    read useproxy
    if [[ $useproxy == 'y' || $useproxy == 'n' ]]; then
       if [[ $useproxy == 'y' ]]; then
             echo "proxy?"
             read  proxy
       fi
       break;
    else echo "not y or n , please input again !!";
    fi
done

while true ; do
    echo "Do you run background (y/n)?"
    read usebg
    if [[ $usebg == 'y' || $usebg == 'n' ]]; then
       if [[ $usebg == 'y' ]]; then
            if [[ $useproxy == 'y' ]]; then
              nohup python ./examples/like_timeline_feed_eing.py -u $username -p $password -proxy $proxy > my_output_$username.log &
              tail -f my_output_$username.log --lines 1000
            else
                nohup python ./examples/like_timeline_feed_eing.py -u $username -p $password > my_output_$username.log &
                tail -f my_output_$username.log --lines 1000
            fi

       else
            if [[ $useproxy == 'y' ]]; then
                python ./examples/like_timeline_feed_eing.py -u $username -p $password -proxy $proxy
            else
               python ./examples/like_timeline_feed_eing.py -u $username -p $password
            fi
       fi
       break;
    else echo "not y or n , please input again !!";
    fi
done

