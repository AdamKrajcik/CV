.PHONY: clean

clean-all:
	-rm -f *.{aux,out,bcf,blg,ind,idx,bbl,log,run.xml,pdf,mps}

clean:
	-rm -f *.{aux,out,bcf,blg,ind,idx,bbl,log,run.xml,mps}

cv: cv_en_skaddress.pdf cv_sk_skaddress.pdf

cv_en_skaddress.pdf: photo.jpg cv_en_skaddress.tex
	pdflatex cv_en_skaddress.tex

cv_sk_skaddress.pdf: photo.jpg cv_sk_skaddress.tex
	pdflatex cv_sk_skaddress.tex
