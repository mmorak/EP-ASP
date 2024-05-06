#!/bin/bash

# Need to include the file within the EP-ASP folder to be able to run it.

# Instances bomb_0xxx
current_dir=$(pwd)

echo "Running Instances Bomb Problems"
for i in 10 20 30 40 50 60 70 80 90 100 110 120 130 140 150
do
    np_len=$((i / 2))
    
    echo "clingo ${current_dir}/running/benchmark-tool-ep_asp/ep_asp/solver.py ${current_dir}/running/benchmark-tool-ep_asp/ep_asp/bt_conf.lp -c np=${i} -c len=1 -c length=${i} -c planning=1 -c heuristic=1 -c debug=0 -c initials_only=0 -c max=0 -q2 --time-limit=600 --outf=3" > benchmarks/ep_asp/bombProblems/instances/bt/bt_bomb_0${i}.sh
    chmod -x benchmarks/ep_asp/bombProblems/instances/bt/bt_bomb_0${i}.sh
    echo "Done bt ${i}"

    echo "clingo ${current_dir}/running/benchmark-tool-ep_asp/ep_asp/solver.py ${current_dir}/running/benchmark-tool-ep_asp/ep_asp/btc_conf.lp -c np=$np_len -c len=1 -c length=${i} -c planning=1 -c heuristic=1 -c debug=0 -c initials_only=0 -c max=0 -q2 --time-limit=600 --outf=3" > benchmarks/ep_asp/bombProblems/instances/btc/btc_bomb_0${i}.sh
    chmod -x benchmarks/ep_asp/bombProblems/instances/btc/btc_bomb_0${i}.sh
    echo "Done btc ${i}"

    echo "clingo ${current_dir}/running/benchmark-tool-ep_asp/ep_asp/solver.py ${current_dir}/running/benchmark-tool-ep_asp/ep_asp/btuc_conf.lp -c np=$np_len -c len=1 -c length=${i} -c planning=1 -c heuristic=1 -c debug=0 -c initials_only=0 -c max=0 -q2 --time-limit=600 --outf=3" > benchmarks/ep_asp/bombProblems/instances/btuc/btuc_bomb_0${i}.sh
    chmod -x benchmarks/ep_asp/bombProblems/instances/btuc/btuc_bomb_0${i}.sh
    echo "Done btuc ${i}"
done
echo "Instances Bomb Problems Done"

echo "Running Many Bomb Problems"
for i in 10 20 30 40 50 60 70 80 90 100 110 120 130 140 150
do
    np_len=$((i / 2))
    for j in 1 2 3 4
    do    
        echo "clingo ${current_dir}/running/benchmark-tool-ep_asp/ep_asp/solver.py ${current_dir}/running/benchmark-tool-ep_asp/ep_asp/bmtc_conf.lp -c np=$np_len -c nt=${j} -c len=1 -c length=${i} -c planning=1 -c heuristic=1 -c debug=0 -c initials_only=0 -c max=0 -q2 --time-limit=600 --outf=3" > benchmarks/ep_asp/bombProblems/many/bmtc/bmtc_bomb_0${i}_0${j}.sh
        chmod -x benchmarks/ep_asp/bombProblems/many/bmtc/bmtc_bomb_0${i}_0${j}.sh
        echo "Done many_bmtc ${i}_${j}"

        echo "clingo ${current_dir}/running/benchmark-tool-ep_asp/ep_asp/solver.py ${current_dir}/running/benchmark-tool-ep_asp/ep_asp/bmtuc_conf.lp -c np=$np_len -c nt=${j} -c len=1 -c length=${i} -c planning=1 -c heuristic=1 -c debug=0 -c initials_only=0 -c max=0 -q2 --time-limit=600 --outf=3" > benchmarks/ep_asp/bombProblems/many/bmtuc/bmtuc_bomb_0${i}_0${j}.sh
        chmod -x benchmarks/ep_asp/bombProblems/many/bmtuc/bmtuc_bomb_0${i}_0${j}.sh
        echo "Done many_bmtuc ${i}_${j}"
    done

done
echo "Many Bomb Problems Done"

echo "Running Yale Problems"
echo "clingo ${current_dir}/running/benchmark-tool-ep_asp/ep_asp/solver.py ${current_dir}/running/benchmark-tool-ep_asp/ep_asp/yaleProblems/yale1.txt -c len=1 -c length=1 -c planning=1 -c debug=0 -c pre=0 -c max=0 -q2 --time-limit=600 --outf=3" > benchmarks/ep_asp/yaleProblems/yale/yale1.sh

echo "clingo ${current_dir}/running/benchmark-tool-ep_asp/ep_asp/solver.py ${current_dir}/running/benchmark-tool-ep_asp/ep_asp/yaleProblems/yale2.txt -c len=2 -c length=2 -c planning=1 -c debug=0 -c pre=0 -c max=0 -q2 --time-limit=600 --outf=3" > benchmarks/ep_asp/yaleProblems/yale/yale2.sh

echo "clingo ${current_dir}/running/benchmark-tool-ep_asp/ep_asp/solver.py ${current_dir}/running/benchmark-tool-ep_asp/ep_asp/yaleProblems/yale3.txt -c len=1 -c length=3 -c planning=1 -c debug=0 -c pre=0 -c max=0 -q2 --time-limit=600 --outf=3" > benchmarks/ep_asp/yaleProblems/yale/yale3.sh

