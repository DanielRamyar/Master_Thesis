from PIL import Image
from matplotlib import image
from matplotlib import pyplot
from numpy import asarray, savetxt, loadtxt, uint8

image = Image.open('10.png').convert('L')
image.save("greypog.png")
print(image.size)

data = asarray(image)
flatdata = data.reshape([1, 690])
print(flatdata.size)
savetxt('test.txt', flatdata , fmt='%3d', delimiter=', ')
data = data - 100
new_im = Image.fromarray(data)
new_im.save("numpy_altered_sample2.png")
print(data.shape)






newData = loadtxt('newData.txt').reshape([30, 23  ])
newData = newData.astype(uint8)
new_im = Image.fromarray(newData)
new_im.save("newData.png")
print(newData)