# GNU Make project makefile autogenerated by Premake
ifndef config
  config=release
endif

ifndef verbose
  SILENT = @
endif

CC = gcc
CXX = g++
AR = ar

ifndef RESCOMP
  ifdef WINDRES
    RESCOMP = $(WINDRES)
  else
    RESCOMP = windres
  endif
endif

ifeq ($(config),release)
  OBJDIR     = ../../../Output/Targets/Generic/Release/obj/quake2-rogue
  TARGETDIR  = ../../../Output/Targets/Generic/Release/bin/rogue
  TARGET     = $(TARGETDIR)/game.dll
  DEFINES   += -DARCH=\"x86\" -DOSTYPE=\"Windows\" -DNOUNCRYPT -DZIP
  INCLUDES  += -I../../../../../Engine/External/Win32/include -I../../../../../Engine/External/include -I../../../Sources -I../../../Sources/rogue/src
  ALL_CPPFLAGS  += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
  ALL_CFLAGS    += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -ffast-math -Wall -Wextra -O2 -std=c99 -Wno-unused-function -Wno-unused-parameter -Wno-unused-but-set-variable -Wno-switch -Wno-missing-field-initializers -march=core2 -msse4.1 -mfpmath=sse
  ALL_CXXFLAGS  += $(CXXFLAGS) $(ALL_CFLAGS)
  ALL_RESFLAGS  += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS   += $(LDFLAGS) -L../../../../../Engine/External/Win32/lib -L../../../Output/Targets/Generic/Release/lib -L. -s -shared -Wl,--out-implib="../../../Output/Targets/Generic/Release/lib/game.a" -static-libgcc -static-libstdc++
  LDDEPS    +=
  LIBS      += $(LDDEPS) -lgdi32 -lmingw32
  LINKCMD    = $(CC) -o $(TARGET) $(OBJECTS) $(RESOURCES) $(ARCH) $(ALL_LDFLAGS) $(LIBS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),debug)
  OBJDIR     = ../../../Output/Targets/Generic/Debug/obj/quake2-rogue
  TARGETDIR  = ../../../Output/Targets/Generic/Debug/bin/rogue
  TARGET     = $(TARGETDIR)/game.dll
  DEFINES   += -DARCH=\"x86\" -DOSTYPE=\"Windows\" -DNOUNCRYPT -DZIP
  INCLUDES  += -I../../../../../Engine/External/Win32/include -I../../../../../Engine/External/include -I../../../Sources -I../../../Sources/rogue/src
  ALL_CPPFLAGS  += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
  ALL_CFLAGS    += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -ffast-math -Wall -Wextra -g -std=c99 -Wno-unused-function -Wno-unused-parameter -Wno-unused-but-set-variable -Wno-switch -Wno-missing-field-initializers -march=core2 -msse4.1 -mfpmath=sse
  ALL_CXXFLAGS  += $(CXXFLAGS) $(ALL_CFLAGS)
  ALL_RESFLAGS  += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS   += $(LDFLAGS) -L../../../../../Engine/External/Win32/lib -L../../../Output/Targets/Generic/Debug/lib -L. -shared -Wl,--out-implib="../../../Output/Targets/Generic/Debug/lib/game.a" -static-libgcc -static-libstdc++
  LDDEPS    +=
  LIBS      += $(LDDEPS) -lgdi32 -lmingw32
  LINKCMD    = $(CC) -o $(TARGET) $(OBJECTS) $(RESOURCES) $(ARCH) $(ALL_LDFLAGS) $(LIBS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

OBJECTS := \
	$(OBJDIR)/flash.o \
	$(OBJDIR)/rand.o \
	$(OBJDIR)/shared.o \
	$(OBJDIR)/g_ai.o \
	$(OBJDIR)/g_chase.o \
	$(OBJDIR)/g_cmds.o \
	$(OBJDIR)/g_combat.o \
	$(OBJDIR)/g_func.o \
	$(OBJDIR)/g_items.o \
	$(OBJDIR)/g_main.o \
	$(OBJDIR)/g_misc.o \
	$(OBJDIR)/g_monster.o \
	$(OBJDIR)/g_newai.o \
	$(OBJDIR)/g_newdm.o \
	$(OBJDIR)/g_newfnc.o \
	$(OBJDIR)/g_newtarg.o \
	$(OBJDIR)/g_newtrig.o \
	$(OBJDIR)/g_newweap.o \
	$(OBJDIR)/g_phys.o \
	$(OBJDIR)/g_spawn.o \
	$(OBJDIR)/g_sphere.o \
	$(OBJDIR)/g_svcmds.o \
	$(OBJDIR)/g_target.o \
	$(OBJDIR)/g_trigger.o \
	$(OBJDIR)/g_turret.o \
	$(OBJDIR)/g_utils.o \
	$(OBJDIR)/g_weapon.o \
	$(OBJDIR)/ball.o \
	$(OBJDIR)/tag.o \
	$(OBJDIR)/berserker.o \
	$(OBJDIR)/boss2.o \
	$(OBJDIR)/boss3.o \
	$(OBJDIR)/boss31.o \
	$(OBJDIR)/boss32.o \
	$(OBJDIR)/brain.o \
	$(OBJDIR)/carrier.o \
	$(OBJDIR)/chick.o \
	$(OBJDIR)/flipper.o \
	$(OBJDIR)/float.o \
	$(OBJDIR)/flyer.o \
	$(OBJDIR)/gladiator.o \
	$(OBJDIR)/gunner.o \
	$(OBJDIR)/hover.o \
	$(OBJDIR)/infantry.o \
	$(OBJDIR)/insane.o \
	$(OBJDIR)/medic.o \
	$(OBJDIR)/move.o \
	$(OBJDIR)/mutant.o \
	$(OBJDIR)/parasite.o \
	$(OBJDIR)/soldier.o \
	$(OBJDIR)/stalker.o \
	$(OBJDIR)/supertank.o \
	$(OBJDIR)/tank.o \
	$(OBJDIR)/turret.o \
	$(OBJDIR)/widow.o \
	$(OBJDIR)/widow2.o \
	$(OBJDIR)/client.o \
	$(OBJDIR)/hud.o \
	$(OBJDIR)/trail.o \
	$(OBJDIR)/view.o \
	$(OBJDIR)/weapon.o \
	$(OBJDIR)/savegame.o \

RESOURCES := \

SHELLTYPE := msdos
ifeq (,$(ComSpec)$(COMSPEC))
  SHELLTYPE := posix
endif
ifeq (/bin,$(findstring /bin,$(SHELL)))
  SHELLTYPE := posix
endif

.PHONY: clean prebuild prelink

all: $(TARGETDIR) $(OBJDIR) prebuild prelink $(TARGET)
	@:

$(TARGET): $(GCH) $(OBJECTS) $(LDDEPS) $(RESOURCES)
	@echo Linking quake2-rogue
	$(SILENT) $(LINKCMD)
	$(POSTBUILDCMDS)

$(TARGETDIR):
	@echo Creating $(TARGETDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(TARGETDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(TARGETDIR))
endif

$(OBJDIR):
	@echo Creating $(OBJDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(OBJDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(OBJDIR))
endif

clean:
	@echo Cleaning quake2-rogue
ifeq (posix,$(SHELLTYPE))
	$(SILENT) rm -f  $(TARGET)
	$(SILENT) rm -rf $(OBJDIR)
else
	$(SILENT) if exist $(subst /,\\,$(TARGET)) del $(subst /,\\,$(TARGET))
	$(SILENT) if exist $(subst /,\\,$(OBJDIR)) rmdir /s /q $(subst /,\\,$(OBJDIR))
endif

prebuild:
	$(PREBUILDCMDS)

prelink:
	$(PRELINKCMDS)

ifneq (,$(PCH))
$(GCH): $(PCH)
	@echo $(notdir $<)
	$(SILENT) $(CC) -x c-header $(ALL_CFLAGS) -MMD -MP $(DEFINES) $(INCLUDES) -o "$@" -MF "$(@:%.gch=%.d)" -c "$<"
endif

$(OBJDIR)/flash.o: ../../../Sources/common/shared/flash.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/rand.o: ../../../Sources/common/shared/rand.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/shared.o: ../../../Sources/common/shared/shared.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/g_ai.o: ../../../Sources/rogue/src/g_ai.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/g_chase.o: ../../../Sources/rogue/src/g_chase.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/g_cmds.o: ../../../Sources/rogue/src/g_cmds.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/g_combat.o: ../../../Sources/rogue/src/g_combat.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/g_func.o: ../../../Sources/rogue/src/g_func.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/g_items.o: ../../../Sources/rogue/src/g_items.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/g_main.o: ../../../Sources/rogue/src/g_main.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/g_misc.o: ../../../Sources/rogue/src/g_misc.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/g_monster.o: ../../../Sources/rogue/src/g_monster.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/g_newai.o: ../../../Sources/rogue/src/g_newai.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/g_newdm.o: ../../../Sources/rogue/src/g_newdm.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/g_newfnc.o: ../../../Sources/rogue/src/g_newfnc.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/g_newtarg.o: ../../../Sources/rogue/src/g_newtarg.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/g_newtrig.o: ../../../Sources/rogue/src/g_newtrig.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/g_newweap.o: ../../../Sources/rogue/src/g_newweap.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/g_phys.o: ../../../Sources/rogue/src/g_phys.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/g_spawn.o: ../../../Sources/rogue/src/g_spawn.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/g_sphere.o: ../../../Sources/rogue/src/g_sphere.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/g_svcmds.o: ../../../Sources/rogue/src/g_svcmds.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/g_target.o: ../../../Sources/rogue/src/g_target.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/g_trigger.o: ../../../Sources/rogue/src/g_trigger.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/g_turret.o: ../../../Sources/rogue/src/g_turret.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/g_utils.o: ../../../Sources/rogue/src/g_utils.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/g_weapon.o: ../../../Sources/rogue/src/g_weapon.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/ball.o: ../../../Sources/rogue/src/dm/ball.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/tag.o: ../../../Sources/rogue/src/dm/tag.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/berserker.o: ../../../Sources/rogue/src/monster/berserker/berserker.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/boss2.o: ../../../Sources/rogue/src/monster/boss2/boss2.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/boss3.o: ../../../Sources/rogue/src/monster/boss3/boss3.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/boss31.o: ../../../Sources/rogue/src/monster/boss3/boss31.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/boss32.o: ../../../Sources/rogue/src/monster/boss3/boss32.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/brain.o: ../../../Sources/rogue/src/monster/brain/brain.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/carrier.o: ../../../Sources/rogue/src/monster/carrier/carrier.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/chick.o: ../../../Sources/rogue/src/monster/chick/chick.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/flipper.o: ../../../Sources/rogue/src/monster/flipper/flipper.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/float.o: ../../../Sources/rogue/src/monster/float/float.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/flyer.o: ../../../Sources/rogue/src/monster/flyer/flyer.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/gladiator.o: ../../../Sources/rogue/src/monster/gladiator/gladiator.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/gunner.o: ../../../Sources/rogue/src/monster/gunner/gunner.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/hover.o: ../../../Sources/rogue/src/monster/hover/hover.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/infantry.o: ../../../Sources/rogue/src/monster/infantry/infantry.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/insane.o: ../../../Sources/rogue/src/monster/insane/insane.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/medic.o: ../../../Sources/rogue/src/monster/medic/medic.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/move.o: ../../../Sources/rogue/src/monster/misc/move.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/mutant.o: ../../../Sources/rogue/src/monster/mutant/mutant.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/parasite.o: ../../../Sources/rogue/src/monster/parasite/parasite.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/soldier.o: ../../../Sources/rogue/src/monster/soldier/soldier.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/stalker.o: ../../../Sources/rogue/src/monster/stalker/stalker.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/supertank.o: ../../../Sources/rogue/src/monster/supertank/supertank.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/tank.o: ../../../Sources/rogue/src/monster/tank/tank.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/turret.o: ../../../Sources/rogue/src/monster/turret/turret.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/widow.o: ../../../Sources/rogue/src/monster/widow/widow.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/widow2.o: ../../../Sources/rogue/src/monster/widow/widow2.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/client.o: ../../../Sources/rogue/src/player/client.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/hud.o: ../../../Sources/rogue/src/player/hud.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/trail.o: ../../../Sources/rogue/src/player/trail.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/view.o: ../../../Sources/rogue/src/player/view.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/weapon.o: ../../../Sources/rogue/src/player/weapon.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/savegame.o: ../../../Sources/rogue/src/savegame/savegame.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

-include $(OBJECTS:%.o=%.d)
ifneq (,$(PCH))
  -include $(OBJDIR)/$(notdir $(PCH)).d
endif
