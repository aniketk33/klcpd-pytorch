# import torch

# print(torch.__version__)
# print(torch.cuda.is_available())

import sys
import os

SCRIPT_DIR = os.path.dirname(os.path.abspath('__file__'))
if os.path.dirname(SCRIPT_DIR) not in sys.path:
    sys.path.append(os.path.dirname(SCRIPT_DIR)+'/klcpd')
    
from main import get_reduced_data, train_and_pred_dataset, save_preds
