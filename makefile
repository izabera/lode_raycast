MAKEFLAGS += -j$(nproc)
LINK.o = $(CXX) $(LDFLAGS) $(TARGET_ARCH)

CXX = clang++
CXXFLAGS = -ggdb3 -Wall -Wextra -MMD -MP
LDLIBS += -lSDL

bins = raycaster_flat \
       raycaster_textured \
       raycaster_floor \
       raycaster_sprites \
       raycaster_pitch

all: $(bins)
clean:
	$(RM) $(bins) *.o *.d

$(bins): %: %.o quickcg.o

.PHONY: all clean
-include *.d
