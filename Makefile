
LUALIB = -I/usr/local/include -L/usr/local/bin -llua53

.PHONY: all

linux: bson.so

bson.so : bson.c
	gcc --shared -Wall -fPIC -O2 $^ -o$@ $(LUALIB)

clean:
	rm -f bson.dll bson.so
