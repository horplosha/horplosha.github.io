<form action="index.php?dn=news" method="post">
<div class="cont">
  <div class="conttext">
  <div class="form">
    <table class="ac" width="100%">
      <tbody>
      <tr>
        <td>
          <div>
          <p><b>*</b> {title}:</p>
          <input name="title" style="width:96%" maxlength="255" type="text" />
          </div>
          <div>
          <p><b>*</b> {in_cat}:</p>
          <select name="catid" style="width:23em">
            {sel}
          </select>
          </div>
          <div>
          <p><b>*</b> {text}:</p>
          <textarea cols="40" style="width:96%" rows="18" name="text"></textarea>
          </div>
          <div>
          <p>{link_img_small}</p>
          <input name="image_thumb" style="width:96%" type="text" maxlength="255" />
          </div>
          <div>
          <p>{link_img_big}</p>
          <input name="image" style="width:96%" type="text" maxlength="255" />
          </div><br />
          <div class="ac">
            <input name="re" value="add" type="hidden" />
            <input name="to" value="save" type="hidden" />
            <input class="button" style="width:14em" value="{all_add}" type="submit" />
          </div><br />
          <div class="notice">
            ѕункты помеченные <b>*</b> об€зательны дл€ заполнени€!
          </div>
        </td>
      </tr>
      </tbody>
    </table>
  </div>
  </div>
</div>
</form>
