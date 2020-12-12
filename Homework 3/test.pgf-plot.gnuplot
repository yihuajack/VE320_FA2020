set table "test.pgf-plot.table"; set format "%.5f"
set format "%.7e";; set samples 25; set dummy x; plot [x=0:10e6] 6.67e-11*1*7.36e22/(1.74e6+ x)**2;
