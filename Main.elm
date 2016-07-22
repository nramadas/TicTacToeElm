module Main exposing (..)
import Html exposing (div, text, Html)
import Html.App

import Models.Board
import Models.Player
import Views.Board

type alias Model = {
  board : Models.Board.Board,
  player: Models.Player.Player
}

model : Model
model =
  {
    board = Models.Board.initial,
    player = Models.Player.initial
  }

main : Html Models.Player.Player
main =
  Debug.log (toString model)
  Views.Board.view model.board
