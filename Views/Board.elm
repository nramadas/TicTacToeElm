module Views.Board exposing (..)

import Html
import Html.Attributes exposing (style)

import Models.Board
import Models.Player
import Models.Token
import Views.Square

boardStyle : Html.Attribute Models.Player.Player
boardStyle =
  style [
    ("margin", "100px auto"),
    ("width", "600px"),
    ("height", "600px"),
    ("border", "1px solid black")
  ]

view : Models.Board.Board -> Html.Html Models.Player.Player
view board =
  Html.div [ boardStyle ] (List.map Views.Square.view board.tokens)
