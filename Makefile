# Makefile
CC := gcc
CFLAGS := -O2 -pipe -s
SRC := src/easy_peasy.c
TARGET := easy_peasy

all: $(TARGET)

$(TARGET): $(SRC)
	$(CC) $(CFLAGS) -o $(TARGET) $(SRC)

release: all
	@mkdir -p dist 
	strip $(TARGET) || true
	cp $(TARGET) dist/$(TARGET)

clean:
	-rm -f $(TARGET)
	-rm -rf dist


