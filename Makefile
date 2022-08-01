TARGET = funkin
TYPE = ps-exe

SRCS = src/main.c \
	   \
	   \
       src/characters/bf/bf.c \
	   \
	   \
       src/characters/dad/dad.c \
	   \
	   \
       src/characters/gf/gf.c \
       src/characters/gf/speaker.c \
	   \
	   \
	   \
       src/stages/stage1/stage1.c \
	   \
	   \
       \
       src/menu/menu.c \
	   \
	   \
       src/stage/stage.c \
	   src/stage/animation.c \
       src/stage/character.c \
       src/stage/object.c \
       src/stage/object/combo.c \
       src/stage/object/splash.c \
       src/events/event.c \
	   \
	   \
	   \
       src/fonts/font.c \
	   \
       src/psx/mutil.c \
       src/psx/random.c \
       src/psx/archive.c \
       src/psx/trans.c \
       src/psx/loadscr.c \
       src/psx/psx.c \
       src/psx/io.c \
       src/psx/gfx.c \
       src/psx/audio.c \
       src/psx/pad.c \
       src/psx/timer.c \
       src/psx/movie.c \
       mips/common/crt0/crt0.s

CPPFLAGS += -Wall -Wextra -pedantic -mno-check-zero-division
LDFLAGS += -Wl,--start-group
# TODO: remove unused libraries
LDFLAGS += -lapi
#LDFLAGS += -lc
LDFLAGS += -lc2
#LDFLAGS += -lcard
LDFLAGS += -lcd
#LDFLAGS += -lcomb
LDFLAGS += -lds
LDFLAGS += -letc
LDFLAGS += -lgpu
#LDFLAGS += -lgs
#LDFLAGS += -lgte
#LDFLAGS += -lgun
#LDFLAGS += -lhmd
#LDFLAGS += -lmath
#LDFLAGS += -lmcrd
#LDFLAGS += -lmcx
LDFLAGS += -lpad
LDFLAGS += -lpress
#LDFLAGS += -lsio
LDFLAGS += -lsnd
LDFLAGS += -lspu
#LDFLAGS += -ltap
LDFLAGS += -flto -Wl,--end-group

include mips/common.mk