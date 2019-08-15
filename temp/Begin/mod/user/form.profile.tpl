<script language="javascript"><!--
var button = new Array(
                       'userdata'<!--if:editpass:yes-->,
                       'changepass'<!--if--><!--if:editmail:yes-->,
                       'changemail'<!--if-->
                       );
DN_System_Load.prototype.tabs = function(id){
  for(var i=0; i<button.length; i++){
    DN.findobj(button[i] + 'box').style.display = (id == button[i]) ? 'block' : 'none';
    DN.findobj(button[i]).className = (id == button[i]) ? 'usertabon' : 'usertaboff';
  }
}
// --></script>
<div class="cont">
<div class="conttext">
  <div id="userdata">
    <a href="javascript:DN.tabs('userdata'); return false" onclick="DN.tabs('userdata'); return false">{user_data}</a>
  </div>
  <!--if:editpass:yes-->
  <div id="changepass">
    <a href="javascript:DN.tabs('changepass'); return false" onclick="DN.tabs('changepass'); return false">{chang_pass}</a>
  </div>
  <!--if-->
  <!--if:editmail:yes-->
  <div id="changemail">
    <a href="javascript:DN.tabs('changemail'); return false" onclick="DN.tabs('changemail'); return false">{chang_email}</a>
  </div>
  <!--if-->
</div>  
</div>
<div class="sitetitle">
  <div class="cont">{user_data}</div>
</div>
<div class="cont">
  <div class="conttext">
    <div class="form">
      <div id="userdatabox">
      <form action="index.php?dn=user" method="post">
      <table align="center" width="100%"> 
      <tbody>
        <tr>
          <td>
          <fieldset>
            <legend>ICQ:</legend>
            <input name="edit[icq]" style="width:14em" maxlength="15" type="text" value="{icq}"> 
            <img src="temp/Begin/images/qicon.gif" alt="{icq_hint}" align="absmiddle">
          </fieldset>
          </td>
        </tr>
        <tr>
          <td>
          <fieldset>
            <legend>MSN:</legend>
            <input name="edit[msn]" style="width:14em" type="text" maxlength="50" value="{msn}"> 
            <img src="temp/Begin/images/qicon.gif" alt="{msn_hint}" align="absmiddle">
          </fieldset>
          </td>
        </tr>
        <tr>
          <td>
          <fieldset>
            <legend>URL</legend>
            <input name="edit[www]" style="width:14em" type="text" maxlength="50" value="{url}"> 
            <img src="temp/Begin/images/qicon.gif" alt="{www_hint}" align="absmiddle">
          </fieldset>
          <br />
          </td>
        </tr>
        
        {addit_fields}
        <!--buffer:field:0-->
        <tr>
          <td>
          <fieldset>
            <legend>{name}</legend>
            {field}
          </fieldset>
          </td>
        </tr>
        <!--buffer-->

        <!--buffer:apart:0-->
        <tr>
          <td>{name}</td>
        </tr>
        <!--buffer-->

          <td align="right"><br />
            <div class="ac">
            <input name="to" value="redata" type="hidden">
            <input class="button" value="{up_data}" type="submit">
            </div>
          </td>
        </tr>
      </tbody>
      </table>
      </form>
      </div>

      <!--if:editpass:yes-->
      <div id="changepassbox" style="display:none;">
      <form action="index.php?dn=user" method="post">
      <div class="conttitle">{chang_pass}</div>
      <table align="center" width="100%">
      <tbody>
        <tr>
          <td>
          <fieldset>
            <legend>{pass}</legend>
            <input name="onepassw" size="30" type="password" maxlength="{maxpass}"> 
            <img src="temp/Begin/images/qicon.gif" alt="{pass_hint}" align="absmiddle">
          </fieldset>
          </td>
        </tr>
        <tr>
          <td>
          <fieldset>
            <legend>{re_pass}</legend>
            <input name="twopassw" size="30" type="password" maxlength="{maxpass}">
          </fieldset>
          </td>
        </tr>
        <tr>
          <td align="right"><br />
            <div class="ac">
            <input name="to" value="repassw" type="hidden">
            <input class="button" value="{chang_button_pass}" type="submit">
          </div>
          </td>
        </tr>
      </tbody>
      </table>
      </form>
      </div>
      <!--if-->
    
      <!--if:editmail:yes-->
      <div id="changemailbox" style="display:none;">
      <form action="index.php?dn=user" method="post">
      <div class="conttitle">{chang_email}</div>
      <table align="center" width="100%">
      <tbody>
        <tr>
          <td>
          <fieldset>
            <legend>{e_mail}</legend>
            <input name="edit[onemail]" size="30" type="text" maxlength="255" value="{umail}"> 
            <img src="temp/Begin/images/qicon.gif" alt="{mail_hint}" align="absmiddle">
          </fieldset>
          </td>
        </tr>
        <tr>
          <td>
          <fieldset>
            <legend>{re_e_mail}</legend>
            <input name="edit[twomail]" size="30" type="text" maxlength="255" value="{umail}">
          </fieldset>
          </td>
        </tr>
        <tr>
          <td><br />
            <div class="ac">
            <input name="to" value="remail" type="hidden">
            <input class="button" value="{chang_button_email}" type="submit">
            </div>
          </td>
        </tr>
      </tbody>
      </table>
      </form>
      </div>
      <!--if-->
      
    </div>
  </div>
</div>
