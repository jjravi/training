pip install torch --user

srun  -n 1 bash -c "./install.sh"

pip install yacs --user

pip install torchvision --user

pip install pycocotools --user

pip install mlperf_compliance --user

srun  -n 1 bash -c "pip install opencv-contrib-python --user"


```
maskrcnn_benchmark/utils/model_zoo.py
- from torch.utils.model_zoo import _download_url_to_file # apis moved from torch.utils.model_zoo to torch.hub
- from torch.utils.model_zoo import urlparse  from torch.hub import _download_url_to_file
- from torch.utils.model_zoo import HASH_REGEX

+ # apis moved from torch.utils.model_zoo to torch.hub
+ from torch.hub import _download_url_to_file
+ from torch.hub import urlparse
+ from torch.hub import HASH_REGEX
```

srun  -n 1 bash -c ./download_dataset.sh

pip install torchvision==0.2.1 --user
pip install torch==1.0.0 --user

#export COMPLIANCE_FILE=/tmp/temp.log
srun  -n 1 bash -c ./run_and_time.sh

 
