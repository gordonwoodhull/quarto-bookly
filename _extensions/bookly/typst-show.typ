// Import bookly and its key functions
#import "@local/bookly:1.1.3": bookly, part, appendix, front-matter, main-matter

// Apply bookly template
// Note: title-page: none disables bookly's title page (Quarto handles its own)
#show: bookly.with(
  title: "Book Title",
  author: "Author",
  title-page: none,
)

// Use main-matter for standard book content
#show: main-matter
