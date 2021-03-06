/*
   Copyright (C) 1996-1997 Id Software, Inc.

   This program is free software; you can redistribute it and/or
   modify it under the terms of the GNU General Public License
   as published by the Free Software Foundation; either version 2
   of the License, or (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

   See the GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software
   Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

 */
#ifndef keys_h
#define keys_h

#include "Common/common.h"

#include <stdio.h>

enum QKEYS
{
	K_TAB = 9,
	K_ENTER = 13,
	K_ESCAPE = 27,
	K_SPACE = 32,

	K_BACKSPACE = 127,

	K_COMMAND = 128,
	K_CAPSLOCK,
	K_POWER,
	K_PAUSE,

	K_UPARROW,
	K_DOWNARROW,
	K_LEFTARROW,
	K_RIGHTARROW,

	K_ALT,
	K_CTRL,
	K_SHIFT,
	K_INS,
	K_DEL,
	K_PGDN,
	K_PGUP,
	K_HOME,
	K_END,

	K_F1,
	K_F2,
	K_F3,
	K_F4,
	K_F5,
	K_F6,
	K_F7,
	K_F8,
	K_F9,
	K_F10,
	K_F11,
	K_F12,
	K_F13,
	K_F14,
	K_F15,

	K_KP_HOME,
	K_KP_UPARROW,
	K_KP_PGUP,
	K_KP_LEFTARROW,
	K_KP_5,
	K_KP_RIGHTARROW,
	K_KP_END,
	K_KP_DOWNARROW,
	K_KP_PGDN,
	K_KP_ENTER,
	K_KP_INS,
	K_KP_DEL,
	K_KP_SLASH,
	K_KP_MINUS,
	K_KP_PLUS,
	K_KP_NUMLOCK,
	K_KP_STAR,
	K_KP_EQUALS,

	K_MOUSE1,
	K_MOUSE2,
	K_MOUSE3,
	K_MOUSE4,
	K_MOUSE5,

	K_MWHEELDOWN,
	K_MWHEELUP,

	K_JOY1,
	K_JOY2,
	K_JOY3,
	K_JOY4,
	K_JOY5,
	K_JOY6,
	K_JOY7,
	K_JOY8,
	K_JOY9,
	K_JOY10,
	K_JOY11,
	K_JOY12,
	K_JOY13,
	K_JOY14,
	K_JOY15,
	K_JOY16,
	K_JOY17,
	K_JOY18,
	K_JOY19,
	K_JOY20,
	K_JOY21,
	K_JOY22,
	K_JOY23,
	K_JOY24,
	K_JOY25,
	K_JOY26,
	K_JOY27,
	K_JOY28,
	K_JOY29,
	K_JOY30,
	K_JOY31,
	K_JOY32,

	K_AUX1,
	K_AUX2,
	K_AUX3,
	K_AUX4,
	K_AUX5,
	K_AUX6,
	K_AUX7,
	K_AUX8,
	K_AUX9,
	K_AUX10,
	K_AUX11,
	K_AUX12,
	K_AUX13,
	K_AUX14,
	K_AUX15,
	K_AUX16,
	K_AUX17,
	K_AUX18,
	K_AUX19,
	K_AUX20,
	K_AUX21,
	K_AUX22,
	K_AUX23,
	K_AUX24,
	K_AUX25,
	K_AUX26,
	K_AUX27,
	K_AUX28,
	K_AUX29,
	K_AUX30,
	K_AUX31,
	K_AUX32,

