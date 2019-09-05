/**
 * @Author: subowen
 * @Date:   2019-06-03T10:35:51+08:00
 * @Filename: test.cpp
 * @Last modified by:   subowen
 * @Last modified time: 2019-06-06T16:31:38+08:00
 */
#include "iostream"

#include "opencv2/opencv.hpp"
#include "opencv2/imgcodecs.hpp"

using namespace cv;

int main()
{
    char srcImagePath[256] = "";
    char dstImagePath[256] = "";

    for(int nIndex = 0; nIndex < 1; nIndex++)
    {
        sprintf(srcImagePath, "/data/vendor/camera/Distortion/srcImg/mt_%03d.jpg", 7);
        sprintf(dstImagePath, "/data/vendor/camera/Distortion/dstImg/mt_%03d_dst.jpg", 7);
        Mat srcImage = imread(srcImagePath);

        if(srcImage.empty())
        {
            std::cout<< "image is not exist" << std::endl;
            return 0;
        }

        Mat dstImage = Mat::zeros(srcImage.rows, srcImage.cols, CV_8UC3);
        imwrite(dstImagePath, dstImage);
    }

    std::cout<< "Run OpenCV Successful" << std::endl;

    return 0;
}
