from mnist import MNIST

SIZE = 200

digits, labels = MNIST('./MNIST').load_training()

with open("./image.dat", "w") as image_file:
    for i in range(SIZE):
        tmp = "\n".join(str(bit) for bit in digits[i]) + "\n"
        image_file.writelines(tmp)

with open("./label.dat", "w") as label_file:
    for i in range(SIZE):
        label_file.writelines(str(labels[i]) + "\n")
