module Main exposing (main)

import Browser
import Element exposing (Element)


initialModel : String
initialModel =
    "Hello world!"


type Msg
    = ButtonPressed


update : Msg -> String -> String
update msg model =
    case msg of
        ButtonPressed ->
            model


view : String -> Element Msg
view model =
    Element.column []
        [ Element.text model
        ]


main : Program () String Msg
main =
    Browser.sandbox
        { init = initialModel
        , view = view >> Element.layout []
        , update = update
        }
