# start from teaching-base image
FROM rocker/verse 

### install additional R packages ###
RUN R -e "install.packages('markdown')"

# wrangling
RUN R -e "install.packages('lubridate')"    # working with dates
RUN R -e "install.packages('modelr')"       # wranging models

# plotting/presentation
RUN R -e "install.packages('cowplot')"      # side-by-side plots
RUN R -e "install.packages('GGally')"       # nice pairs plots
RUN R -e "install.packages('ggrepel')"      # repelling point labels
RUN R -e "install.packages('kableExtra')"   # for nice tables
RUN R -e "install.packages('maps')"         # for plotting maps in ggplot
RUN R -e "install.packages('pROC')"         # for ROC curves
RUN R -e "install.packages('scales')"       # for adjusting ggplot scales
RUN R -e "install.packages('latex2exp')"    # LaTeX in plots

