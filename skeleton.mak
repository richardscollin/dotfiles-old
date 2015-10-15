include ~/config/default.mak
MAIN = 
OBJECTS = 
$(MAIN): $(OBJECTS)

.PHONY: clean
clean:
	rm $(OBJECTS) $(EXECUTABLE)

