all:

BASENAME = freecell
VERSION = 0.0.1

NAME = $(BASENAME)-$(VERSION)
ZIP_FILE = $(NAME).zip

zip: $(ZIP_FILE)

FILES = doc/$(BASENAME).txt plugin/$(BASENAME).vim README.pod Rakefile Makefile

$(ZIP_FILE): $(FILES)
	mkdir -p $(NAME)
	for f in $(FILES) ; do mkdir -p "$(NAME)/$$(dirname "$$f")" ; cp "$$f" "$(NAME)/$$f" ; done
	rm -f $@
	zip -r $@ $(NAME)
	rm -fr $(NAME)
