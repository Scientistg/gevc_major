#include <iostream>
#include <opencv2/highgui.hpp>
#include <opencv2/imgcodecs.hpp>
#include <opencv2/imgproc.hpp>


using namespace std; 
using namespace cv; 

Mat src, imgThresholded, dst, src_gray;

void colorChanges(Mat &in, Mat &out);

int main(int argc, char *argv[])
{

	vector<Vec3f> circlesL;
	vector<Vec3f> circles;


	char * imageName = argv[1];
	src = imread(imageName, IMREAD_COLOR);

	int iLastX = -1;
	int iLastY = -1;

	//while(true){
	colorChanges(src,imgThresholded);
	GaussianBlur(imgThresholded, dst, Size(9, 9), 2, 2 );
	HoughCircles(dst, circlesL, CV_HOUGH_GRADIENT, 1, imgThresholded.rows/8, 40, 20, 0, 0 );

	GaussianBlur(src, src_gray, Size(9, 9), 2, 2 );
	cvtColor(src_gray, src_gray, COLOR_BGR2GRAY);
	HoughCircles(src_gray, circles, CV_HOUGH_GRADIENT, 1, imgThresholded.rows/8, 50, 40, 0, 0 );

	//HoughCircles(dst, circles, CV_HOUGH_GRADIENT, 1, imgThresholded.rows/8, 40, 20, 0, 0 );




	for( size_t i = 0; i < circles.size(); i++ )
	{
   		Point center(cvRound(circles[i][0]), cvRound(circles[i][1]));
   		int radius = cvRound(circles[i][2]);
   		// circle center
   		circle( src, center, 3, Scalar(0,255,0), -1, 8, 0 );
   		// circle outline
   		circle( src, center, radius, Scalar(0,0,255), 3, 8, 0 );
 	}

	for( size_t i = 0; i < circlesL.size(); i++ )
	{
   		Point center(cvRound(circlesL[i][0]), cvRound(circlesL[i][1]));
   		int radius = cvRound(circlesL[i][2]);
   		// circle center
   		circle( src, center, 3, Scalar(0,255,0), -1, 8, 0 );
   		// circle outline
   		circle( src, center, radius, Scalar(255,0,0), 3, 8, 0 );
 	}
	/*

	int x_pos[2];
	int y_pos[2];
	for( size_t i = 0; i < circles.size(); i++ )
	{	
		if(cvRound(circles[i][0])x_pos[0] < )
   		cvRound(circles[i][0])
		cvRound(circles[i][1])

   		
 	}

	*/



	cout << "Circulos encontrados totais: " << circles.size() << endl;
	cout << "Circulos encontrados acesos: " << circlesL.size() << endl;

	namedWindow("Thresholded Image", WINDOW_NORMAL);
	namedWindow("Original", WINDOW_NORMAL);
	namedWindow("Gauss", WINDOW_NORMAL);
	imshow("Thresholded Image", imgThresholded);
	imshow("Original", src);
	imshow("Gauss", dst);
	if(waitKey(0) == 27){
		cout << "Tecla ESC pressionada" << endl;
		//break;
	}




	//}



	return 0;
}


void colorChanges(Mat &in, Mat &out){

    int iLowH = 0;
	int iHighH = 255;

	int iLowS = 0;
	int iHighS = 87;

	int iLowV = 204;
	int iHighV = 255;

	

	
    cvtColor(in, out, COLOR_BGR2HSV); //Converte a matriz in em RGB para a matriz out em HSV
    inRange(out, Scalar(iLowH, iLowS, iLowV), Scalar(iHighH, iHighS, iHighV), out);     //Aplica os parametros de maximo e minimo a matriz out

    erode(out, out, getStructuringElement(MORPH_ELLIPSE, Size(5, 5)));          //Filtros que diminuem o ruido "afinando os contorno"(erode) e que "engrossam os contornos"(dilate)
    dilate(out, out, getStructuringElement(MORPH_ELLIPSE, Size(5, 5)));
    dilate(out, out, getStructuringElement(MORPH_ELLIPSE, Size(5, 5)));
    erode(out, out, getStructuringElement(MORPH_ELLIPSE, Size(5, 5)));
	
}