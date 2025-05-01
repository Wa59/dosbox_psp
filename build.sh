#!/bin/sh

./autogen.sh

SDL_CONFIG="${PSPDEV}/psp/bin/sdl-config"

CXXFLAGS="-I${PSPDEV}/psp/sdk/include -I${PSPDEV}/include/SDL -O3 -G0"

LDFLAGS="-Wl,--allow-multiple-definition -Wl,--no-as-needed"

LIBS="-lpspdebug -lpspgu -lpspctrl -lpspdisplay -lpspge -lpspsdk -lpsprtc \
      -lpspaudio -lstdc++ -lpspirkeyb -lc -lpspnet -lpspnet_inet -lpsppower \
      -lpsputility -lpspuser -lpspkernel -L${PSPDEV}/psp/sdk/lib " 

CFLAGS="-I${PSPDEV}/psp/sdk/include"

./configure -host=psp
make clean
make

cd src

psp-gcc -L${PSPDEV}/psp/sdk/lib -o dosbox dosbox.o p_sprint.o ftruncate.o cpu/libcpu.a debug/libdebug.a dos/libdos.a fpu/libfpu.a hardware/libhardware.a gui/libgui.a ints/libints.a misc/libmisc.a shell/libshell.a ${PSPDEV}/psp/lib/libSDL_net.a ${PSPDEV}/psp/lib/libSDL.a ${PSPDEV}/psp/lib/libSDLmain.a hardware/serialport/libserial.a -lstdc++ -lpspdebug -lpspgu -lpspctrl -lpspdisplay -lpspge -lpspaudio -lpspirkeyb -lpspnet -lpsppower -specs=${PSPDEV}/psp/sdk/lib/prxspecs -Wl,--allow-multiple-definition -Wl,-T${PSPDEV}/psp/sdk/lib/linkfile.prx,-q

psp-fixup-imports dosbox

psp-prxgen dosbox dosbox.prx 

mksfoex -d MEMSIZE=1 "DOSBox PSP" PARAM.SFO && pack-pbp EBOOT.PBP PARAM.SFO ICON0.PNG NULL NULL PIC1.PNG NULL dosbox.prx NULL

#cp EBOOT.PBP ~/.var/app/org.ppsspp.PPSSPP/config/ppsspp/PSP/GAME/DOSBox/EBOOT.PBP

cd ..