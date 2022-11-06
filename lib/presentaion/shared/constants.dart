import 'dart:ui';
//constanat values for Responsive UI
const double watchBreakpoint = 220;
const double mobileBreakpoint = 550;
const double tabletBreakpoint = 850;
const double laptopBreakpoint = 1024;
const double desktopBreakpoint = 1200;

//this will be use to define when drawer stay open width// will be change later
const double limitDrawerBreakpoint = 1035;


const double dialogPadding =20;
const double dialogAvatarRadius =45;

const kBlackColor = Color(0xFF393939);
const kLightBlackColor = Color(0xFF8F8F8F);
const kIconColor = Color(0xFFF48A37);
const kProgressIndicator = Color(0xFFBE7066);
const kButtonColor = Color(0xFFBE7066);

const kLightPurple = Color(0xBA68C8d4);

final kShadowColor =  const Color(0xFFD3D3D3).withOpacity(.84);

double? parseDouble(dynamic value) {
  try {
    if (value is int) {
      return double.parse(value.toString());
    } else if (value is double) {
      return value;
    } else {
      return 0.0;
    }
  } catch (e) {
    return null;
  }
}