	K_WORLD_0,
	K_WORLD_1,
	K_WORLD_2,
	K_WORLD_3,
	K_WORLD_4,
	K_WORLD_5,
	K_WORLD_6,
	K_WORLD_7,
	K_WORLD_8,
	K_WORLD_9,
	K_WORLD_10,
	K_WORLD_11,
	K_WORLD_12,
	K_WORLD_13,
	K_WORLD_14,
	K_WORLD_15,
	K_WORLD_16,
	K_WORLD_17,
	K_WORLD_18,
	K_WORLD_19,
	K_WORLD_20,
	K_WORLD_21,
	K_WORLD_22,
	K_WORLD_23,
	K_WORLD_24,
	K_WORLD_25,
	K_WORLD_26,
	K_WORLD_27,
	K_WORLD_28,
	K_WORLD_29,
	K_WORLD_30,
	K_WORLD_31,
	K_WORLD_32,
	K_WORLD_33,
	K_WORLD_34,
	K_WORLD_35,
	K_WORLD_36,
	K_WORLD_37,
	K_WORLD_38,
	K_WORLD_39,
	K_WORLD_40,
	K_WORLD_41,
	K_WORLD_42,
	K_WORLD_43,
	K_WORLD_44,
	K_WORLD_45,
	K_WORLD_46,
	K_WORLD_47,
	K_WORLD_48,
	K_WORLD_49,
	K_WORLD_50,
	K_WORLD_51,
	K_WORLD_52,
	K_WORLD_53,
	K_WORLD_54,
	K_WORLD_55,
	K_WORLD_56,
	K_WORLD_57,
	K_WORLD_58,
	K_WORLD_59,
	K_WORLD_60,
	K_WORLD_61,
	K_WORLD_62,
	K_WORLD_63,
	K_WORLD_64,
	K_WORLD_65,
	K_WORLD_66,
	K_WORLD_67,
	K_WORLD_68,
	K_WORLD_69,
	K_WORLD_70,
	K_WORLD_71,
	K_WORLD_72,
	K_WORLD_73,
	K_WORLD_74,
	K_WORLD_75,
	K_WORLD_76,
	K_WORLD_77,
	K_WORLD_78,
	K_WORLD_79,
	K_WORLD_80,
	K_WORLD_81,
	K_WORLD_82,
	K_WORLD_83,
	K_WORLD_84,
	K_WORLD_85,
	K_WORLD_86,
	K_WORLD_87,
	K_WORLD_88,
	K_WORLD_89,
	K_WORLD_90,
	K_WORLD_91,
	K_WORLD_92,
	K_WORLD_93,
	K_WORLD_94,
	K_WORLD_95,

	K_SUPER,
	K_COMPOSE,
	K_MODE,
	K_HELP,
	K_PRINT,
	K_SYSREQ,
	K_SCROLLOCK,
	K_BREAK,
	K_MENU,
	K_EURO,
	K_UNDO,

	K_LAST,

	#if 1

	K_GAMEPAD_SELECT = K_WORLD_0,
	K_GAMEPAD_START,

	K_GAMEPAD_LEFT,
	K_GAMEPAD_RIGHT,
	K_GAMEPAD_DOWN,
	K_GAMEPAD_UP,

	K_GAMEPAD_A = 'A',
	K_GAMEPAD_B = 'B',
	K_GAMEPAD_X = 'X',
	K_GAMEPAD_Y = 'Y',

	K_GAMEPAD_L = 'L',
	K_GAMEPAD_R = 'R',

	K_GAMEPAD_LOCK = K_PAUSE,
	K_GAMEPAD_POWER = K_POWER,

	#else

	K_GAMEPAD_SELECT = K_WORLD_0,
	K_GAMEPAD_START,

	K_GAMEPAD_LEFT,
	K_GAMEPAD_RIGHT,
	K_GAMEPAD_DOWN,
	K_GAMEPAD_UP,

	K_GAMEPAD_A,
	K_GAMEPAD_B,
	K_GAMEPAD_X,
	K_GAMEPAD_Y,

	K_GAMEPAD_L,
	K_GAMEPAD_R,

	K_GAMEPAD_LOCK,
	K_GAMEPAD_POWER,

	#endif
};

typedef enum { key_game, key_console, key_message, key_menu } keydest_t;

extern keydest_t key_dest;
extern char *keybindings[K_LAST];
extern int key_count; // incremented every key event
extern int key_lastpress;

void Char_Event(int key, bool specialOnlyFlag);
void Key_Event(int key, bool down);
void Key_Init();
void Key_WriteBindings(FILE *f);
void Key_SetBinding(int keynum, char *binding);
void Key_ClearStates();

#endif
