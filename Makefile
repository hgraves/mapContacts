CC := g++

# internal flags
CCFLAGS     := -g
LDFLAGS     := -g
LIBRARIES   := 
################################################################################

# Target rules
all: build

build: mapContacts

mapContacts.o:mapContacts.cpp mapContacts.h
	$(CC) $(CCFLAGS) -o $@ -c $<

mapContacts: mapContacts.o 
	$(CC) $(LDFLAGS) -o $@ $+ $(LIBRARIES)

clean:
	rm -f mapContacts mapContacts.o

clobber: clean
