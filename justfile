serve:
    hugo serve --buildDrafts

build:
    hugo --minify

prod:
    hugo --minify
    microserver -p 1111 public

tree:
    tree -I "public|themes" --dirsfirst
