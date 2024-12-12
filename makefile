bins = raycaster_flat raycaster_floor
all: $(bins)
clean:
	$(RM) $(bins)

raycaster_flat: quickcg.cpp quickcg.h
	g++ raycaster_flat.cpp quickcg.cpp -lSDL -o raycaster_flat
raycaster_floor: quickcg.cpp quickcg.h
	g++ raycaster_floor.cpp quickcg.cpp -lSDL -o raycaster_floor
.PHONY: all clean
