
TEMPLATE_NAMES = 'MVVM-C' 'CellKit'
TEMPLATE_DIR = $(HOME)/Library/Developer/Xcode/Templates/


install: $(TEMPLATE_NAMES)
	for name in $(TEMPLATE_NAMES) ; do \
		cd $$name ; \
		cp -R *.xctemplate $(TEMPLATE_DIR)$$name ; \
		cd .. ; \
	done

$(TEMPLATE_NAMES):
	for name in $(TEMPLATE_NAMES) ; do \
		mkdir -p $(TEMPLATE_DIR)$$name ; \
	done

.PHONY = install
