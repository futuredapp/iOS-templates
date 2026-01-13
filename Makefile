
TEMPLATE_NAMES = 'FTAPIKit' 'FuturedArchitecture' 'KMP'
TEMPLATE_DIR = $(HOME)/Library/Developer/Xcode/Templates/

install:
	for name in $(TEMPLATE_NAMES) ; do \
		mkdir -p $(TEMPLATE_DIR)$$name ; \
		cd $$name ; \
		cp -R *.xctemplate $(TEMPLATE_DIR)$$name ; \
		cd .. ; \
	done
	echo "\033[0;32mInstallation was successful!\033[0m"

.PHONY: install
.SILENT: install
