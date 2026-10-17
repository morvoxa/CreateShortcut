CC = gcc
CFLAGS = -Wall -O2 $(shell pkg-config --cflags gtk+-3.0)
LIBS = $(shell pkg-config --libs gtk+-3.0)

TARGET = CreateShortcut
SRC = CreateShortcut.c
PREFIX ?= $(HOME)/.local

all: $(TARGET)

$(TARGET): $(SRC)
	$(CC) $(SRC) -o $(TARGET) $(CFLAGS) $(LIBS)

install: $(TARGET)
	mkdir -p $(PREFIX)/bin
	cp $(TARGET) $(PREFIX)/bin/
	chmod +x $(PREFIX)/bin/$(TARGET)
	
	mkdir -p $(PREFIX)/share/applications
	cp CreateShortcut.desktop $(PREFIX)/share/applications/
	
	@echo "Instalasi selesai! CreateShortcut siap digunakan."

clean:
	rm -f $(TARGET)

.PHONY: all install clean
