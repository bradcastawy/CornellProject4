#!/bin/bash
#SBATCH -J new_train_zm            # Job name
#SBATCH -o /home/zm287/point2seq-main/log/test_file_%j.out                  # output file (%j expands to jobID)
#SBATCH -e /home/zm287/point2seq-main/log/test_file_%j.err                  # error log file (%j expands to jobID)
#SBATCH --mail-type=ALL                      # Request status by email 
#SBATCH --mail-user=zm287@cornell.edu        # Email address to send results to.
#SBATCH -N 1                                 # Total number of nodes requested
#SBATCH -n 4                                 # Total number of cores requested
#SBATCH --get-user-env                       # retrieve the users login environment
#SBATCH --mem=24000                           # server memory requested (per node)
#SBATCH -t 8:00:00                           # Time limit (hh:mm:ss)
#SBATCH --partition=kilian       # Request partition
#SBATCH --gres=gpu:a6000:5                  # Type/number of GPUs needed
source /home/zm287/anaconda3/etc/profile.d/conda.sh
conda activate new1
python evaluation.py