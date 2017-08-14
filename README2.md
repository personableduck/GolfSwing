Machine Learning Nanodgree capstone project

Data requirement:

Ananconda3
caffe
cv2 
numpy 
scipy
PIL.Image
math
configobj
util
copy
matplotlib
pylab 
kears


caffe:

# CPU mode or GPU mode
use_gpu = 1

# GPU device number (doesn't matter for CPU mode)
GPUdeviceNumber = 0

caffemodel = '../../model/_trained_COCO/pose_iter_440000.caffemodel'
deployFile = '../../model/_trained_COCO/pose_deploy.prototxt'
description = 'COCO Pose56 Two-level Linevec'
boxsize = 368
padValue = 128
np = 12
stride = 8
part_str = [nose, neck, Rsho, Relb, Rwri, Lsho, Lelb, Lwri, Rhip, Rkne, Rank, Lhip, Lkne, Lank, Leye, Reye, Lear, Rear, pt19]

Training data:

wget -nc --directory-prefix=../model/_trained_COCO/ 		http://posefs1.perception.cs.cmu.edu/Users/ZheCao/pose_iter_440000.caffemodel
wget -nc --directory-prefix=../model/_trained_MPI/ 		http://posefs1.perception.cs.cmu.edu/Users/ZheCao/pose_iter_146000.caffemodel

Trainig data for golf swing image download from gihub:
https://github.com/personableduck/GolfSwing/tree/master/golfimage

Data process:

pose estimation- demo file located in:

\capstoneProject\testing\python\poseEstimation.ipynb

MLP model for data distribution analysis located in:

\capstoneProject\testing\MLPswing.ipynb

