# Image Dataset Compressor for ML Using PCA

⚠️ Warning ⚠️ Remember to download the source code from `master` branch. Due to the size limitation for source code upload on CMS, the MNIST dataset and modified Xillybus `zedboard_project_f.tgz` cannot be uploaded. Rembember to add file `zedboard_project_f.tgz` to root directory of the project if using our CMS submission.

This directory includes 3 implementation includes PCA image compression.

## `./codesign_svd2x2`

> This implementation runs 2x2 block svd on FPGA and other parts on host. It is suitable for large dataset with more than 50 features.

Before running this version, change the size in each folder under `./codesign_svd2x2` in `pca.h` to your dataset. $k$ is the number of feature after compression, `img_num` is the number of images in your dataset, and vec_size is the number of pixel in your picture. Images should be stored in data, and you should change the directory in `pca_test.cpp -> read_test_images()`. The image file should be in format `img_num` x `vec_size`.

Then you can use "make bitstream'' in `./ecelinux` to generate a bitstream. Load the bitstream and `codesign_svd2x2` to the zedboard. On the zedboard, `cd` to `./codesign_svd2x2/zedboard` and run `make sw` to compile the software version. `cd` to `./codesign_svd2x2/zedboardhost` and run `make fpga` to compile the hardware version. The compressed image, transfer matrix, and mean is in `./data/result.dat`, `./data/tsf.dat`, and `./data/mean.dat`.

In addition, you can run a dummy version where the fpga simply reads and returns to measure io latency. To run this test, simply replace `ecelinux` folder with `ecelinux_dummy` and replace `zedboardhost` with `zedboardhost_dummy`.

## `./codesign_svd2x2_matmul`

> This implementation runs 2x2 block svd and matrix multiplication on FPGA and other parts on host. It is suitable for large dataset with more than 50 features. Note that the io overhead is larger on this version.

Before running this version, change the size in each folder under `./codesign_svd2x2_matmul` in `pca.h` to your dataset. `k` is the number of feature after compression, `img_num` is the number of images in your dataset, and `vec_size` is the number of pixel in your picture. Images should be stored in data, and you should change the directory in `pca_test.cpp -> read_test_images()`. The image file should be in format `img_num` x `vec_size`.

Then you can use `make bitstream` in `./ecelinux` to generate a bitstream. Load the bitstream and `codesign_svd2x2` to the zedboard. On the `zedboard`, `cd` to `./codesign_svd2x2_matmul/zedboard` and run `make sw` to compile the software version. `cd` to `./codesign_svd2x2_matmul/zedboardhost` and run `make fpga` to compile the hardware version. The compressed image, transfer matrix, and mean is in `./data/result.dat`, `./data/tsf.dat`, and `./data/mean.dat`.

## `./pure_fpga`

> This implementation runs PCA completely on FPGA. This version has excessive memory usage on zedboard for large dataset, so we only offer cosimulation instruction.

Before running this version, change the size in each folder under `./pure_fpga` in `pca.h` to your dataset. `k` is the number of feature after compression, `img_num` is the number of images in your dataset, and `vec_size` is the number of pixel in your picture. Images should be stored in data, and you should change the directory in `pca_test.cpp -> read_test_images()`. The image file should be in format `img_num` x `vec_size`.

You can `cd` to `ecelinux` and use command `make vivado` to start synthesis and cosim.