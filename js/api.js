/* ==================================================== ##
##             COPYRIGHTS � DANNEO PHP TEAM             ##
## ==================================================== ##
## PRODUCT : CMS(CONTENT MANAGEMENT SYSTEM)             ##
## LICENSE : GNU 2(General Public License v.2)          ##
## TECHNOLOGIES : PHP & MySQL                           ##
## WWW: www.danneo.com | www.danneo.ru | www.danneo.org ##
## E-MAIL : help@danneo.com                             ##
## ==================================================== */
// CLASS : DN_System_Load
// Init
function DN_System_Load(){
this.wib = screen.width;
this.heb = screen.height;
this.documes = (document.getElementById || document.createElement || document.getElementsByTagName) ? true : false;
this.objects = window.addEventListener || window.attachEvent ? window : document.addEventListener ? document : null;
this.types = 'load';
}
// ADDSEVENT
DN_System_Load.prototype.addsevent = function(func){
if(this.objects.addEventListener){
this.objects.addEventListener(this.types,func,false);
return true;
} else if (this.objects.attachEvent){
this.objects.attachEvent("on" + this.types,func);
} else {
return false;
}
}
// FIND OBJ
DN_System_Load.prototype.findobj = function(obj){
this.parent = window.document;
if(this.parent.getElementById && this.parent.getElementById(obj)){ return this.parent.getElementById(obj); }
if(this.parent[obj]){ return this.parent[obj]; }
if(this.parent.all && this.parent.all[obj]){ return this.parent.all[obj]; }
if(this.parent.layers && this.parent.layers[obj]){ return this.parent.layers[obj]; }
return null;
}
// BROWSER
DN_System_Load.prototype.browser = function(){
 this.ver = navigator.appVersion;
 this.agent = navigator.userAgent.toLowerCase();
 this.dom = document.getElementById ? 1:0;
 this.all = document.all ? 1:0;
 this.ie5 = (this.ver.indexOf("MSIE 5")>-1 && this.dom) ? 1:0;
 this.ie6 = (this.ver.indexOf("MSIE 6")>-1 && this.dom) ? 1:0;
 this.ie7 = (this.ver.indexOf("MSIE 7")>-1 && this.dom) ? 1:0;
 this.ie4 = (document.all && !this.dom) ? 1:0;
 this.ie = this.ie4 || this.ie5 || this.ie6 || this.ie7;
 this.opera = this.agent.indexOf("opera")>-1;
 this.gecko = (this.agent.indexOf("gecko")!=-1) ? 1:0;
 this.bw = (this.ie || this.opera || this.gecko);
 return this;
}
// ALERTS
DN_System_Load.prototype.alerts = function(err){ alert(err); }
// CONFIRMS
DN_System_Load.prototype.confirms = function(str){ confirm(str); }
// PROMPTS
DN_System_Load.prototype.prompts = function(str,fix){ prompt(str,fix); }
// FIND OBJ
DN_System_Load.prototype.findobj = function(obj){
this.parent = window.document;
if(this.parent[obj]){ return this.parent[obj]; }
if(this.parent.all && this.parent.all[obj]){ return this.parent.all[obj]; }
if(this.parent.layers && this.parent.layers[obj]){ return this.parent.layers[obj]; }
if(this.parent.getElementById && this.parent.getElementById(obj)){ return this.parent.getElementById(obj); }
return null;
}
// FIND TAG
DN_System_Load.prototype.findtag = function(tag){
if(document.getElementsByTagName(tag)){ return document.getElementsByTagName(tag); }
return null;
}
// WINDOWS
DN_System_Load.prototype.windows = function(url,name,wid,hei){
var width = (this.wib - wid)/2;
var height = (this.heb - hei)/2;
window.open(url,name,"width="+wid+",height="+hei+",top="+height+",left="+width+",dependent=yes,titlebar=no,scrollbars=no");
}
// WINDOWS
DN_System_Load.prototype.scrollwindows = function(host,url,name){
var wid = (this.wib - 50);
var hei = (this.heb - 100);
var width = ((this.wib - wid) / 2);
var height = ((this.heb - hei) / 8);
var open = host + '/' + url;
window.open(open,name,"width="+wid+",height="+hei+",top="+height+",left="+width+",dependent=yes,titlebar=no,scrollbars=yes");
}
// STYLES ODN
DN_System_Load.prototype.odn = function(obj,styles){
var parentdiv = this.findobj(obj);
if(!parentdiv){ return; }
if(parentdiv.style){ parentdiv=parentdiv.style; }
parentdiv.display=(styles=='none') ? 'none' : (styles=='block') ? 'block' : (styles=='inline') ? 'inline' : '';
}
// STYLES RDN
DN_System_Load.prototype.rdn = function(obj,styles){
var parentdiv = this.findobj(obj);
if(!parentdiv) { return; }
if(parentdiv.style) { parentdiv = parentdiv.style; }
switch(styles){
 case 'display':
 return (parentdiv.display ? parentdiv.display : '');
 default: return null;
}
}
// TEXTAREA
DN_System_Load.prototype.textarea = function(gui,obj){
var retextarea = this.findobj(obj);
  if(gui<0){ var rows=-5; var cols=-10; } else { var rows=5; var cols=10; }
   var rerows = retextarea.rows + rows;
   var recols = retextarea.cols + cols;
 if(rerows >= 5 && recols >= 45 && recols < 96){
  retextarea.rows = rerows;
  retextarea.cols = recols;
 }
return false;
}
// FONTSIZE
DN_System_Load.prototype.fontsize = function(obj,gui){
var fontcont = this.findobj(obj);
  if(gui<0){ var fsize=-1; } else { var fsize=1; }
   var resize = parseInt(fontcont.style.fontSize) + fsize;
 if(resize >= 9 && resize < 17){
  fontcont.style.fontSize = resize + 'px';

 }
 return false;
}
// RECAPTCHA
DN_System_Load.prototype.recaptcha = function(){
var t = new Date().getTime();
document.getElementById('captcha').innerHTML = '<img src="image.php?to=captcha&t=' + t + '" border="0"><br />';
}
// BLOCKCAPTCHA
DN_System_Load.prototype.blockcaptcha = function(){
var t = new Date().getTime();
document.getElementById('blockcaptcha').innerHTML = '<img src="image.php?to=captcha&t=' + t + '" border="0"><br />';
}
// BROKEN
DN_System_Load.prototype.broken = function(host,url){
if(confirm(message)){
 var open = host + '/' + url;
 window.location = open;
}
}
// CLASS : DN_System_Load


