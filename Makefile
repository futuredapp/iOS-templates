
TEMPLATE_NAMES = 'ArchitectureKit - Scenes' 'ArchitectureKit - Other' 'CellKit'
TEMPLATE_DIR = $(HOME)/Library/Developer/Xcode/Templates/

install:
	for name in $(TEMPLATE_NAMES) ; do \
		mkdir -p "$(TEMPLATE_DIR)$$name" ; \
		cd "$$name" ; \
		cp -R *.xctemplate "$(TEMPLATE_DIR)$$name" ; \
		cd .. ; \
	done

.PHONY = install
