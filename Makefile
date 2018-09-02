TEMPLATE_DIR = $(HOME)/Library/Developer/Xcode/Templates/MVVM-C\ Templates

install: $(TEMPLATE_DIR)
	cp -R *.xctemplate $(TEMPLATE_DIR)

$(TEMPLATE_DIR):
	mkdir -p $(TEMPLATE_DIR)

.PHONY = install
