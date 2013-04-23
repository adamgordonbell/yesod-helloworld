module Handler.Mirror where

import Import
import Data.Text as T

getMirrorR :: Handler RepHtml
getMirrorR = do
    defaultLayout $ do
        $(widgetFile "mirror")

postMirrorR :: Handler RepHtml
postMirrorR = do
    postedText <- runInputPost $ ireq textField "content"
    defaultLayout $ do
        $(widgetFile "posted")
