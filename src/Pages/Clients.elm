module Pages.Clients exposing (page)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Tachyons exposing (classes, tachyons)
import View exposing (View)


page : View msg
page =
    { title = "Projects & Companies"
    , body =
        [ div [ classes [ "mw8 center ph4 athelas" ] ]
            [ h1 [ classes [ "tc f2 f3-ns fw6 mt4" ] ] [ text "Projects and Companies that I have worked with" ]
            , div []
                [ projectSection
                    { title = "The Olfactive"
                    , description = "A creative project focused on developing media platforms and eCommerce experiences for international fragrance brands."
                    , imageUrl = "https://link-to-image.com/olfactive.jpg"
                    , link = "https://theolfactive.com"
                    }
                , projectSection
                    { title = "International Perfume Foundation (IPF)"
                    , description = "Provided consulting for natural perfume certification programs and brand guidance."
                    , imageUrl = "https://link-to-image.com/ipf.jpg"
                    , link = "https://internationalperfumefoundation.com"
                    }

                -- Add more projects or companies here
                ]
            ]
        , div []
            [ ul [ classes [ "helvetica f4-ns" ] ]
                [ li [ classes [ "link dim dark-blue" ] ]
                    [ a [ href "/clients" ] [ text "Clients & Work" ] ]
                , li [ classes [ "link dim dark-blue" ] ]
                    [ a [ href "/contact" ] [ text "Contact" ] ]
                , li [ classes [ "link", "dim", "dark-blue" ] ]
                    [ a [ href "/" ] [ text "Home" ] ]
                ]
            ]
        ]
    }


projectSection : { title : String, description : String, imageUrl : String, link : String } -> Html msg
projectSection { title, description, imageUrl, link } =
    div [ classes [ "mv4" ] ]
        [ a [ href link, target "_blank", classes [ "link dim" ] ]
            [ div [ classes [ "flex flex-column flex-row-ns items-center bg-near-white pa4" ] ]
                [ img [ src imageUrl, alt title, classes [ "w-100 w-40-ns h-auto" ] ] []
                , div [ classes [ "w-100 w-60-ns pl4-ns" ] ]
                    [ h2 [ classes [ "f4 fw6" ] ] [ text title ]
                    , p [ classes [ "f5 lh-copy" ] ] [ text description ]
                    ]
                ]
            ]
        ]
