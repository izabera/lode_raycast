CXX = clang++
CXXFLAGS = -ggdb3
override LDLIBS += -lSDL

MAKEFLAGS += -j$(nproc)

bins = raycaster_flat \
	   raycaster_textured \
	   raycaster_floor \
	   raycaster_sprites
all: $(bins)
clean:
	$(RM) $(bins) *.o *.d

quickcg.o:
$(bins): quickcg.o
	$(CXX) -MMD $@.cpp $< -o $@ $(LDLIBS)
.PHONY: all clean
-include *.d
