module Pages.Software exposing (page)

import Html exposing (Html)
import View exposing (View)


page : View msg
page =
    { title = "Pages.Software"
    , body = [ Html.text "/software" ]
    }
