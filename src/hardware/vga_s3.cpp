/*
 *  Copyright (C) 2002-2010  The DOSBox Team
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 2 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program; if not, write to the Free Software
 *  Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.
 */

/* $Id: vga_s3.cpp,v 1.18 2009-03-15 11:28:35 c2woody Exp $ */

#include "dosbox.h"
#include "inout.h"
#include "vga.h"
#include "mem.h"

void SVGA_S3_WriteCRTC(Bitu reg,Bitu val,Bitu iolen) {
	
}

Bitu SVGA_S3_ReadCRTC( Bitu reg, Bitu iolen) {
	
}

void SVGA_S3_WriteSEQ(Bitu reg,Bitu val,Bitu iolen) {

}

Bitu SVGA_S3_ReadSEQ(Bitu reg,Bitu iolen) {

}

Bitu SVGA_S3_GetClock(void) {

}

bool SVGA_S3_HWCursorActive(void) {
	//return (vga.s3.hgc.curmode & 0x1) != 0;
}

bool SVGA_S3_AcceptsMode(Bitu mode) {
	//return VideoModeMemSize(mode) < vga.vmemsize;
}

void SVGA_Setup_S3Trio(void) {
	
}
