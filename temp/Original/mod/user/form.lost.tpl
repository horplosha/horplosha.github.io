<form action="index.php?dn=user" method="post">
<div class="cont">
  <div class="conttext">
    <div class="form"><br />
      <table>
      <tbody>
        <tr>
          <td>
            <fieldset>
            <legend>�������������� ������</legend>
              <input class="sinput" name="lostmail" style="width:14em" type="text" maxlength="255"  value="������� E-Mail" onclick="if(this.value='������� E-Mail') this.value='';" onblur="if(this.value=='') this.value='������� E-Mail'" /> 
            </fieldset>
            <br />
            <fieldset> 
              <input name="re" value="login" type="hidden" />
              <input name="to" value="send" type="hidden" />
              <input class="button" style="width:14.8em" value="{send_pass}" type="submit" /> 
            </fieldset>
            <br /><br />
            <div class="notice">{rest_pass_hint}</div>
            <br />
          </td>
        </tr>
      </tbody>
      </table>
    </div>
  </div>
</div>
</form>
