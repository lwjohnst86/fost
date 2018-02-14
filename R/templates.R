#' Convert Rmd to a journal-formatted manuscript.
#'
#' @inheritParams rmarkdown::word_document
#'
#' @return Creates a Word document (or whatever is required) that is formatted
#'   according to the requirements of a journal.
#' @seealso See \code{\link[rmarkdown]{word_document}} for a more detailed
#'   explanation of what is going on and how to use these templates.
#' @export
templates <- function() {
    list.dirs(
        system.file('rmarkdown', 'templates', package = 'fost'),
        full.names = FALSE,
        recursive = FALSE
    )
}

#' @rdname templates
#' @export
default_manuscript <- function(fig_width = 7, fig_height = 6, keep_md = TRUE) {
    rmarkdown::word_document(
        fig_width = fig_width,
        fig_height = fig_height,
        keep_md = keep_md,
        fig_caption = TRUE,
        reference_docx = template_reference('default', 'reference.docx')
    )
}


#' @rdname templates
#' @export
diabetologia_manuscript <- function(fig_width = 7, fig_height = 6, keep_md = TRUE) {
    rmarkdown::word_document(
        fig_width = fig_width,
        fig_height = fig_height,
        keep_md = keep_md,
        fig_caption = TRUE,
        reference_docx = template_reference('diabetologia', 'reference.docx'),
        pandoc_args = c('--csl', template_reference('diabetologia', 'diabetologia.csl'))
    )
}

#' @rdname templates
#' @export
diabetes_manuscript <- function(fig_width = 7, fig_height = 6, keep_md = TRUE) {
    rmarkdown::word_document(
        fig_width = fig_width,
        fig_height = fig_height,
        keep_md = keep_md,
        fig_caption = TRUE,
        reference_docx = template_reference('diabetes', 'reference.docx')
    )
}

#' @rdname templates
#' @export
diabetes_care_manuscript <- function(fig_width = 7, fig_height = 6, keep_md = TRUE) {
    rmarkdown::word_document(
        fig_width = fig_width,
        fig_height = fig_height,
        keep_md = keep_md,
        fig_caption = TRUE,
        reference_docx = template_reference('diabetes-care', 'reference.docx')
    )
}

#' @rdname templates
#' @export
diabetes_manuscript <- function(fig_width = 7, fig_height = 6, keep_md = TRUE) {
    rmarkdown::word_document(
        fig_width = fig_width,
        fig_height = fig_height,
        keep_md = keep_md,
        fig_caption = TRUE,
        reference_docx = template_reference('diabetes', 'reference.docx')
    )
}

#' @rdname templates
#' @export
jlr_manuscript <- function(fig_width = 7, fig_height = 6, keep_md = TRUE) {
    rmarkdown::word_document(
        fig_width = fig_width,
        fig_height = fig_height,
        keep_md = keep_md,
        fig_caption = TRUE,
        reference_docx = template_reference('jlr', 'reference.docx')
    )
}
