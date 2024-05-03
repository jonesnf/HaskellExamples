-- Start of program

head_wrap content = "<head>" <> content <> "</head>"
title_wrap content = "<title>" <> content <> "</title>"
html_wrap content = "<html>" <> content <> "</html>"
body_wrap content = "<body>" <> content <> "</body>"

makeHtml title content = html_wrap(head_wrap(title_wrap title) <> body_wrap content)

myhtml = makeHtml "My Page Title" "My page content"

main = putStrLn myhtml

