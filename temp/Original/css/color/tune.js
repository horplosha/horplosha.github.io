
/* TUNEWIDTH */
function TuneWidth(value){
    var expdate = new Date (); 
    expdate.setTime(expdate.getTime() + (3650 * 24 * 60 * 60 * 1000));
    document.cookie = "tunewidth=" + escape (value) + "; expires=" + expdate.toGMTString() + "; path=/";
};
    var prefix = "tunewidth=";
    var cookieStartIndex = document.cookie.indexOf(prefix); 
    var cookieEndIndex = document.cookie.indexOf(";", cookieStartIndex + prefix.length);
  
    if (cookieEndIndex == -1)
        cookieEndIndex = document.cookie.length;
        var value=unescape(document.cookie.substring(cookieStartIndex + prefix.length, cookieEndIndex));
        
    if ((value!='min') & (value!='norm') & (value!='max')){ 
        document.write('<style rel="stylesheet" type="text/css">#main {width: 54.29em}</style>'); /* Размер по умолчанию */
        }
        else {
        if (value=='min'){ document.write('<style rel="stylesheet" type="text/css">#main {width: 41.85em}</style>'); }  /* Размер 770px оптимизирован под 800 */
        if (value=='norm'){ document.write('<style rel="stylesheet" type="text/css">#main {width: 54.29em}</style>'); } /* Размер 999px оптимизирован под 1024 */ 
        if (value=='max'){ document.write('<style rel="stylesheet" type="text/css">#main {width: 98%}</style>'); }      /* Максимальный "резиновый" размер */
    } 
/***/

/* TUNECOLOR */
function TuneColor(value){
    var expdate = new Date (); 
    expdate.setTime(expdate.getTime() + (3650 * 24 * 60 * 60 * 1000));
    document.cookie = "tunecolor=" + escape (value) + "; expires=" + expdate.toGMTString() + "; path=/";
};
      
    var prefix = "tunecolor=";
    var cookieStartIndex = document.cookie.indexOf(prefix);
    var cookieEndIndex = document.cookie.indexOf(";", cookieStartIndex + prefix.length);
  
    if (cookieEndIndex == -1)
        cookieEndIndex = document.cookie.length;
        var value=unescape(document.cookie.substring(cookieStartIndex + prefix.length, cookieEndIndex));
    
    if ((value!='1') & (value!='2') & (value!='3') & (value!='4') & (value!='5') & (value!='6') & (value!='7') & (value!='8') & (value!='9') & (value!='10') & (value!='11') & (value!='12')){
        document.write('<link rel=stylesheet type=text/css href=/temp/Original/css/color/light_blue.css>'); /* Стиль по умолчанию */
        }
        else {
        if (value=='1'){ document.write('<link rel=stylesheet type=text/css href=/temp/Original/css/color/gray.css>'); }
        if (value=='2'){ document.write('<link rel=stylesheet type=text/css href=/temp/Original/css/color/blue.css>'); }
        if (value=='3'){ document.write('<link rel=stylesheet type=text/css href=/temp/Original/css/color/red.css>');  }
        if (value=='4'){ document.write('<link rel=stylesheet type=text/css href=/temp/Original/css/color/green.css>'); }
        if (value=='5'){ document.write('<link rel=stylesheet type=text/css href=/temp/Original/css/color/brown.css>'); }
        if (value=='6'){ document.write('<link rel=stylesheet type=text/css href=/temp/Original/css/color/violet.css>'); }  
        if (value=='7'){ document.write('<link rel=stylesheet type=text/css href=/temp/Original/css/color/turquoise.css>'); }  
        if (value=='8'){ document.write('<link rel=stylesheet type=text/css href=/temp/Original/css/color/light_blue.css>'); } 
        if (value=='9'){ document.write('<link rel=stylesheet type=text/css href=/temp/Original/css/color/crimson.css>'); } 
        if (value=='10'){ document.write('<link rel=stylesheet type=text/css href=/temp/Original/css/color/dark_green.css>'); } 
        if (value=='11'){ document.write('<link rel=stylesheet type=text/css href=/temp/Original/css/color/magenta.css>'); } 
        if (value=='12'){ document.write('<link rel=stylesheet type=text/css href=/temp/Original/css/color/olive.css>'); }
    }
/***/

document.cookie="cookie=true";
if (navigator.cookieEnabled) {
  document.write('\n'
  + '<div id=\"tune\" style=\"display:none\" class=\"tuning ar\">\n' 
  + '    <div class=\"lin ar\">\n'
  + '      <a class=\"wid\" id=\"b\" href=\"/\" title=\"Ширина сайта максимальная\" onclick=\"TuneWidth(\'max\')\">98%</a>\n'
  + '      <a class=\"wid\" id=\"s\" href=\"/\" title=\"Ширина сайта 1024 px\" onclick=\"TuneWidth(\'norm\')\">1024</a>\n'
  + '      <a class=\"wid\" id=\"m\" href=\"/\" title=\"Ширина сайта 800 px\" onclick=\"TuneWidth(\'min\')\">800</a>\n'
  + '    </div>\n'
  + '    <div class=\"lin ar\">\n' 
  + '      <a class=\"olive\" href=\"/\" title=\"Оливковый\" onclick=\"TuneColor(\'12\')\">&nbsp;</a>\n' 
  + '      <a class=\"magenta\" href=\"/\" title=\"Пурпурный\" onclick=\"TuneColor(\'11\')\">&nbsp;</a>\n' 
  + '      <a class=\"dark_green\" href=\"/\" title=\"Темно-зеленый\" onclick=\"TuneColor(\'10\')\">&nbsp;</a>\n'
  + '      <a class=\"crimson\" href=\"/\" title=\"Темно-красный\" onclick=\"TuneColor(\'9\')\">&nbsp;</a>\n' 
  + '      <a class=\"blue\" href=\"/\" title=\"Синий\" onclick=\"TuneColor(\'2\')\">&nbsp;</a>\n'
  + '      <a class=\"turquoise\" href=\"/\" title=\"Бирюзовый\" onclick=\"TuneColor(\'7\')\">&nbsp;</a>\n'
  + '      <a class=\"violet\" href=\"/\" title=\"Фиолетовый\" onclick=\"TuneColor(\'6\')\">&nbsp;</a>\n' 
  + '      <a class=\"brown\" href=\"/\" title=\"Коричневый\" onclick=\"TuneColor(\'5\')\">&nbsp;</a>\n' 
  + '      <a class=\"green\" href=\"/\" title=\"Зеленый\" onclick=\"TuneColor(\'4\')\">&nbsp;</a>\n'
  + '      <a class=\"red\" href=\"/\" title=\"Красный\" onclick=\"TuneColor(\'3\')\">&nbsp;</a>\n' 
  + '      <a class=\"light_blue\" href=\"/\" title=\"Светло-синий\" onclick=\"TuneColor(\'8\')\">&nbsp;</a>\n'
  + '      <a class=\"gray\" href=\"/\" title=\"Серый\" onclick=\"TuneColor(\'1\')\">&nbsp;</a>\n'
  + '    </div>\n'
  + '</div>\n'
  ); 
  } 
  else {
  document.write('\n'
  + '<div id=\"tune\" style=\"display:none\" class=\"cookieerr\">\n' 
  + '    Для полноценной работы с сайтом, в вашем браузере должны быть включены Cookies!\n'
  + '</div>\n'
  );                   
}      
