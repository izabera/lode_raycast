MAKEFLAGS += -j$(nproc)

CXX = clang++
CXXFLAGS = -ggdb3 -Wall -Wextra
LDLIBS += -lSDL

CXXFLAGS += -MMD -MP
LINK.o = $(CXX) $(LDFLAGS) $(TARGET_ARCH)

bins = raycaster_flat \
	   raycaster_textured \
	   raycaster_floor \
	   raycaster_sprites

all: $(bins)
clean:
	$(RM) $(bins) *.o *.d

$(bins): %: %.o quickcg.o

.PHONY: all clean
-include *.d
