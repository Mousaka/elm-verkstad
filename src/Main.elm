module Main exposing (main)

import Browser
import Html exposing (Html)


init : String
init =
    ""


type Msg
    = ButtonPressed


update : Msg -> String -> String
update msg model =
    case msg of
        ButtonPressed ->
            model


view : String -> Html Msg
view model =
    Html.text "Hello world!"


main : Program () String Msg
main =
    Browser.sandbox
        { init = init
        , view = view
        , update = update
        }
