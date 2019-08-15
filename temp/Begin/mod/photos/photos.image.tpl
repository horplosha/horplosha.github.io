<script type="text/javascript" language="javascript">
DN_System_Load.prototype.selfield = function(obj){
  if(DN.findobj(obj)){
    DN.findobj(obj).focus(); DN.findobj(obj).select();
    if(DN.browser().ie){
      var doooom = DN.findobj(obj).createTextRange();
      doooom.execCommand("Copy");
    }
  }
  return false;
}
</script>
<div class="cont">
  <div class="conttext">
    <table class="ac" width="100%">
    <tbody>

      <tr>
        <td colspan="3" class="tableod">
        
          <!--if:lightbox:yes-->
          <link rel="stylesheet" type="text/css" href="js/lightbox/lightbox.css" media="screen" />
          <script type="text/javascript" src="js/jquery-1.2.6.pack.js" language="javascript"></script>
          <script type="text/javascript" src="js/lightbox/jquery.lightbox-0.5.pack.js" language="javascript"></script>
          <script type="text/javascript" language="javascript"><!--
            $(function() {
              $('#image a').lightBox();
            });
          // --></script>
          <div id="image">
            <a href="{image}" title="{alt}">
          <!--if-->
          <!--if:image:yes-->
          <img src="{image}" alt="{alt}"{imagesize} />
          <!--if-->
          <!--if:lightbox:yes-->
          </a>
          </div>
          <!--if-->
          <!--if:video:yes-->
          <object>
          <embed src="{url}/up/mediaplayer.swf" allowscriptaccess="always" allowfullscreen="true" flashvars="file={video}&amp;searchbar=false" width="400" height="350"></embed>
          </object>
          <!--if-->
        </td>
      </tr>
      <tr>
        <td class="tablein" width="30%">{goback}</td>
        <td class="tablein ac" width="40%">{count}</td>
        <td class="tablein ar" width="30%">{next}</td>
      </tr>
    </tbody>
    </table>
    <br />
    <table class="details">
    <tbody>
      <tr class="head">
        <td colspan="2">Дополнительная информация:</td>
      </tr>
      <tr>
        <td class="infone" width="30%">Название:</td>
        <td class="inftwo" width="70%">
          <span class="redfont">{title}</span>
        </td>
      </tr>
      <tr>
        <td class="infone" width="30%">Описание:</td>
        <td class="inftwo" width="70%">{text}</td>
      </tr>
      <!--if:rate:yes-->
      <tr>
        <td class="infone" width="30%">Рейтинг:</td>
        <td id="viewrate" class="inftwo" width="70%">
          {valrate} {rating} / {totalrating} ( <span class="redfont">{countrating}</span> )
        </td>
      </tr>
      <!--if-->
      <!--if:formrate:yes-->
      <tr>
        <td class="infone" width="30%">Ваша оценка:</td>
        <td class="inftwo" width="70%">{formrate}</td>
      </tr>
      <!--if-->
      <tr>
        <td class="infone" width="30%">{langhits}:</td>
        <td class="inftwo" width="70%">{hits}</td>
      </tr>

      <tr>
        <td class="infone" width="30%">
          <a href="javascript:DN.selfield('copylink'); return false" onclick="DN.selfield('copylink'); return false" title="Выделить для копирования">Прямая ссылка</a>
        </td>
        <td class="inftwo" width="70%">
          <input id="copylink" value="{link}" style="width:14em" readonly="readonly" type="text" />
        </td>
      </tr>

      <tr>
        <td class="infone" width="30%">
          <a href="javascript:DN.selfield('copycode'); return false" onclick="DN.selfield('copycode'); return false" title="Выделить для копирования">HTML код</a>
        </td>
        <td class="inftwo" width="70%">
          <input id="copycode" value="<a href=&quot;{link}&quot; target=&quot;_blank&quot;><img src=&quot;{imgurl}&quot; border=&quot;0&quot; alt=&quot;&quot; /></a>" style="width:14em" readonly="readonly" type="text" />
        </td>
      </tr>

      <tr>
        <td class="infone" width="30%">
          <a href="javascript:DN.selfield('copybbcode'); return false" onclick="DN.selfield('copybbcode'); return false" title="Выделить для копирования">BB код</a>
        </td>
        <td class="inftwo" width="70%">
          <input id="copybbcode" value="[url={link}][img]{imgurl}[/img][/url]" style="width:14em" readonly="readonly" type="text" />
        </td>
      </tr>
    </tbody>
    </table>
    <br />
    <table class="ac" width="100%">
    <tbody>
      <tr>
        <td class="tablein" width="30%">{goback}</td>
        <td class="tablein ac" width="40%">{count}</td>
        <td class="tablein ar" width="30%">{next}</td>
      </tr>

      <tr>
        <td colspan="3" class="tablein ac">{view}</td>
      </tr>
    </tbody>
    </table>
  </div>
</div>
