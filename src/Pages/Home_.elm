module Pages.Home_ exposing (page)

import Html exposing (..)
import Html.Attributes exposing (..)
import Tachyons exposing (classes, tachyons)
import Tachyons.Classes exposing (..)
import View exposing (View)


page : View msg
page =
    { title = "Homepage"
    , body =
        [ div [ classes [ "bg-blue helvetica mw9 left ph4-ns pa5 pt5-ns ph1-l white f2 f1-ns " ] ]
            [ text "I'm Joshua", p [ classes [ "f5 f4-ns font-bold " ] ] [ text "Web Developer, Niche Consultant & Creative Director." ] ]
        , div []
            [ p [ classes [ "f6 f3-ns lh-copy measure left" ] ]
                [ text "I provide consulting expertise in retail strategy, web development, and brand growth, helping businesses navigate challenges and optimize their market positioning. In addition to my consulting work, I am the owner, creative director, and developer of The Olfactive, a platform dedicated to the cosmetics industry, notably fragrance. Through this platform, we interview brand owners, retailers, and other professionals in the industry. I am also developing a job discovery concept. My focus is on human-centered problems and creating novel creative solutions." ]
            ]
        , div []
            [ ul [ classes [ "helvetica f4-ns" ] ]
                [ li [ classes [ "link dim dark-blue" ] ]
                    [ a [ href "/clients" ] [ text "Clients & Work" ] ]
                , li [ classes [ "link dim dark-blue" ] ]
                    [ a [ href "/contact" ] [ text "Contact" ] ]
                ]
            ]
        ]
    }
