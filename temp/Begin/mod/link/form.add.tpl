<form action="index.php?dn=link" method="post">
<div class="cont">
  <div class="conttext">
    <div class="form">
      <table class="ac" width="100%">
        <tbody>
        <tr>
          <td>
          <div>
          <p><b>*</b> —сылка:</p>
          <input name="url" style="width:96%" maxlength="255" type="text" />
          </div>
          <div>
          <p><b>*</b> {title}:</p>
          <input name="title" style="width:96%" maxlength="255" type="text" />
          </div>
          <div>
          <p><b>*</b> {in_cat}:</p>
          <select style="width:23.8em" name="catid"><option value="0"> ----- </option>{sel}</select>
          </div>
          <div>
          <p><b>*</b> {text}:</p>
          <textarea cols="40" style="width:96%" rows="18" name="text"></textarea>
          </div>
        
          <!--if:captcha:yes-->
          <div>
          <a onclick="DN.recaptcha(); return false;" href="javascript:DN.recaptcha(); return false;">ќбновить</a> 
          <div id="captcha"><img src="image.php?to=captcha" alt="" /></div>
          <input class="sinput" name="captcha" size="25" title="¬ведите цифры на картинке" type="text" maxlength="5" value="" />
          </div>
          <!--if-->
          
          <br />
          <div class="ac">
            <input name="re" value="add" type="hidden" />
            <input name="to" value="save" type="hidden" />
            <input class="button" style="width:14em" value="{all_add}" type="submit" />
          </div>
          </td>
        </tr>
        </tbody>
      </table>
      <br />
      <center><div class="notice">{read_text}</div></center>
    </div> 
  </div>
</div>
</form>
