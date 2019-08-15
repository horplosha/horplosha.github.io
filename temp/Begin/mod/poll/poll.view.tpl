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
  <div class="conttext"> 
    <div class="notice">{message}</div> 
  </div>
</div>
<!--buffer:percent:0-->
  <tr>
    <td width="25%">{radio} {val_name}</td>
    <td width="15%">{val_voc}</td>
    <td width="45%"><div class="pollbarout">{val_bar}</div></td>
    <td width="15%">{val_perc} %</td>
  </tr>
<!--buffer-->
