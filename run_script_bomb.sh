#!/bin/bash

# Instances bomb_0xxx
echo "Running Instances Bomb Problems"
for i in 10 20 30 40 50 60 70 80 90 100 110 120 130 140 150
do
    np_len=$((i / 2))
    
    clingo solver.py bt_conf.lp -c np=${i} -c len=1 -c length=${i} -c planning=1 -c heuristic=1 -c debug=0 -c initials_only=0 -c max=0 -q2 --time-limit=600 --outf=3 > bombProblems/instances/bt/bt_bomb_0${i}.txt
    echo "Done bt ${i}"

    clingo solver.py btc_conf.lp -c np=$np_len -c len=1 -c length=${i} -c planning=1 -c heuristic=1 -c debug=0 -c initials_only=0 -c max=0 -q2 --time-limit=600 --outf=3 > bombProblems/instances/btc/btc_bomb_0${i}.txt
    echo "Done btc ${i}"

    clingo solver.py btuc_conf.lp -c np=$np_len -c len=1 -c length=${i} -c planning=1 -c heuristic=1 -c debug=0 -c initials_only=0 -c max=0 -q2 --time-limit=600 --outf=3 > bombProblems/instances/btuc/btuc_bomb_0${i}.txt
    echo "Done btuc ${i}"
done
echo "Instances Bomb Problems Done"

echo "Running Many Bomb Problems"
for i in 10 20 30 40 50 60 70 80 90 100 110 120 130 140 150
do
    np_len=$((i / 2))
    for j in 1 2 3 4
    do    
        clingo solver.py bmtc_conf.lp -c np=$np_len -c nt=${j} -c len=1 -c length=${i} -c planning=1 -c heuristic=1 -c debug=0 -c initials_only=0 -c max=0 -q2 --time-limit=600 --outf=3 > bombProblems/many/bmtc/bmtc_bomb_0${i}_0${j}.txt
        echo "Done many_bmtc ${i}_${j}"

        clingo solver.py bmtuc_conf.lp -c np=$np_len -c nt=${j} -c len=1 -c length=${i} -c planning=1 -c heuristic=1 -c debug=0 -c initials_only=0 -c max=0 -q2 --time-limit=600 --outf=3 > bombProblems/many/bmtuc/bmtuc_bomb_0${i}_0${j}.txt
        echo "Done many_bmtuc ${i}_${j}"
    done

done
echo "Many Bomb Problems Done"