echo "clingo ${current_dir}/running/benchmark-tool-ep_asp/ep_asp/solver.py ${current_dir}/running/benchmark-tool-ep_asp/ep_asp/yaleProblems/yale4.txt -c len=4 -c length=4 -c planning=1 -c debug=0 -c pre=0 -c max=0 -q2 --time-limit=600 --outf=3" > benchmarks/ep_asp/yaleProblems/yale/yale4.sh

echo "clingo ${current_dir}/running/benchmark-tool-ep_asp/ep_asp/solver.py ${current_dir}/running/benchmark-tool-ep_asp/ep_asp/yaleProblems/yale5.txt -c len=4 -c length=5 -c planning=1 -c debug=0 -c pre=0 -c max=0 -q2 --time-limit=600 --outf=3" > benchmarks/ep_asp/yaleProblems/yale/yale5.sh

echo "clingo ${current_dir}/running/benchmark-tool-ep_asp/ep_asp/solver.py ${current_dir}/running/benchmark-tool-ep_asp/ep_asp/yaleProblems/yale6_7.txt -c len=4 -c length=6 -c planning=1 -c debug=0 -c pre=0 -c max=0 -q2 --time-limit=600 --outf=3" > benchmarks/ep_asp/yaleProblems/yale/yale6.sh

echo "clingo ${current_dir}/running/benchmark-tool-ep_asp/ep_asp/solver.py ${current_dir}/running/benchmark-tool-ep_asp/ep_asp/yaleProblems/yale6_7.txt -c len=4 -c length=7 -c planning=1 -c debug=0 -c pre=0 -c max=0 -q2 --time-limit=600 --outf=3" > benchmarks/ep_asp/yaleProblems/yale/yale7.sh

echo "clingo ${current_dir}/running/benchmark-tool-ep_asp/ep_asp/solver.py ${current_dir}/running/benchmark-tool-ep_asp/ep_asp/yaleProblems/yale8.txt -c len=8 -c length=8 -c planning=1 -c debug=0 -c pre=0 -c max=0 -q2 --time-limit=600 --outf=3" > benchmarks/ep_asp/yaleProblems/yale/yale8.sh

echo "Yale Problems Done"


echo "Running Yale Eiter Problems"

echo "clingo ${current_dir}/running/benchmark-tool-ep_asp/ep_asp/solver.py ${current_dir}/running/benchmark-tool-ep_asp/ep_asp/yaleProblems/yale1.txt -c len=1 -c length=1 -c planning=1 -c debug=0 -c pre=0 -c max=1 -q2 --time-limit=600 --outf=3" > benchmarks/ep_asp/yaleProblems/eiter/eiter_yale1.sh

echo "clingo ${current_dir}/running/benchmark-tool-ep_asp/ep_asp/solver.py ${current_dir}/running/benchmark-tool-ep_asp/ep_asp/yaleProblems/yale2.txt -c len=2 -c length=2 -c planning=1 -c debug=0 -c pre=0 -c max=1 -q2 --time-limit=600 --outf=3" > benchmarks/ep_asp/yaleProblems/eiter/eiter_yale2.sh

echo "clingo ${current_dir}/running/benchmark-tool-ep_asp/ep_asp/solver.py ${current_dir}/running/benchmark-tool-ep_asp/ep_asp/yaleProblems/yale3.txt -c len=1 -c length=3 -c planning=1 -c debug=0 -c pre=0 -c max=1 -q2 --time-limit=600 --outf=3" > benchmarks/ep_asp/yaleProblems/eiter/eiter_yale3.sh

echo "clingo ${current_dir}/running/benchmark-tool-ep_asp/ep_asp/solver.py ${current_dir}/running/benchmark-tool-ep_asp/ep_asp/yaleProblems/yale4.txt -c len=4 -c length=4 -c planning=1 -c debug=0 -c pre=0 -c max=1 -q2 --time-limit=600 --outf=3" > benchmarks/ep_asp/yaleProblems/eiter/eiter_yale4.sh

echo "clingo ${current_dir}/running/benchmark-tool-ep_asp/ep_asp/solver.py ${current_dir}/running/benchmark-tool-ep_asp/ep_asp/yaleProblems/yale5.txt -c len=4 -c length=5 -c planning=1 -c debug=0 -c pre=0 -c max=1 -q2 --time-limit=600 --outf=3" > benchmarks/ep_asp/yaleProblems/eiter/eiter_yale5.sh

echo "clingo ${current_dir}/running/benchmark-tool-ep_asp/ep_asp/solver.py ${current_dir}/running/benchmark-tool-ep_asp/ep_asp/yaleProblems/yale6_7.txt -c len=4 -c length=6 -c planning=1 -c debug=0 -c pre=0 -c max=1 -q2 --time-limit=600 --outf=3" > benchmarks/ep_asp/yaleProblems/eiter/eiter_yale6.sh

echo "clingo ${current_dir}/running/benchmark-tool-ep_asp/ep_asp/solver.py ${current_dir}/running/benchmark-tool-ep_asp/ep_asp/yaleProblems/yale6_7.txt -c len=4 -c length=7 -c planning=1 -c debug=0 -c pre=0 -c max=1 -q2 --time-limit=600 --outf=3" > benchmarks/ep_asp/yaleProblems/eiter/eiter_yale7.sh

echo "clingo ${current_dir}/running/benchmark-tool-ep_asp/ep_asp/solver.py ${current_dir}/running/benchmark-tool-ep_asp/ep_asp/yaleProblems/yale8.txt -c len=8 -c length=8 -c planning=1 -c debug=0 -c pre=0 -c max=1 -q2 --time-limit=600 --outf=3" > benchmarks/ep_asp/yaleProblems/eiter/eiter_yale8.sh

