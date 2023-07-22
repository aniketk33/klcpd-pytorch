import sys
import os
import inspect
import numpy as np

# print(sys.path)
from klcpd_code import get_reduced_data, train_and_pred_dataset, save_preds
# from ..prepare_data import get_coordinates

data = np.random.rand(100,4)
svd_method = 'random'
components =2
data_reduced = get_reduced_data(data, components, svd_method)
preds = train_and_pred_dataset(data_reduced)
save_preds(data_reduced, preds, svd_method, 'test data')