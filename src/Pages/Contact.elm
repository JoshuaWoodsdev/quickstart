module Pages.Contact exposing (page)

import Html exposing (..)
import Html.Attributes exposing (..)
import Tachyons exposing (classes, tachyons)
import Tachyons.Classes exposing (..)
import View exposing (View)


page : View msg
page =
    { title = "Pages.Contact"
    , body =
        [ div []
            [ text "joshua.lamar.woods@gmail.com"
            , ul [ classes [ "helvetica f4-ns" ] ]
                [ li [ classes [ "link", "dim", "dark-blue" ] ]
                    [ a [ href "/clients" ] [ text "Clients & Work" ] ]
                , li [ classes [ "link", "dim", "dark-blue" ] ]
                    [ a [ href "/contact" ] [ text "Contact" ] ]
                , li [ classes [ "link", "dim", "dark-blue" ] ]
                    [ a [ href "/" ] [ text "Home" ] ]
                ]
            ]
        ]
    }
