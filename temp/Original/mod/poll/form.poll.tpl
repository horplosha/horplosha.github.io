<script type="text/javascript"><!--
var vote_ajax = {vote_ajax};
// --></script>
<script language="javascript" src="js/poll.js" type="text/javascript"></script>

<div id="pollajaxbox">
<form action="index.php?dn=poll" method="post" onsubmit="return PollSubmit(this);" name="pollform" id="pollform">
  <div id="pollerrorbox" align="center"></div>
    <input name="id" value="{id}" type="hidden" />
    <input name="ajax" value="{val}" type="hidden" />
    <input name="re" value="add" type="hidden" />
    <div class="cont">
      <div class="conttitle"><h2>{title}</h2></div>
      <div class="conttext">{desc}</div> 
      <div class="conttext">
      <center>
        <table class="poll">
          <tbody>
          {percent}
          </tbody>
        </table>
        </center>
      </div>
      <div class="conttext" align="center">
        <input class="button" value="{button}" type="submit" id="pollbutton" />
        <div id="pollsendbox" style="display:none;" class="notice">
          Ваш голос обрабатывается, ждите ... 
        </div>
      </div>
    </div>
</form>
</div>
<!--buffer:percent:0-->
  <tr>
    <td width="25%">{radio} {val_name}</td>
    <td width="15%">{val_voc}</td>
    <td width="45%"><div class="pollbarout">{val_bar}</div></td>
    <td width="15%">{val_perc} %</td>
  </tr>
<!--buffer-->
