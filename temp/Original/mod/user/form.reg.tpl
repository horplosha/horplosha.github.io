<form action="index.php?dn=user" method="post">
<div class="cont">
  <div class="conttext">
  <div class="form"><br />
    <table width="100%">
    <tbody>
      <tr>
        <td>
          <fieldset>
          <legend>{login}</legend>
          <div>
            <p><b>*</b> {login}:</p>
            <input class="sinput" name="reglogin" size="30" type="text" maxlength="{maxname}" />
            <img src="temp/Original/images/qicon.gif" alt="{login_hint}" />
          </div>
          </fieldset>
          <br />
          <fieldset>
          <legend>{pass}</legend>
          <div>
            <p><b>*</b> {pass}:</p>
            <input class="sinput" name="regpassw" size="30" type="password" maxlength="{maxpass}" />
            <img src="temp/Original/images/qicon.gif" alt="{pass_hint}" />
          </div>
          <div>
            <p><b>*</b> {re_pass}:</p>
            <input class="sinput" name="regpasswconfir" size="30" type="password" maxlength="{maxpass}" />
          </div>
          </fieldset>
          <br />
          <fieldset>
          <legend>{e_mail}</legend>
          <div>
            <p><b>*</b> {e_mail}:</p>
            <input class="sinput" name="regmail" size="30" type="text" maxlength="255" /> 
            <img src="temp/Original/images/qicon.gif" alt="{mail_hint}" />
          </div>
          <div>
            <p><b>*</b> {re_e_mail}:</p>
            <input class="sinput" name="regmailconfir" size="30" type="text" maxlength="255" />
          </div>
          </fieldset>
      
          <!--if:captcha:yes-->
          <br />
          <fieldset>
          <legend>Защита от спама</legend>
          <div>
          <div id="captcha"><img src="image.php?to=captcha&amp;t=12345" alt="" /></div>
          <a onclick="DN.recaptcha(); return false;" href="javascript:DN.recaptcha(); return false;">Обновить</a>
          <div>
          <input class="sinput" name="captcha" size="30" type="text" maxlength="5" value="" title="Введите цифры" /> <b>*</b>
          </div>
          </div>
          </fieldset>
          <!--if-->
      
          <br />
          <div class="ac">
            <input name="re" value="register" type="hidden" />
            <input name="to" value="check" type="hidden" />
            <input class="button" style="width:11.6em" value="{further}" type="submit" />
          </div>
          <br />
          <div class="notice">{all_to_write}</div>
          <br />
        </td>
      </tr>
    </tbody>
    </table>
  </div>
  </div>
</div>
</form>
