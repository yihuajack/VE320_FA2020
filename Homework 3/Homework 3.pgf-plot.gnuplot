set table "Homework 3.pgf-plot.table"; set format "%.5f"
set format "%.7e";; set samples 25; set dummy x; plot [x=1e-20:6e-20] ,{1/(1+exp((-0.30*1.602176565*10^(-19))/(1.3806488*10^(-23)*300)))};
