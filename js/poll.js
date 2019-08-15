/* ==================================================== ##
##             COPYRIGHTS © DANNEO PHP TEAM             ##
## ==================================================== ##
## PRODUCT : CMS(CONTENT MANAGEMENT SYSTEM)             ##
## LICENSE : GNU 2(General Public License v.2)          ##
## TECHNOLOGIES : PHP & MySQL                           ##
## WWW: www.danneo.com | www.danneo.ru | www.danneo.org ##
## E-MAIL : help@danneo.com                             ##
## ==================================================== */
function EmulateVote(){
if(AJAX.reqxml.readyState == 4 && AJAX.reqxml.status == 200 && AJAX.reqxml.responseText){
if(AJAX.reqxml.responseText.match(/^<!--pollok ([0-9]+)-->/)){
 DN.findobj('pollsendbox').style.display  = 'none';
 DN.findobj('pollajaxbox').innerHTML = AJAX.reqxml.responseText;
} else {
 DN.findobj('pollerrorbox').innerHTML = AJAX.reqxml.responseText;
 DN.findobj('pollsendbox').style.display  = 'none';
}
DN.findobj('pollbutton').disabled = false;
// Bugs Dom
if(DN.browser().ie){
AJAX.reqxml.abort();
} else {
AJAX.reqxml = ''; // CLEAR reqxml NO SUPPORT IE
}
// Bugs Dom
}
}

function PollSubmit(obj){
var form = document.pollform;
// AJAX WORKS ?
if(vote_ajax && AJAX.create()){
DN.findobj('pollsendbox').style.display  = '';
DN.findobj('pollbutton').disabled = true;
AJAX.data = AJAX.findelm(obj);
AJAX.onreadystatechange(EmulateVote);
AJAX.sends('index.php?dn=poll&re=add',AJAX.data,'post');
return false;
} else {
// AJAX WORKS ?
return true;
}
}