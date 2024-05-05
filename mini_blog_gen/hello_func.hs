-- Start of program
-- Defining functions
el :: String -> String -> String
el tag content = "<" <> tag <> ">" <> content <> "</" <> tag <> ">"

head_wrap :: String -> String
head_wrap = el "head"

title_wrap :: String -> String 
title_wrap = el "title"

html_wrap :: String -> String
html_wrap = el "html" 

body_wrap :: String -> String
body_wrap = el "body"

p_wrap :: String -> String
p_wrap = el "p"

h1_wrap :: String -> String
h1_wrap = el "h1"

makeHtml :: String -> String -> String
makeHtml title content = html_wrap(head_wrap(title_wrap title) <> body_wrap content)

myhtml :: String
myhtml = makeHtml "Hello Title" (h1_wrap("Hello, World!") <> 
                                p_wrap("Let's frickin' learn Haskell"))

main = putStrLn myhtml