// INIT CLASS
var DN = new DN_System_Load();
// INIT CLASS


// CLASS : DN_AJAX_Initialize
// Init
function DN_AJAX_Initialize(works){
this.works = works ? true : false;
this.reqxml = '';
this.data = '';
}
// Create
DN_AJAX_Initialize.prototype.create = function(){
this.reqxml = '';
if(!this.works){ return false; }
var msxmllist = new Array('Msxml2.XMLHTTP.3.0','Msxml2.XMLHTTP.4.0','Msxml2.XMLHTTP.5.0',
                          'Msxml2.XMLHTTP','Microsoft.XMLHTTP');
for(var i=0; i<msxmllist.length; i++){
 try {
  this.reqxml = new ActiveXObject(msxmllist[i]);
  if(this.reqxml){ return true; }
 } catch(e){}
}

if(!this.reqxml && typeof XMLHttpRequest!="undefined"){
 this.reqxml = new XMLHttpRequest();
 if(this.reqxml){ return true; }
}
return false;
}
// findelm
DN_AJAX_Initialize.prototype.findelm = function(obj){
this.environment = '';
for(i = 0; i < obj.elements.length; i++){
var elm = obj.elements[i];
 if(elm.name && !elm.disabled){
  switch(elm.type){
   case 'text':
   case 'textarea':
   case 'hidden':
    this.environment += elm.value ? '&' + elm.name + '=' + encodeURIComponent(elm.value) : '';
   break;
   case 'select-one':
   case 'checkbox':
   case 'radio':
    this.environment += elm.checked ? '&' + elm.name + '=' + elm.value : '';
   break;
  }
 }
}
return this.environment;
}
// ONREADYSTATECHANGE
DN_AJAX_Initialize.prototype.onreadystatechange = function(build){
if(!this.reqxml && !this.create()){ return false; }
if(typeof build=='function'){ this.reqxml.onreadystatechange = build; } else { alert(build + ' is not function !'); }
}
// SEND
DN_AJAX_Initialize.prototype.sends = function(url,data,metod){
if(!this.reqxml && !this.create()){ return false; }
if(!this.reqxml.readyState && (this.reqxml.readyState < 4)){
 if(metod == 'post'){
  this.reqxml.open('POST',url,true);
  this.reqxml.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
  this.reqxml.setRequestHeader("Content-Length",data.length);
  this.reqxml.send(data);
 } else {
  this.reqxml.open('GET',url,true);
  this.reqxml.setRequestHeader("If-Modified-Since","Sat, 1 Jan 2000 00:00:00 GMT");
  this.reqxml.send(null);
 }
  if(this.reqxml.readyState == 4 && this.reqxml.status == 200){ return true; }
}
return false;
}
// INIT CLASS
if(DN.browser().bw==1){
var AJAX = new DN_AJAX_Initialize(true);
} else {
var AJAX = new DN_AJAX_Initialize(false);
}
// INIT CLASS

