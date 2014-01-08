//
//  LSUtils.h
//  LockScreen
//
//  Created by Brian Turner on 1/7/14.
//  Copyright (c) 2014 SquareCodeCamp. All rights reserved.
//

#ifndef LockScreen_LSUtils_h
#define LockScreen_LSUtils_h

typedef enum {
    LSDirectionUndefined = -1,
    LSDirectionUp = 0,
    LSDirectionDown,
}LSDirection;

LSDirection directionBetweenPoints(CGPoint pointA, CGPoint pointB) {
    return pointB.y > pointA.y;
}

CGFloat angleBetweenPoints(CGPoint pointA, CGPoint pointB) {
    CGFloat deltaY = pointB.y - pointA.y;
    CGFloat deltaX = pointB.x - pointA.x;
    
    return atan(deltaY / deltaX) * (180 / M_PI);
}

CGFloat distanceBetweenPoints(CGPoint pointA, CGPoint pointB) {
    CGFloat xDist = (pointB.x - pointA.x);
    CGFloat yDist = (pointB.y - pointA.y);
    CGFloat distance = sqrt((xDist * xDist) + (yDist * yDist));
    return distance;
}

CGFloat angleAmongPoints(CGPoint pointA, CGPoint pointB, CGPoint pointC)
{
    CGFloat c = distanceBetweenPoints(pointA, pointB);
    CGFloat a = distanceBetweenPoints(pointB, pointC);
    CGFloat b = distanceBetweenPoints(pointA, pointC);
    return (180 / M_PI) * acos(((a * a) + (c * c) - (b * b))/((2.0 * (a) * (c))));
}


#endif

