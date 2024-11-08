module Pages.Content exposing (page)

import Html exposing (Html)
import View exposing (View)


page : View msg
page =
    { title = "Pages.Content"
    , body = [ Html.text "/content" ]
    }
