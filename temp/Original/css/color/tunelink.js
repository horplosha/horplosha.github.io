function cookievalue(name){
 var result = null;
 var myCookie = " " + document.cookie + ";";
 var searchName = " " + name + "=";
 var startOfCookie = myCookie.indexOf(searchName);
 var endOfCookie;
  if(startOfCookie != -1){
   startOfCookie += searchName.length;
   endOfCookie = myCookie.indexOf(";", startOfCookie);
   result = unescape( myCookie.substring(startOfCookie,endOfCookie));
  }
 return result;
}

var tc = cookievalue('tunecolor');
var tw = cookievalue('tunewidth');

if(tc || tw){
 document.write('<img src=\"temp\/Original\/images\/tuneon.gif\" alt=\"���� ��������� ���������\" /> ');
} else {
 document.write('<img src=\"temp\/Original\/images\/tune.gif\" alt=\"��������� ����\" /> ');
}

document.write('&nbsp; ������');
       

