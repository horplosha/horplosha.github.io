/* ==================================================== ##
##             COPYRIGHTS © DANNEO PHP TEAM             ##
## ==================================================== ##
## PRODUCT : CMS(CONTENT MANAGEMENT SYSTEM)             ##
## LICENSE : GNU 2(General Public License v.2)          ##
## TECHNOLOGIES : PHP & MySQL                           ##
## WWW: www.danneo.com | www.danneo.ru | www.danneo.org ##
## E-MAIL : help@danneo.com                             ##
## ==================================================== */
var loadtab = new Array('newstab','downtab','articletab');

DN_AJAX_Initialize.prototype.emulateloads = function(){
if(AJAX.reqxml.readyState == 4 && AJAX.reqxml.status == 200 && AJAX.reqxml.responseText){
DN.findobj('contetab').innerHTML = AJAX.reqxml.responseText;
DN.findobj('loadtab').style.display = 'none';
DN.findobj('contetab').style.display = 'block';
// Bugs Dom
if(DN.browser().ie){
AJAX.reqxml.abort();
} else {
AJAX.reqxml = ''; // CLEAR reqxml NO SUPPORT IE
}
// Bugs Dom
}
}

DN_AJAX_Initialize.prototype.loads = function(page,tab){
// AJAX WORKS ?
if(AJAX.create()){

if(tab){
 for(var i=0; i<loadtab.length; i++){
  DN.findobj(loadtab[i]).className = (tab == loadtab[i]) ? 'blocktabon' : 'blocktaboff';
 }
}

DN.findobj('contetab').style.display = 'none';
DN.findobj('loadtab').style.display = 'block';
AJAX.onreadystatechange(AJAX.emulateloads);
AJAX.sends(page,null,'get');
return false;
} else {
// AJAX WORKS ?
return false;
}
}
