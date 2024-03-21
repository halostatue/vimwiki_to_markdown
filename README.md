# Vimwiki-to-markdown converter

This is a bash script which converts [VimWiki](https://vimwiki.github.io) format
to Markdown. It takes in two arguments: a source file and a destination. It
reads the file with `cat`, pipes it to a pipeline of converters, and redirects
the result to the destination file.

Right now, it only has two converters in the pipeline:

- Headings
- Hyperlinks

Maybe that's the only differences you need to worry about. I don't know. It
worked for me.

I make no guarantee that this works. This is untested, and I have no intention
of ever writing tests or maintaining it. If you want to write something better,
feel free to copy this and use it as a starting point.

Simple usage example:

```bash
vw2md.sh example.wiki example.md
```

If you want to convert a whole folder, this is super easy with the use of
[fd](https://github.com/sharkdp/fd). (Once again, no guarantees this works.)

```bash
fd -e wiki ./source_folder -x ./vw2md.sh "{}" "./destination_folder/{//.}.md"
```
