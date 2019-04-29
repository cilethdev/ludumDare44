if (argument0 = mb_left) {
	return "M1";
}
if (argument0 = mb_right) {
	return "M2";
}
if (argument0 = vk_space) {
	return "SPACE";
}
if( argument0 > 48 && argument0 < 91 )
{ return chr(argument0); }
switch( argument0 )
{
    case -1: return "No Key";
    case 8: return "BACKSPACE";
    case 9: return "TAB";
    case 13: return "ENTER";
    case 16: return "SHIFT";
    case 17: return "CTRL";
    case 18: return "ALT";
    case 19: return "PAUSE/BREAK";
    case 20: return "CAPS";
    case 27: return "ESC";
    case 33: return "PAGE UP";
    case 34: return "PAGE DOWN";
    case 35: return "END";
    case 36: return "HOME";
    case 37: return "LEFT ARROW";
    case 38: return "UP ARROW";
    case 39: return "RIGHT ARROW";
    case 40: return "DOWN ARROW";
    case 45: return "INSERT";
    case 46: return "DELETE";
    case 96: return "NUM 0";
    case 97: return "NUM 1";
    case 98: return "NUM 2";
    case 99: return "NUM 3";
    case 100: return "NUM 4";
    case 101: return "NUM 5";
    case 102: return "NUM 6";
    case 103: return "NUM 7";
    case 104: return "NUM 8";
    case 105: return "NUM 9";
    case 106: return "NUM *";
    case 107: return "NUM +";
    case 109: return "NUM -";
    case 110: return "NUM .";
    case 111: return "NUM /";
    case 112: return "F1";
    case 113: return "F2";
    case 114: return "F3";
    case 115: return "F4";
    case 116: return "F5";
    case 117: return "F6";
    case 118: return "F7";
    case 119: return "F8";
    case 120: return "F9";
    case 121: return "F10";
    case 122: return "F11";
    case 123: return "F12";
    case 144: return "NUM LOCK";
    case 145: return "SCROLL LOCK";
    case 186: return ";";
    case 187: return "=";
    case 188: return ",";
    case 189: return "-";
    case 190: return ".";
    case 191: return "\\";
    case 192: return "`";
    case 219: return "/";
    case 220: return "[";
    case 221: return "]";
    case 222: return "'";
}