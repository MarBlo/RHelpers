# plotTheme_mb.R

# --- --- --- --- --- --- --- --- -- --- --- --- --- 
# --- im gleichen Verzeichnis sollte drsimonj.R
# --- liegen. Das lädt die Farben
# --- --- --- --- --- --- --- --- -- --- --- --- --- 
source(here::here('helper', 'drsimonj_color.R'))

# --- --- --- --- --- --- --- --- -- --- --- --- --- 
# --- Plot Theme ----
# --- --- --- --- --- --- --- --- -- --- --- --- --- 

theme_mb <- function () { 
  theme_bw() %+replace%
    theme(
      legend.position = 'none',
      #panel.border = element_blank(),
      #legend.title = element_blank(),
      axis.text.x = element_text(size = 10, margin = margin(t=5)),
      axis.text.y = element_text(size = 10, margin = margin(r = 5)),
      axis.title.y = element_text(size = 12, 
                                  angle = 90,
                                  margin = margin(r = 5)),
      axis.title.x = element_text(size = 12, margin = margin(t=5)),
      panel.background = element_rect(fill = "white", colour = "white",
                                      size = 0, linetype = "solid"),
      panel.grid.major.y = element_line(size = 0.5, linetype = 'solid',
                                        colour = "gray"),
      strip.text.x = element_text(size = 12, color = "white", face = 'bold'),
      strip.text.y = element_text(size = 12, color = "white", face = 'bold'),
      strip.background = element_rect(color = 'white', fill = 'black')
    )
}
