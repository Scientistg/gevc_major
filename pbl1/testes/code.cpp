#include <iostream>
#include <opencv2/highgui.hpp>
#include <opencv2/imgcodecs.hpp>
#include <opencv2/imgproc.hpp>


using namespace std; 
using namespace cv; 



int main(int argc, char *argv[])
{	/*
	char *VideoName = argv[1];
	VideoCapture cap(0);

	if(!cap.isOpened()){
		cout << "Erro ao abrir o video" << endl;
		return -1;
	}*/

	Mat src;
	char * imageName = argv[1];
	src = imread(imageName, IMREAD_COLOR);

	namedWindow("Control", WINDOW_NORMAL);

	int iLowH = 37;
	int iHighH = 132;

	int iLowS = 109;
	int iHighS = 255;

	int iLowV = 45;
	int iHighV = 255;

	createTrackbar("LowH:", "Control", &iLowH,255);
	createTrackbar("HighH:", "Control", &iHighH,255);
	createTrackbar("LowS:", "Control", &iLowS,255);
	createTrackbar("HighS:", "Control", &iHighS,255);
	createTrackbar("LowV:", "Control", &iLowV,255);
	createTrackbar("HighV:", "Control", &iHighV,255);

	int iLastX = -1;
	int iLastY = -1;
	/*
	Mat imgTmp;
	cap.read(imgTmp);*/

	while(true){
		Mat imgOriginal;
		/*
		bool bSucess = cap.read(imgOriginal);
		if(!bSucess){
			cout << "Impossivel ler o video" << endl;
		}
		*/
		Mat imgHSV;
		cvtColor(src, imgHSV, COLOR_BGR2HSV);

		Mat imgThresholded;
		inRange(imgHSV, Scalar(iLowH,iLowS,iLowV),Scalar(iHighH,iHighS,iHighV),imgThresholded);

		erode(imgThresholded, imgThresholded, getStructuringElement(MORPH_ELLIPSE, Size(5,5)));
		dilate(imgThresholded, imgThresholded, getStructuringElement(MORPH_ELLIPSE, Size(5,5)));
		
		namedWindow("Thresholded Image", WINDOW_NORMAL);
		namedWindow("Original", WINDOW_NORMAL);
		imshow("Thresholded Image", imgThresholded);
		imshow("Original", src);
		if(waitKey(30) == 27){
			cout << "Tecla ESC pressionada" << endl;
			break;
		}
		//waitKey(0);
	}





	return 0;
}