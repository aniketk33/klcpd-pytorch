import torch
import pandas as pd
import numpy as np
import os, sys
from enum import Enum

SCRIPT_DIR = os.path.dirname(os.path.abspath('__file__'))
if SCRIPT_DIR not in sys.path:
    sys.path.append(SCRIPT_DIR)

file_dir = './__dataset'

class DatasetName(Enum):
    PROTEIN_19HT = '1h9t_traj.xyz', [6570, 8993, 3]
    PROTEIN_1FME = '1fme_md.xyz', [100000, 504, 3]

def check_valid_dataset(dataset_name):
    assert isinstance(dataset_name, str) and dataset_name in DatasetName.__members__, 'Dataset name must be a string and one of the following: PROTEIN_19HT, PROTEIN_1FME'
    
    return True

def get_details(dataset_name):
    check_valid_dataset(dataset_name)
    data = DatasetName[dataset_name].value
    
    return data

def check_pkl_file(file_name):
    file_arr = file_name.split('.')
    pkl_file_name = '_'.join(file_arr) + '.pkl'
    files = os.listdir(file_dir)    
    
    return pkl_file_name in files, f'{file_dir}/{pkl_file_name}'


def get_coordinates(dataset_name):
    file_name, shape = get_details(dataset_name)
    is_present, pickle_file_name = check_pkl_file(file_name)
    
    if is_present:
        coordinates = torch.load(pickle_file_name)
        return coordinates
    
    df = pd.read_fwf(f'{file_dir}/{file_name}')
    raw_df = df[[df.columns[1], df.columns[2], df.columns[3]]]
    
    # remove NaN
    raw_df = raw_df.dropna()
    
    coordinates = raw_df.to_numpy(dtype=np.float32)
    coordinates = coordinates.reshape(shape)
    torch.save(coordinates, pickle_file_name)
    
    return coordinates


if __name__ == '__main__':
    dataset_name = 'PROTEIN_19HT'
    X = get_coordinates(dataset_name)
    print(X.shape)
    