// Import bookly and its key functions
#import "@local/bookly:1.1.3": bookly, part, appendix, front-matter, main-matter

// Apply bookly template
// Note: title-page: none disables bookly's title page (Quarto handles its own)
#show: bookly.with(
$if(title)$
  title: [$title$],
$endif$
$if(by-author)$
  author: "$for(by-author)$$it.name.literal$$sep$, $endfor$",
$endif$
  title-page: none,
)

// Use main-matter for standard book content
#show: main-matter

// Apply chapter-based numbering to all figures
// Bookly may not number Quarto's custom figure kinds (quarto-float-fig, etc.)
#set figure(numbering: figure-numbering)
