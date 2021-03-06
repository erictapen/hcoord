module Equals where

import Datum
import ECEFRef
import IrishRef
import LatLng
import UTMRef

import Data.AEq

instance Eq ECEFRef where
    (ECEFRef x1 y1 z1 datum1) == (ECEFRef x2 y2 z2 datum2) =
        (x1 ~== x2) && (y1 ~== y2) && (z1 ~== z2) && (datum1 == datum2)

instance Eq IrishRef where
    (IrishRef easting1 northing1 datum1) == (IrishRef easting2 northing2 datum2) =
        (easting1 ~== easting2) && (northing1 ~== northing2) && (datum1 == datum2)

instance Eq LatLng where
    (LatLng latitude1 longitude1 height1 datum1) == (LatLng latitude2 longitude2 height2 datum2) =
        (latitude1 ~== latitude2) && (longitude1 ~== longitude2) && (height1 ~== height2) && (datum1 == datum2)

instance Eq UTMRef where
    (UTMRef easting1 northing1 latZone1 lngZone1 datum1) == (UTMRef easting2 northing2 latZone2 lngZone2 datum2) =
        (easting1 ~== easting2) && (northing1 ~== northing2) && (latZone1 == latZone2) && (lngZone1 == lngZone2) && (datum1 == datum2)
