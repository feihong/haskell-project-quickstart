{-
Source: https://stackoverflow.com/questions/37571939/data-bytestring-lazy-internal-bytestring-to-string

-}
{-# LANGUAGE OverloadedStrings #-}

import Data.Text
import Data.Text.Encoding
import qualified Data.ByteString.Lazy as BL
import Control.Lens
import Network.Wreq


main :: IO ()
main = do
  res <- get "http://ipecho.net/plain"
  putStr "Status: "
  print $ res ^. responseStatus . statusCode
  putStr "Content type: "
  print $ res ^. responseHeader "Content-Type"
  -- Convert response (raw lazy ByteString) to a String.
  let body = unpack $ decodeUtf8 $ BL.toStrict $ res ^. responseBody
  putStrLn $ "Your IP address is " ++ body
