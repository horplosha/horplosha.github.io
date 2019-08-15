{jsvar}
<script language="javascript" src="js/comment.js" type="text/javascript"></script>
<form action="index.php?dn=poll" method="post" onsubmit="return COMMENT.submit(this,'poll');" name="comform" id="comform">
<div class="cont">
  <div class="conttext">
  <div class="conttext ac">
    <div class="al" id="errorbox"></div>
    <div class="sitenotice al" id="sendbox" style="display:none">
      <img src="temp/Original/images/progress.gif" class="fl" alt="" /> <strong>Идёт отправка комментария ... </strong>
    </div>
  </div>
  <div class="form">
    <table class="ac">
      <tbody>
      <tr>
        <td>
          <div>
            <p><b>*</b> {comment_name}:</p>
            <input name="comname" id="comname" size="35" type="text" maxlength="50" value="{uname}" title="Введите ваше имя" />
          </div>
          <div>
            <input name="comtitle" id="comtitle" style="width:96%" maxlength="255" value="{title}" type="hidden" />
          </div>
          <div>
            <p><b>*</b> Сообщение:</p>
            <textarea cols="60" style="width:96%" rows="10" onchange="COMMENT.posit(this)" onclick="COMMENT.posit(this)" name="comtext" id="comtext" title="Введите текст вашего сообщения"></textarea>
          </div>
                
          <!--if:editor:yes-->
          <div>
            <input class="button" accesskey="h" onclick="COMMENT.winins('url')" value="URL" type="button" />
            <input class="button" accesskey="e" onclick="COMMENT.winins('mail')" value="MAIL" type="button" />
            <input class="button" accesskey="b" onclick="COMMENT.insert('B')" value="B" type="button" />
            <input class="button" accesskey="i" onclick="COMMENT.insert('I')" value="I" type="button" />
            <input class="button" accesskey="u" onclick="COMMENT.insert('U')" value="U" type="button" />
            <input class="button" accesskey="+" onclick="COMMENT.rearea(+2,'comtext')" value="+" type="button" />
            <input class="button" accesskey="-" onclick="COMMENT.rearea(-2,'comtext')" value="-" type="button" />
          </div>
          <!--if-->
                
          <!--if:smilie:yes-->
          <div>{smilielist}</div>
          <!--if-->
        
          <!--if:captcha:yes-->
          <div>
            <div id="captcha"><img src="image.php?to=captcha" alt="" /></div>
            <p><a onclick="DN.recaptcha(); return false;" href="javascript:DN.recaptcha(); return false;">Обновить</a></p>
          </div> 
          <div>
            <p><input name="captcha" style="width:9em" type="text" maxlength="5" value="" title="Код проверки" /> <b>*</b></p>
            </div>
          <!--if-->
      
          <div class="fr">
            <input name="id" value="{id}" type="hidden" />
            <input name="ajax" value="{val}" type="hidden" />
            <input name="re" value="comment" type="hidden" />
            <input class="button" style="width:10em" value="{comment_add_button}" type="submit" id="button" />&nbsp;
          </div>                
          <div class="clear"></div>
          <div class="notice">
            Пункты помеченные <b>*</b> обязательны для заполнения!
          </div>
        </td>
      </tr>
      </tbody>
    </table>
  </div>
  </div>
</div>
</form>
