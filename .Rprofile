if (interactive()) {
# Suggested libraries:
    library(colorout)
    library(setwidth)

# Use text based web browser to navigate through R docs after help.start()
# if you cannot run a graphical web browser (e.g. when you are in the
# Linux console):
    if (Sys.getenv("DISPLAY") == "") {
	if (Sys.getenv("TMUX") != "")
	    options(browser = function(u) system(paste0("tmux new-window 'w3m ", u, "'")))
	else if (Sys.getenv("NVIMR_TMPDIR") != "")
	    options(browser = function(u) .C("nvimcom_msg_to_nvim",
			paste0('StartTxtBrowser("w3m", "', u, '")')))
    }
}


options(colorout.anyterm = TRUE)
colorout::setOutputColors256(normal = 229, negnum = 229, zero = 229,
	number = 229, date = 229, string = 229,
	const = 229, false = 229, true = 229,
	infinite = 229, stderror = 208,
	warn = c(1, 0, 1), error = c(1, 15),
	verbose = FALSE, zero.limit = NA)
