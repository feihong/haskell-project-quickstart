{-# LANGUAGE DeriveGeneric #-}

import Data.Text
import Data.Aeson
import GHC.Generics
import qualified Data.ByteString.Lazy as BL

data Data = Data
  { id    :: Integer
  , name  :: Text
  , powerLevel :: Float
  , luckyNumbers  :: [Int]
  } deriving (Show,Generic)

instance FromJSON Data
instance ToJSON Data

main :: IO ()
main = do
  contents <- BL.readFile "example.json"
  let Just dat = decode contents
  print $ Main.id dat
  print $ name dat
  print $ powerLevel dat
  print $ luckyNumbers dat
