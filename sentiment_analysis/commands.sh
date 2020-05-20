# to create conda env from scratch
conda create --name sentiment_analysis python=2.7
conda activate sentiment_analysis

~/.conda/envs/sentiment_analysis/bin/pip install scipy
~/.conda/envs/sentiment_analysis/bin/pip install matplotlib
~/.conda/envs/sentiment_analysis/bin/pip install paddle
~/.conda/envs/sentiment_analysis/bin/pip install fluid

# this one installs the other dependences 
~/.conda/envs/sentiment_analysis/bin/pip install paddlepaddle-gpu

# to export conda env to yml file
conda env export > sentiment_analysis.yml

# to create conda env using yml file
conda env create -f=sentiment_analysis.yml

# to run 
srun  -n 1 bash -c "./run_and_time.sh 0"

# remove conda env
conda remove --name sentiment_analysis --all

