#! /bin/bash
#nohup gnuais_mc | aisdispatcher -i -G -H 87.121.76.11:2028,193.189.247.193:32161,127.0.0.1:10110  &
until gnuais_mc | aisdispatcher -i -G -H 87.121.76.11:2028, 127.0.0.1:10110, 192.168.1.122:10110; do
    echo "gnuais_mc crashed with exit code $?.  Respawning.." >&2
    sleep 1
done

