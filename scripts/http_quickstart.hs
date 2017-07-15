{-
Source: https://stackoverflow.com/questions/37571939/data-bytestring-lazy-internal-bytestring-to-string

-}
{-# LANGUAGE OverloadedStrings #-}

import Data.Text
import Data.Text.Encoding
import Control.Lens
import Network.Wreq

main :: IO ()
main = do
  res <- get "http://ipecho.net/plain"
  print $ res ^. responseStatus . statusCode
  print $ res ^. responseHeader "Content-Type"
  print $ decodeUtf8 $ res ^. responseBody
