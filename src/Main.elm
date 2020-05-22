module Main exposing (main)

import Browser exposing (sandbox)
import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)

type Msg
  = Increment
  | Decrement
  | Reset


type alias Model = Int

view : Model -> Html Msg
view model =
  div [] [
    div [] [ text (String.fromInt model) ],
    div [] [
      button [ onClick Increment ] [ text "+" ],
      button [ onClick Decrement ] [ text "-" ],
      button [ onClick Reset ] [ text "Reset" ]
    ]
  ]

update : Msg -> Model -> Model
update msg model =
  case msg of
    Increment ->
      model + 1

    Decrement ->
      model - 1

    Reset ->
      0


main : Program () Model Msg
main =
  sandbox {
    init = 0,
    view = view,
    update = update
  }
