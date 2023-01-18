module Main exposing (main)

import Browser
import Html exposing (Html, button, div, img, input, text)
import Html.Attributes exposing (src, value)
import Html.Events exposing (onClick, onInput)


type alias Model =
    { people : List Person
    , guess : String
    , info : String
    }


type alias Person =
    { name : String, image : String }


init : Model
init =
    { people =
        [ { name = "Algot", image = "https://media.cdn.teamtailor.com/images/s3/teamtailor-production/square_170-v4/image_uploads/eb145e72-f250-42c2-bb63-d71347a12a13/original.jpeg?outputFormat=webp" }
        , { name = "Blossom", image = "https://media.cdn.teamtailor.com/images/s3/teamtailor-production/square_170-v4/image_uploads/10b831a5-ea06-4ab4-8010-bc8bf7008cd3/original.jpeg?outputFormat=webp" }
        , { name = "Lisen", image = "https://media.cdn.teamtailor.com/images/s3/teamtailor-production/square_170-v4/image_uploads/9a7c42c1-d58e-43e1-846f-ee5f187fa348/original.jpeg?outputFormat=webp" }
        , { name = "Nico", image = "https://media.cdn.teamtailor.com/images/s3/teamtailor-production/square_170-v4/image_uploads/cd9949a6-a530-4a8a-aa1c-187033c7a105/original.jpeg?outputFormat=webp" }
        , { name = "Rino", image = "https://media.cdn.teamtailor.com/images/s3/teamtailor-production/square_170-v4/image_uploads/6e1cbc83-5689-4c2a-a9a8-2bd94d655e9c/original.jpeg?outputFormat=webp" }
        ]
    , guess = ""
    , info = ""
    }


type Msg
    = GuessChanged String
    | GuessButtonClicked


update : Msg -> Model -> Model
update msg model =
    case msg of
        GuessChanged newGuess ->
            { model | guess = newGuess }

        GuessButtonClicked ->
            case model.people of
                person :: rest ->
                    if model.guess == person.name then
                        { model
                            | info =
                                "You guessed correctly!"
                            , people = rest
                            , guess = ""
                        }

                    else
                        { model | info = "You guessed wrong!" }

                [] ->
                    model


view : Model -> Html Msg
view model =
    div []
        [ text "GUESS WHO'S IN THE PUCTURE 🖼️🧐"
        , div []
            [ case model.people of
                person :: _ ->
                    img [ src person.image ] []

                [] ->
                    div []
                        [ img [ src "https://media0.giphy.com/media/Y3G5KETi99Kn5j9XTN/giphy.gif" ] []
                        , div [] [ text "You have guessed all of them!" ]
                        ]
            ]
        , div []
            [ input [ onInput GuessChanged, value model.guess ] []
            , button [ onClick GuessButtonClicked ] [ text "Guess" ]
            ]
        , div []
            [ text model.info
            ]
        ]


main : Program () Model Msg
main =
    Browser.sandbox
        { init = init
        , view = view
        , update = update
        }
