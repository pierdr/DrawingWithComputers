class MercatorMap {

  float topLatitudeRelative;
  float bottomLatitudeRelative;
  float leftLongitudeRadians;
  float rightLongitudeRadians;
  float mapScreenWidth, mapScreenHeight;

  float topLatitude;      // Northern border of this map, in degrees.
  float bottomLatitude;   // Southern border of this map, in degrees.
  float leftLongitude;    // Western border of this map, in degrees.
  float rightLongitude;   // Eastern border of this map, in degrees.


void init(float _mapScreenWidth, float _mapScreenHeight, float _leftLongitude, float _bottomLatitude, float _rightLongitude, float _topLatitude) {

    mapScreenWidth  = _mapScreenWidth;
    mapScreenHeight = _mapScreenHeight;
    topLatitude     = _topLatitude;
    bottomLatitude  = _bottomLatitude;
    leftLongitude   = _leftLongitude;
    rightLongitude  = _rightLongitude;


    topLatitudeRelative     = getScreenYRelative(topLatitude);
    bottomLatitudeRelative  = getScreenYRelative(bottomLatitude);
    leftLongitudeRadians    = radians(leftLongitude);
    rightLongitudeRadians   = radians(rightLongitude);
  }

  //--------------------------------------------------------------
float getScreenYRelative(float latitudeInDegrees) {
    return log(tan(latitudeInDegrees / 360 * PI + PI / 4));
  }

  //--------------------------------------------------------------
float getScreenX(float longitudeInDegrees) {
    float longitudeInRadians = radians(longitudeInDegrees);
    return mapScreenWidth * (longitudeInRadians - leftLongitudeRadians) / (rightLongitudeRadians - leftLongitudeRadians);
  }

  //--------------------------------------------------------------
float getScreenY(float latitudeInDegrees) {
    return mapScreenHeight * (getScreenYRelative(latitudeInDegrees) - topLatitudeRelative) / (bottomLatitudeRelative - topLatitudeRelative);
  }

  //--------------------------------------------------------------
PVector getScreenLocationFromLatLon(float lat, float lon) {
    float latitudeInDegrees  = lat;
    float longitudeInDegrees = lon;
    return new PVector(getScreenX(longitudeInDegrees), getScreenY(latitudeInDegrees));
  }
}
