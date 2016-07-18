
template_reference <- function(template, file) {
    template.file <- system.file('rmarkdown', 'templates', template, 'resources', file, package = 'fost')
    if (!file.exists(template.file)) {
        stop('The ', template, ' file (', file, ') does not exist', call. = FALSE)
    }
    return(template.file)
}
