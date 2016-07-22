module Views.Square exposing (..)

import Html
import Html.Attributes exposing (style)

import Models.Token
import Models.Player

squareStyle : Html.Attribute Models.Player.Player
squareStyle =
  style [
    ("box-sizing", "border-box"),
    ("width", "200px"),
    ("height", "200px"),
    ("display", "inline-block"),
    ("vertical-align", "middle"),
    ("border", "1px solid black"),
    ("cursor", "pointer")
  ]

view : Models.Token.Token -> Html.Html Models.Player.Player
view token =
  Html.div [
    squareStyle
  ] [
    case token of
      Models.Token.X -> Html.text "X"
      Models.Token.O -> Html.text "O"
      Models.Token.None -> Html.text ""
  ]
