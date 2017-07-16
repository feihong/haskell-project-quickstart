{-# LANGUAGE OverloadedStrings #-}

import Control.Lens
import Data.Aeson.Lens
import Network.Wreq


main :: IO ()
main = do
  contents <- readFile "config.json"
  let Just accessToken = contents ^? key "accessToken" . _String
  print accessToken

  let opts = defaults & param "access_token" .~ [accessToken]
  res <- getWith opts "https://graph.facebook.com/v2.9/siskelfilmcenter/events"
  print $ res ^. responseBody
