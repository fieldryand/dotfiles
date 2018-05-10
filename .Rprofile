local({r <- getOption("repos"); r["CRAN"] <- "http://cran.rstudio.com"; options(repos = r)})

if(interactive()){
       # Suggested libraries:
       library(colorout)

       # Use text based web browser to navigate through R docs after help.start()
       # if you cannot run a graphical web browser (e.g. when you are in the
       # Linux console):
        if(Sys.getenv("DISPLAY") == ""){
            if(Sys.getenv("TMUX") != "")
                options(browser = function(u) system(paste0("tmux new-window 'w3m ", u, "'")))
            else if(Sys.getenv("NVIMR_TMPDIR") != "")
                options(browser = function(u) .C("nvimcom_msg_to_nvim",
                                                 paste0('StartTxtBrowser("w3m", "', u, '")')))
        }
}

if((interactive() && Sys.getenv("RSTUDIO") == "") ||
   (interactive() == FALSE && isatty(stdout()))){
    options(colorout.anyterm = TRUE)
    library(colorout)
}

options("width" = 200)
