import numpy as np
from mnist import MNIST
from const import *
from matplotlib import pyplot as plt


def create_dataset():
    digits, labels = MNIST('./MNIST').load_training()

    with open("image.dat", "w") as image_file:
        for i in range(TEST_SIZE):
            tmp = "\n".join(str(bit) for bit in digits[i]) + "\n"
            image_file.writelines(tmp)
    
    with open("./label.dat", "w") as label_file:
        for i in range(TEST_SIZE):
            label_file.writelines(str(labels[i]) + "\n")

    # print(digits[:20])

    # for digit in digits[0:20]:
    #     digit = np.array(digit).reshape([28, 28])
    #     plt.imshow(digit, cmap=plt.cm.gray_r, interpolation="nearest")
    #     plt.show()


if __name__ == "__main__":
    create_dataset()
