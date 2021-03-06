import Control.Monad
import Test.HUnit
import DMS.Tests (dmsTests)
import ECEFRef.Tests (ecefrefTests)
import IrishRef.Tests (irishrefTests)
import LatLng.Tests (latlngTests)
import MGRSRef.Tests (mgrsrefTests)
import OSRef.Tests (osrefTests)
import UTMRef.Tests (utmrefTests)

main :: IO ()
main = forM_ [ dmsTests
             , ecefrefTests
             , irishrefTests
             , latlngTests
             , mgrsrefTests
             , osrefTests
             , utmrefTests
             ] runTestTT
