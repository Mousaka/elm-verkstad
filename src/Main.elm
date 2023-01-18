module Main exposing (main)

import Browser
import Html exposing (Html, text)


type alias Model =
    String


init : Model
init =
    ""


type Msg
    = ButtonPressed


update : Msg -> Model -> Model
update msg model =
    case msg of
        ButtonPressed ->
            model


view : Model -> Html Msg
view model =
    text "Hello world!"


main : Program () Model Msg
main =
    Browser.sandbox
        { init = init
        , view = view
        , update = update
        }
