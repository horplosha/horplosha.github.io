<div class="cont">
  <div class="conttitle">
    <h2>{title}</h2>
  </div>
  <div class="conttext" id="fontnews" style="font-size:12px">
    {image}{text}
    {textmore}
    {textnotice}
  </div>
  
  <!--if:video:yes-->
  <div class="conttext ac">
    <object>
    <embed src="{url}/up/mediaplayer.swf" allowscriptaccess="always" allowfullscreen="true" flashvars="file={video}&amp;searchbar=false" width="400" height="350"></embed>
    </object>
  </div>
  <!--if-->
  
  <div class="continfo">
    {public}: {time} <b>|</b> {hits}: {counts} <b>|</b> 
    <a class="linkbutton" title="Увеличить" href="javascript:DN.fontsize('fontnews','1'); return false" onclick="DN.fontsize('fontnews','1'); return false"> [ + ] </a>&nbsp;
    <a class="linkbutton" title="Уменьшить" href="javascript:DN.fontsize('fontnews','-1'); return false" onclick="DN.fontsize('fontnews','-1'); return false"> [ - ] </a>&nbsp;
    <b>|</b> {print}
  </div>
  <div class="continfo">
    {langtags} {tags}
  </div> 
</div>
