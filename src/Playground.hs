module Playground (init) where

import Core
import Text qualified
import Array qualified
import Console qualified

init :: IO Unit
init = do
  let stuff = "NeoHaskell is cool"
              |> Text.words
              |> Array.map Text.length
              |> Array.map (\x -> x * x)
              |> Text.tshow

  Console.print stuff
