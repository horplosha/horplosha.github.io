<form action="index.php?dn=user" method="post">
<div class="errtitle">
  <div class="cont">{ou_title}</div>
</div> 
<div class="cont">
  <div class="conttext">
    <div class="form">
    <table align="center">
      <tbody>
      <tr>
        <td>
        <br />
          <fieldset>
            <legend>¬ход</legend>
            <div>
              <p>{login}:</p>
              <input class="sinput" name="login" size="35" type="text" maxlength="{maxname}" />
            </div>
            <div>
              <p>{pass}:</p>
              <input class="sinput" name="passw" size="35" type="password" maxlength="{maxpass}" />
            </div>
          </fieldset>
          <br />
          <fieldset> 
            <p class="ac">
              <input name="re" value="login" type="hidden" />
              <input name="to" value="check" type="hidden" />
              <input class="button" style="width:11.6em" value="{enter}" type="submit" />
            </p>
          </fieldset>
          <br /> 
          <fieldset>
            <p><a href="{linklost}" title="{send_pass}">{send_pass}</a></p>
            <p><a href="{linkreg}" title="{registr}">{registr}</a></p>
          </fieldset>
        <br />
        </td>
      </tr>
      </tbody>
    </table>
    </div>
  </div>
</div>
</form>
