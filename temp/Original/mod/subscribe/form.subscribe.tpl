<form action="subscribe/" method="post" name="modsubscribe" id="modsubscribe" onsubmit="return modsc();">
<div class="cont">
  <div class="conttext">
    <div class="form">
      <table width="100%">
      <tbody class="ac">
        <tr>
          <td>
          <fieldset>
            <div>
              <p><b>*</b> {subscribe_your_name}</p>
              <input style="width:14em" name="subname" type="text" maxlength="255"  value="Имя" onclick="if(this.value='Имя') this.value='';" onblur="if(this.value=='') this.value='Имя'" />
            </div>
            <div>
              <p><b>*</b> {subscribe_your_mail}</p>
              <input style="width:14em" name="submail" type="text" maxlength="60" value="your@mail.ru" onclick="if(this.value='your@mail.ru') this.value='';" onblur="if(this.value=='') this.value='your@mail.ru'" />
            </div>
            <div>
              <p>&nbsp; {subscribe_your_format}</p>
              <select name="subformat" style="width:13.3em">
                <option value="0" selected="selected">Text</option>
                <option value="1">Html</option>
              </select>
            </div>
          </fieldset>
           <br /> 
          <fieldset>
            <div><br />
              <input name="to" value="check" type="hidden" />
              <input class="button" style="width:14.8em" value="{subscribe_button}" type="submit" />
            </div>
          </fieldset><br />
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
