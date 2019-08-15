<div class="cont">
  <div class="conttitle">
    <h2>{title}</h2>
  </div>
  <!--if:action:yes-->
  <div class="conttext">
    <p>Оглавление:</p>
    <ol>{action}</ol>
  </div>
  <!--if-->
  <div class="conttext" id="fontnews" style="line-height:145%;font-size:12px">
    {image}{text}
    {textnotice}
    <p class="notice">{down}</p>
  </div>
  <div class="conttext">
    <div>{pages}</div>
  </div> 
  <div class="continfo">
    {public}: {time} <b>|</b> {hits}: {counts} <b>|</b> 
    <a class="linkbutton" title="Увеличить" href="javascript:DN.fontsize('fontnews','1'); return false" onclick="DN.fontsize('fontnews','1'); return false"> [ + ] </a>&nbsp;
    <a class="linkbutton" title="Уменьшить" href="javascript:DN.fontsize('fontnews','-1'); return false" onclick="DN.fontsize('fontnews','-1'); return false"> [ - ] </a>&nbsp;
    <b>|</b> {print}
  </div> 
</div>
