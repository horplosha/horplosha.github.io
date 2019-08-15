{js}
<div class="cont">
  <div class="conttitle">
    <h2><span>{time}</span> : {title}</h2>
  </div>
  <div class="conttext" id="fontnews" style="font-size:12px">{image}{text}{textmore}</div>
  <div class="conttext">{jumplink}</div>
  <div class="continfo"> 
    <a class="linkbutton" title="Увеличить" href="javascript:DN.fontsize('fontnews','1'); return false" onclick="DN.fontsize('fontnews','1'); return false"> [ + ] </a>&nbsp;
    <a class="linkbutton" title="Уменьшить" href="javascript:DN.fontsize('fontnews','-1'); return false" onclick="DN.fontsize('fontnews','-1'); return false"> [ - ] </a>&nbsp;
    <b>|</b> {broken}
  </div>
</div>
