<form action="index.php?dn=mail" method="post"> 
<div class="cont">
  <div class="conttext">
    <div class="form">
      <table>
        <tbody>
        <tr>
          <td>
            <div>
              <p><b>*</b> {email_name}</p>
              <input name="sendnames" style="width:12em" type="text" maxlength="50" value="{uname}" title="Введите ваше имя" />
            </div>
            <div>
              <p><b>*</b> {email}:</p>
              <input name="sendmails" style="width:12em" type="text" maxlength="255" value="{umail}" title="{mail_hint}" />
            </div>
            <div>
              <p><b>*</b> {email_text}:</p>
              <textarea cols="40" style="width:96%" rows="10" name="sendtexts" title="Введите текст сообщения"></textarea>
            </div>
            
            <!--if:captcha:yes-->
            <div>
              &nbsp;<a onclick="DN.recaptcha(); return false;" href="javascript:DN.recaptcha(); return false;">Обновить</a>
              <div id="captcha"><img src="image.php?to=captcha&amp;t=12345" alt="" /></div>
              <input name="captcha" style="width:7em" title="Введите цифры на картинке" type="text" maxlength="5" value="" /> <b>*</b>
            </div>
            <!--if-->
            
            <div class="fr">
            <input name="to" value="send" type="hidden" />
            <input class="button" style="width:11.6em" value="{email_send}" type="submit" />
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
