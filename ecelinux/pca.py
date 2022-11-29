import numpy as np
import torch
from const import *

TEST_SIZE = 200
IMG_SIZE = 784

#def pca_python():
test_data = np.loadtxt("./data/image.dat").reshape([TEST_SIZE, IMG_SIZE])[:100]
test_data = np.transpose(test_data)
test_data = torch.from_numpy(test_data)
print("Shape of original test data: {}".format(test_data.shape))

# U, S, V = torch.pca_lowrank(test_data, q=PCA_COMPONENT, center=True, niter=100)
U, S, Vh = torch.linalg.svd(test_data)

U_np = U.numpy() # convert to numpy
S_np = S.numpy() # convert to numpy

print("Shape of U: {}".format(U.shape))
print("Shape of S: {}".format(S.shape))
print("Shape of Vh: {}".format(Vh.shape))

np.savetxt("./pca_result_U.txt", U.numpy(), fmt="%10.5f", header="U")
np.savetxt("./pca_result_S.txt", S.numpy(), fmt="%10.5f", header="S")
np.savetxt("./pca_result_V.txt", Vh.numpy(), fmt="%10.5f", header="V")

U1, S1, V1, = torch.pca_lowrank(test_data, q=100, center=True)

U1_np = U1.numpy # convert to numpy
S1_np = S1.numpy # convert to numpy

print("Shape of U1: {}".format(U1.shape))
print("Shape of S1: {}".format(S1.shape))
print("Shape of V1: {}".format(V1.shape))

np.savetxt("./pca_result_U1.txt", U1.numpy(), fmt="%10.5f", header="U1")
np.savetxt("./pca_result_S1.txt", S1.numpy(), fmt="%10.5f", header="S1")
np.savetxt("./pca_result_V1.txt", V1.numpy(), fmt="%10.5f", header="V1")


#if __name__ == "__main__":
#    pca_python()

#%%
test_data = np.loadtxt("./data/image.dat").reshape([TEST_SIZE, IMG_SIZE])[:100]
mean = np.mean(test_data, axis = 0)
cov = np.dot(np.transpose(test_data - mean), test_data - mean) * (1/(100-1))
Lambda, U_ = torch.linalg.eig(torch.from_numpy(cov))
S_ = np.diag(Lambda)
U_test = U_.numpy()

cov_torch = torch.from_numpy(cov)
U_test, S_test, V_test = torch.linalg.svd(cov_torch)
U_test_np = U_test.numpy()
S_test_np = S_test.numpy()

#%%
Lambda_out = Lambda.numpy()[:10]
U_out = U_.numpy()[:,:10]
np.savetxt("./svd_eigen_result_S.txt", Lambda_out, fmt="%10.5f", header="S0")
np.savetxt("./svd_eigen_result_U.txt", U_out, fmt="%10.5f", header="U0")
