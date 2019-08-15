/* ==================================================== ##
##             COPYRIGHTS © DANNEO PHP TEAM             ##
## ==================================================== ##
## PRODUCT : CMS(CONTENT MANAGEMENT SYSTEM)             ##
## LICENSE : GNU 2(General Public License v.2)          ##
## TECHNOLOGIES : PHP & MySQL                           ##
## WWW: www.danneo.com | www.danneo.ru | www.danneo.org ##
## E-MAIL : help@danneo.com                             ##
## ==================================================== */
DN_AJAX_Initialize.prototype.emulaterate = function(){
if(AJAX.reqxml.readyState == 4 && AJAX.reqxml.status == 200 && AJAX.reqxml.responseText){
DN.findobj('viewrate').innerHTML = AJAX.reqxml.responseText;
// Bugs Dom
if(DN.browser().ie){
AJAX.reqxml.abort();
} else {
AJAX.reqxml = ''; // CLEAR reqxml NO SUPPORT IE
}
// Bugs Dom
}
}

DN_AJAX_Initialize.prototype.rate = function(mod,id,rates){
// AJAX WORKS ?
if(AJAX.create()){
AJAX.onreadystatechange(AJAX.emulaterate);
AJAX.sends('/index.php?dn='+ mod +'&re=ajax&to=rating&id=' + id + '&rate=' + rates,null,'get');
return false;
} else {
// AJAX WORKS ?
return false;
}
}