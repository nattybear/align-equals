{-# LANGUAGE OverloadedStrings #-}

module Main where

import           Data.Text    (Text)
import qualified Data.Text    as T
import qualified Data.Text.IO as T
import           Safe

prefixLength :: Text -> Int
prefixLength line = T.length prefix
  where
    (prefix, _) = T.breakOn "=" line

adjustLine :: Int -> Text -> Text
adjustLine desiredPrefixLength oldLine = newLine
  where
    (prefix, suffix) = T.breakOn "=" oldLine
    actualPrefixLength = T.length prefix
    additionalSpaces = desiredPrefixLength - actualPrefixLength
    spaces = T.replicate additionalSpaces " "
    newLine = T.concat [prefix, spaces, suffix]

adjustText :: Text -> Text
adjustText oldText = newText
  where
    oldLines = T.lines oldText
    prefixLengths = map prefixLength oldLines
    newLines =
      case maximumMay prefixLengths of
        Nothing ->
          []
        Just desiredPrefixLength ->
          map (adjustLine desiredPrefixLength) oldLines
    newText = T.unlines newLines

main :: IO ()
main = T.interact adjustText
