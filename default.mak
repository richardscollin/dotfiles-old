CFLAGS := -Wall

%.html: %.md
	markdown $< > $@

