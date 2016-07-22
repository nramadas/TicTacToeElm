module Updates.Square exposing (..)

import Models.Token
import Models.Player

update : Msg -> Models.Player.Player -> (Models.Token.Token, Cmd Msg)
update message model =
  case message of
    Models.Player.PlayerO -> (Models.Token.O, Cmd.none)
    Models.Player.PlayerX -> (Models.Token.X, Cmd.none)
