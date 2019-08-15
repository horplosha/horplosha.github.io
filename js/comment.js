/* ==================================================== ##
##             COPYRIGHTS © DANNEO PHP TEAM             ##
## ==================================================== ##
## PRODUCT : CMS(CONTENT MANAGEMENT SYSTEM)             ##
## LICENSE : GNU 2(General Public License v.2)          ##
## TECHNOLOGIES : PHP & MySQL                           ##
## WWW: www.danneo.com | www.danneo.ru | www.danneo.org ##
## E-MAIL : help@danneo.com                             ##
## ==================================================== */
function DN_COMMENT_Initialize(){}

DN_COMMENT_Initialize.prototype.posit = function(text){
 if(text.createTextRange){ text.caretPos = document.selection.createRange().duplicate(); }
}

DN_COMMENT_Initialize.prototype.rearea = function(gui,id){
var rearea = DN.findobj(id);
if(gui<0){ var rows = -5;  } else { var rows = +5; }
var rerows = rearea.rows + rows;
if(rerows >= 10 && rerows < 30){ rearea.rows = rerows; }
return false;
}

DN_COMMENT_Initialize.prototype.paste = function(code){
var form = DN.findobj('comtext');
if(DN.browser().gecko){
 var startform = form.selectionStart, scroll = form.scrollTop, endform = form.selectionEnd;
 if(endform <= 2){ endform = form.textLength; }
 var start = (form.value).substring(0,startform), text = (form.value).substring(startform,endform), end = (form.value).substring(endform,form.textLength);
 if(form.selectionEnd - form.selectionStart > 0){ text = code; } else { text += code; }
 form.value = start + text + end;
 var posit = startform + (text.length);
 form.selectionStart = posit;
 form.selectionEnd = posit;
 form.scrollTop = scroll;
} else {
 if(form.caretPos){ form.caretPos.text = code; } else { form.value += code;}
}
 form.focus();
}

DN_COMMENT_Initialize.prototype.insert = function(code){
var form = DN.findobj('comtext');
if(DN.browser().gecko){
 var startform = form.selectionStart, scroll = form.scrollTop, endform = form.selectionEnd;
 if(endform <= 2){ endform = form.textLength; }
  var start  = (form.value).substring(0,startform), text = (form.value).substring(startform,endform), end = (form.value).substring(endform,form.textLength);
   if(form.selectionEnd - form.selectionStart > 0){ text = "[" + code + "]" + text + "[/" + code + "]"; } else { text = "[" + code + "][/" + code + "]"; }
   form.value = start + text + end;
   var posit = startform + (text.length);
   form.selectionStart = posit;
   form.selectionEnd = posit;
   form.scrollTop = scroll;
} else {
 if(form.caretPos){
 form.caretPos.text = "[" + code + "]" + form.caretPos.text + "[/" + code + "]";
 } else {
 form.value += "[" + code + "][/" + code + "]";
 }
}
form.focus();
}

DN_COMMENT_Initialize.prototype.winins = function(type){
var error = '', sel = '', form = DN.findobj('comtext');
if(DN.browser().gecko){
 var startform = form.selectionStart, scroll = form.scrollTop, endform = form.selectionEnd;
 if(endform <= 2){ endform = form.textLength; }
 var start = (form.value).substring(0,startform), text = (form.value).substring(startform,endform), end = (form.value).substring(endform,form.textLength);
 if(form.selectionEnd - form.selectionStart > 0){ sel = text; } else { sel = ''; }
} else {
 if(form.caretPos){ sel = document.selection.createRange().text; } else { sel = ''; }
}

if(type == "url") {
if(!sel){ sel ='www.danneo.com'; }
var url = prompt(input_url, "http://"), name = prompt(input_url_www, sel), error = '';
if(!url){ error += " " + error_url;  }
if(!name){ error += " " + error_titles; }
if(error){ DN.alerts(error); return; }
this.paste("[URL=" + url + "]" + name + "[/URL]");
}

if(type == "mail") {
var mails = 'your@mail.ru', mail = prompt(input_email,mails);
if(!mail){ error = input_email + '!';  }
if(error){ alert(error); return; }
if(!sel){ sel = mail; }
this.paste("[MAIL=" + mail + "]" + sel + "[/MAIL]");
}

}

DN_COMMENT_Initialize.prototype.smilie = function(code){ this.paste(' '+code+' '); }

DN_COMMENT_Initialize.prototype.emulate = function(){
if(AJAX.reqxml.readyState == 4 && AJAX.reqxml.status == 200 && AJAX.reqxml.responseText){
if(AJAX.reqxml.responseText.match(/^<!--ok ([0-9]+)-->/)){
 // LAST POST
 var posttime = AJAX.reqxml.responseText.match(/^<!--ok ([0-9]+)-->/);
 if(posttime){ last_time = posttime[1]; }
 // LAST POST
 DN.findobj('sendbox').style.display  = 'none';
 creatediv = document.createElement('div');
 creatediv.innerHTML = AJAX.reqxml.responseText;
 olddiv = DN.findobj('ajaxbox');
 oldparent = olddiv.parentNode;
 oldparent.insertBefore(creatediv,olddiv);
} else {
 DN.findobj('errorbox').innerHTML = AJAX.reqxml.responseText;
 DN.findobj('sendbox').style.display  = 'none';
 DN.findobj('ajaxbox').style.display  = '';
 DN.findobj('errorbox').style.display  = '';
}
 DN.findobj('button').disabled = false;
 //DN.findobj('reset').disabled = false;
// Bugs Dom
if(DN.browser().ie){
AJAX.reqxml.abort();
} else {
AJAX.reqxml = ''; // CLEAR reqxml NO SUPPORT IE
}
// Bugs Dom
}
}

DN_COMMENT_Initialize.prototype.submit = function(obj,mod){
var form = document.comform, error = '';
if(form.comname.value.length == 0){ DN.alerts(error_name); form.comname.focus(); return false; }
if(form.comtitle.value.length == 0){ DN.alerts(error_ñ_title); form.comtitle.focus(); return false; }
if(form.comtext.value.length <= 5){ DN.alerts(error_e_text); form.comtext.focus(); return false; }
if(form.comtext.value.length > maxsize){ DN.alerts(error_b_text); form.comtext.focus(); return false; }
// AJAX WORKS ?
if(ajax_enable && AJAX.create()){
DN.findobj('sendbox').style.display  = ''; DN.findobj('title').disabled = true;
DN.findobj('button').disabled = true; //DN.findobj('reset').disabled = true;
DN.findobj('errorbox').innerHTML = ''; AJAX.data = AJAX.findelm(obj);
AJAX.onreadystatechange(DN_COMMENT_Initialize.prototype.emulate);
AJAX.sends(site_url + '/index.php?dn='+ mod +'&re=comment&ct=' + last_time,AJAX.data,'post');
return false;
// AJAX WORKS ?
} else {
// AJAX WORKS ?
return true;
}
// AJAX WORKS ?
}

var COMMENT = new DN_COMMENT_Initialize();