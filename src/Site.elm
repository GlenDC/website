module Site exposing (config)

import DataSource
import Head
import Pages.Manifest as Manifest
import Route
import SiteConfig exposing (SiteConfig)


type alias Data =
    ()


config : SiteConfig Data
config =
    { data = data
    , canonicalUrl = "https://plabayo.tech"
    , manifest = manifest
    , head = head
    }


data : DataSource.DataSource Data
data =
    DataSource.succeed ()


head : Data -> List Head.Tag
head static =
    [ Head.sitemapLink "/sitemap.xml"
    ]


manifest : Data -> Manifest.Config
manifest static =
    Manifest.init
        { name = "Plabayo Free and Open Source Software"
        , description = "Plabayo is an indie studio creating Free and Open Source Software"
        , startUrl = Route.Index |> Route.toPath
        , icons = []
        }
        |> Manifest.withShortName "Plabayo"

-- TODO: support ful manifest with color and all

-- TODO: support icon
