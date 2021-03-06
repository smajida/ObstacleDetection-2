/* 
 * File:   TLine.cpp
 * Author: aleksey
 * 
 * Created on April 10, 2015, 7:29 PM
 */

#include "TLine.h"
#include <cmath>
#include "opencv2/highgui/highgui.hpp"

const float PI = 3.141592653589;

using namespace cv;

TLine::TLine() {
}

TLine::TLine(int x1, int y1, int x2, int y2) {
    TLine::pt1.x = x1;
    TLine::pt1.y = y1;
    TLine::pt2.x = x2;
    TLine::pt2.y = y2;
    k = this->slope();
    b = this->pt1.y - k * this->pt1.x;    
}

TLine::TLine(Point2i pt1, Point2i pt2) {
    TLine::pt1 = pt1, TLine::pt2 = pt2;
    k = this->slope();
    b = this->pt1.y - k * this->pt1.x;    
}

int TLine::y(int x) {
    return round(k * x + b);
}

int TLine::x(int y) {
    return round((y - b) / k);
}

void TLine::show(Mat *img) {        
    line(*img, pt1, pt2, CV_RGB(255, 0, 0), 3);
}

double TLine::getLength() {        
    return sqrt(pow(pt1.x-pt2.x,2)+pow(pt1.y-pt2.y,2));
}

double TLine::getAngle() {        
    return atan2((pt1.y-pt2.y),(pt1.x-pt2.x))*180/PI;
}

bool TLine::angleCmp(TLine* a, TLine* b) {
    return a->getAngle() < b->getAngle();
}

void TLine::extend(int from_x, int to_x) {    
    this->pt1.x = from_x;
    this->pt2.x = to_x;
    this->pt1.y = this->pt1.x * k + b;
    this->pt2.y = this->pt2.x * k + b;
}

double TLine::slope() {    
    return (double)(pt1.y - pt2.y)/(pt1.x - pt2.x);
}

TLine::~TLine() {
}

