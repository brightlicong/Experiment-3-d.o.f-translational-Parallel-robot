import os
import pygame
import cv2
import numpy as np

file_name = "FZ";
text = "FZ";


folder_path = os.getcwd()+"\\dots-information\\" + text + '\\'
if not os.path.exists(folder_path):
    os.makedirs(folder_path)

img_original = cv2.imread("img\{}.jpg".format(file_name),0)
rows = img_original.shape[0]
colums = img_original.shape[1]



ret, thresh = cv2.threshold(img_original, 100, 255, 0)
contours, hierarchy = cv2.findContours(thresh, cv2.RETR_TREE, cv2.CHAIN_APPROX_SIMPLE)  # 寻找轮廓

with open(folder_path+'0.txt','w+') as file:
    file.write('{}\n'.format(colums))
    file.write('{}\n'.format(rows))
    file.write('{}\n'.format(len(contours) ))

for i in range(len(contours)):

    with open(folder_path+'{}.csv'.format(i+1),'w+') as file:
        for dot in contours[i]:
            file.write('{},'.format(dot[0][0]))

            file.write('{}\n'.format(dot[0][1]))

print ("Finished")