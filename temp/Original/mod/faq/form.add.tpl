<form action="index.php?dn=faq" method="post">
<div class="cont">
  <div class="conttext">
    <div class="form">
      <table class="ac" width="100%">
      <tbody>
        <tr>
          <td>
            <div>
              <p><b>*</b> ���� ���:</p>
              <input name="faqauthor" style="width:20em" maxlength="255" type="text" />
            </div>
            <div>
              <p><b>*</b> ��� e-mail:</p>
              <input name="faqmail" style="width:20em" maxlength="255" type="text" />
            </div>
            <div>
              <p><b>*</b> {in_cat}:</p>
              <select name="catid" style="width:18.8em">
                <option value="0"> ----- </option>{sel}
              </select>
            </div>
            <div>
              <p><b>*</b> ��� ������:</p>
              <textarea cols="40" style="width:96%" rows="11" name="faqask"></textarea>
            </div>
      
            <!--if:captcha:yes-->
            <div>
              <a onclick="DN.recaptcha(); return false;" href="javascript:DN.recaptcha(); return false;">��������</a>
              <div id="captcha"><img src="image.php?to=captcha" alt="" /></div>
              <input class="sinput" name="captcha" size="15" type="text" maxlength="5" value="" title="������������� ���" />
            </div>
            <!--if-->
            
            <div class="ac">
              <input name="re" value="add" type="hidden" />
              <input class="button" style="width:14em" value="���������" type="submit" />
            </div>
            <br />
            <div class="notice">
              ������ ���������� <b>*</b> ����������� ��� ����������!
            </div>
          </td>
        </tr>
      </tbody>
      </table>
    </div>
  </div>
</div>
</form>
