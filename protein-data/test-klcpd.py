import sys
import os
import inspect
import numpy as np

SCRIPT_DIR = os.path.realpath(os.path.dirname(inspect.getfile(inspect.currentframe())))

if os.path.dirname(os.path.dirname(SCRIPT_DIR))+'/klcpd' not in sys.path:
    sys.path.append(os.path.dirname(SCRIPT_DIR)+'/klcpd')


from main import get_reduced_data, train_and_pred_dataset, save_preds

data = np.random.rand(100,4)
svd_method = 'random'
components =2
data_reduced = get_reduced_data(data, components, svd_method)
preds = train_and_pred_dataset(data_reduced)
save_preds(data_reduced, preds, svd_method, 'test data')