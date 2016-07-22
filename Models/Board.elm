module Models.Board exposing (..)

import Models.Token

type alias Board = {
  tokens : List Models.Token.Token
}

initial : Board
initial =
  {
    tokens = List.map (\n -> Models.Token.initial) [0..8]
  }
