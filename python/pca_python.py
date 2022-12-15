import numpy as np
import torch
from const import *
from sklearn.decomposition import PCA


def pca_sklearn():
    test_data = np.loadtxt("./image.dat", delimiter="\n").reshape([M, N])[0:50, ]
    pca = PCA(n_components=10, svd_solver="full")
    y_ref = pca.fit_transform(test_data)


def pca_python():
    test_data = np.loadtxt("./image_ds.dat", delimiter="\n").reshape([M, N])[0:100, ]
    MEAN = np.mean(test_data, axis=0, keepdims=True)
    A = torch.from_numpy((1 / 4) * np.transpose(test_data - MEAN) @ (test_data - MEAN))

    eigen_val, eigen_vec = np.linalg.eig(A)

    PC = eigen_vec[:, 0:10]

    Y = (test_data - MEAN) @ PC

    np.savetxt("./pca_result_S.txt", eigen_val, fmt="%10.5f", header="S")
    np.savetxt("./pca_result_PC.txt", PC, fmt="%10.5f", header="PC")
    np.savetxt("./pca_result_Y.txt", Y, fmt="%10.5f", header="Y")


if __name__ == "__main__":
    pca_python()
    # pca_sklearn()