// CLASS : DN_System_Hint
// Init
function DN_System_Hint(){}
// SHOW
DN_System_Hint.prototype.show = function(obj,str){
var hint = DN.findobj('hint');
if(!obj){ return; }
if(!DN.documes){ return; }
if(!hint){ return; }
hint.className = 'hint';
hint.style.left = '15px';
hint.style.top = '19px';

obj.onmouseout = function(advance){
hint.style.width = '';
hint.style.visibility = 'hidden';
if(hint.firstChild) hint.removeChild(hint.firstChild);
hint.appendChild(document.createTextNode(str));
};

obj.onmousemove = function(advance){
hint.innerHTML = str;
if  (navigator.appName == "Microsoft Internet Explorer"){ 
var vc = document.getElementsByTagName((!window.ie && document.compatMode && document.compatMode=="CSS1Compat") ? "HTML":"BODY")[0];
} else {
var vc = document.getElementsByTagName((!window.ie && document.compatMode && document.compatMode=="css1compat") ? "html":"body")[0];
}
if(vc){
x = window.event ? event.clientX + vc.scrollLeft : advance.pageX;
y = window.event ? event.clientY + vc.scrollTop : advance.pageY;
//hint.innerHTML = x + ' - ' + y;
vcwidth = vc.clientWidth ? vc.clientWidth + vc.scrollLeft : window.innerWidth + window.pageXOffset;
vcheight = vc.innerHeight ? window.innerHeight + window.pageYOffset : vc.clientHeight + vc.scrollTop;
 hint.style.visibility = 'visible';
 hint.style.opacity = '.90';
 if(hint.offsetWidth>200){ hint.style.width = '200px'; }
  if((x + hint.offsetWidth + 12) > vcwidth){
   hint.style.left = (x - hint.offsetWidth - 4) + 'px';
  } else {
   hint.style.left = (x + 12) + 'px';
  }
  if((y + hint.offsetHeight + 19) > vcheight){
   hint.style.top = (y - hint.offsetHeight) + 'px';
  } else {
   hint.style.top = (y + 19) + 'px';
  }
}
}
}
// INITIALIZE
DN_System_Hint.prototype.initialize = function(){
// CREATE DIV
var hint = document.createElement("DIV");
hint.setAttribute('id','hint');
document.getElementsByTagName('body')[0].appendChild(hint);
hint.style.visibility = 'hidden';
// CREATE DIV
// MARKER
var hintmarker = ['a','img'];
var textmarker = ['title','alt'];
var lenmarker = hintmarker.length;
// MARKER
for(var i=0; i<lenmarker; i++) {
 atr = document.getElementsByTagName(hintmarker[i]);
 for(var j=0; j<atr.length; j++)
 if(viewhint=atr[j].getAttribute(textmarker[i])){
  atr[j].removeAttribute(textmarker[i]);
  HINT.show(atr[j],viewhint);
 }
}
}
// CLASS : DN_System_Hint

// INIT CLASS
var HINT = new DN_System_Hint();
// INIT CLASS
// LOAD || ONLOAD
if(DN.objects){ DN.addsevent(HINT.initialize); }

function DN_System_Scroll(){
this.type = -1; this.intval = 0;
}

DN_System_Scroll.prototype.step = function(){
 var y = ((this.type == 1) ? document.documentElement.scrollTop : document.body.scrollTop), step = 35;
 y -= Math.ceil(y * step / 100);
 y = (y < 0) ? 0 : y;
 if(this.type == 1){
   document.documentElement.scrollTop = y;
 } else {
   document.body.scrollTop = y;
 }
 if(y == 0){
  clearInterval(this.intval); this.intval = 0;
 }
}

DN_System_Scroll.prototype.begin = function(){
 if(this.intval == 0){
  if(document.documentElement && document.documentElement.scrollTop) {
   this.type = 1;
  } else if (document.body && document.body.scrollTop){
   this.type = 2;
  } else {
   this.type = 0;
  }
  if(this.type > 0){
   this.intval = setInterval('SCROLL.step()',50);
  }
 }
}

var SCROLL = new DN_System_Scroll();
