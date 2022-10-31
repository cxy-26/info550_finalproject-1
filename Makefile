report.html: QiYu_ProjectReport.Rmd code/00_render_report.R data_cleaning explore_hist explore_box
	Rscript code/00_render_report.R

data_cleaning:
	Rscript code/01_data.R
	
explore_hist:
	Rscript code/02_explore_histagram.R
	
explore_box:
	Rscript code/03_explore_boxplot.R

.PHONY: clean
clean:
	rm -f output/*.rds output/*.RData output/*.Rdata QiYu_ProjectReport.html