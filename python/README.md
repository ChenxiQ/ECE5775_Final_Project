# MNIST Dataset Generation

`create_dataset.ipynb`  is used to generate input data from the original MNIST dataset. Generated input file is stored in `image.dat`. This file also includes a part where a downsampled MNIST dataset `image_ds.dat` can be generated. Remember to change the downsampled size correspondingly.

# Golden Reference of PCA

`pca_python.py` and `const.py` performs the golden reference generated by `pytorch` package. Top `k` eigenvalues are stored in file `pca_result_S.txt`. Remember to change the image size and constant values coordingly.

# Recover Compressed Image

`compressed.ipynb` is used to visualize recover compressed image. Remember to copy the transfer matrix `tsf.dat` and compressed result `y.dat`. Noted that recovered image can be calculated by $\mathbf{Y}^T \mathbf{U}'$ where $\mathbf{Y}$ denotes compressed result and $\mathbf{U}'$ denotes orthogonal basis transfer matrix.