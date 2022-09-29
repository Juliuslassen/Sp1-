// CIRCLE/RECTANGLE
boolean spillerBall(float posX, float posY, float diameter, float posXS, float posYS, float tykkelse, float rectHeight) {

  // temporary variables to set edges for testing
  float testX = posX;
  float testY = posY;

  // which edge is closest?
  if (posX < posXS-(tykkelse/2))         testX = posXS-(tykkelse/2);      // compare left edge
  else if (posX > posXS+(tykkelse/2)) testX = posXS+(tykkelse/2);   // right edge
  if (posY < posYS-(rectHeight/2))         testY = posYS-(rectHeight/2);      // top edge
  else if (posX > posYS+(rectHeight/2)) testY = posYS+(rectHeight/2);   // bottom edge

  // get distance from closest edges
  float distX = posX-testX;
  float distY = posY-testY;
  float distance = sqrt( (distX*distX) + (distY*distY) );

  // if the distance is less than the radius, collision!
  if (distance <= diameter/2) {
    return true;
  }
  return false;
}
