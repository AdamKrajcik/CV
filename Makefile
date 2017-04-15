.PHONY: clean

clean:
	-rm *.{aux,out,bcf,blg,ind,idx,bbl,log,run.xml,pdf,mps}

cv: cv_en_skaddress.pdf  cv_en_czaddress.pdf  cv_sk_czaddress.pdf  cv_sk_skaddress.pdf
	
	
cv_en_czaddress.pdf: photo.jpg cv_en_czaddress.tex
	pdflatex cv_en_czaddress.tex

cv_en_skaddress.pdf: photo.jpg cv_en_skaddress.tex
	pdflatex cv_en_skaddress.tex
	
cv_sk_czaddress.pdf: photo.jpg cv_sk_czaddress.tex
	pdflatex cv_sk_czaddress.tex
	
cv_sk_skaddress.pdf: photo.jpg cv_sk_skaddress.tex
	pdflatex cv_sk_skaddress.tex