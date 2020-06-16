# Makefile
# Makefile for package checking building, installing, uninstalling, etc.

PKG=omopr
VERSION=0.2

DEFAULT:
	cd www ; make
	make check
	make install

check:
	make build
	R CMD check $(PKG)_$(VERSION).tar.gz

check-cran:
	make build
	R CMD check --as-cran $(PKG)_$(VERSION).tar.gz

check-all:
	make build
	R CMD check --as-cran --run-donttest $(PKG)_$(VERSION).tar.gz

build:
	R CMD build pkg

install:
	make build
	R CMD INSTALL $(PKG)_$(VERSION).tar.gz

install-pkg:
	R CMD INSTALL pkg

remove:
	R CMD REMOVE $(PKG)

clean:
	rm -rf *~ $(PKG)_*.tar.gz pkg.Rcheck


update:
	svn update
	svn log|less

commit:
	svn commit
	make update

edit:
	emacs Makefile README pkg/NAMESPACE pkg/DESCRIPTION pkg/man/*.Rd pkg/R/*.R pkg/vignettes/*.Rmd &

# eof

