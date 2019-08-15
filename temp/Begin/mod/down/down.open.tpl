{js}
<div class="cont">
  <div class="conttitle"><h2>{title}</h2></div>
  <div class="conttext" id="fontnews" style="font-size:12px">
    {image}{text}
    {textmore}
    <div class="clear"></div>
    {textnotice}
  </div>
  <div class="continfo">
    {langtags} {tags}
  </div>
  <div class="continfo">
    {public}: {time} <b>|</b> 
    <a class="linkbutton" title="Увеличить" href="javascript:DN.fontsize('fontnews','1'); return false" onclick="DN.fontsize('fontnews','1'); return false"> [ + ] </a>&nbsp;
    <a class="linkbutton" title="Уменьшить" href="javascript:DN.fontsize('fontnews','-1'); return false" onclick="DN.fontsize('fontnews','-1'); return false"> [ - ] </a>&nbsp;
    <b>|</b> {broken}
  </div>
  <div class="conttext ac"><p>{load}</p></div> 
</div>
<div class="cont">
  <div class="conttext">
    <table class="details" width="100%">
      <tbody>
        <tr class="head">
          <td colspan="2">Дополнительная информация:</td>
        </tr>
        <!--if:viewuser:yes-->
        <tr>
          <td class="infone" width="50%">Ограничения:</td>
          <td class="inftwo" width="50%">
            <a href="{linkreg}">{uo}</a>
          </td>
        </tr>
        <!--if-->
        <tr>
          <td class="infone" width="50%">{hits}:</td>
          <td class="inftwo" width="50%">{counts}</td>
        </tr>
        <tr>
          <td class="infone" width="50%">{trans}:</td>
          <td class="inftwo" width="50%">{downs}</td>
        </tr>
        
        <!--if:rating:yes-->
        <tr>
          <td class="infone" width="50%">{langrate}:</td>
          <td class="inftwo" width="50%" id="viewrate">
            {valrate} {rating} / {totalrating} ( <span class="redfont">{countrating}</span> )
          </td>
        </tr>
        <!--if-->
        
        <!--if:auth:yes-->
        <tr>
          <td class="infone" width="50%">{langauth}:</td>
        <td class="inftwo" width="50%">{valauth}</td>
        </tr>
        <!--if-->
        
        <!--if:mail:yes-->
        <tr>
          <td class="infone" width="50%">E-Mail:</td>
          <td class="inftwo" width="50%">{valmail}</td>
        </tr>
        <!--if-->

        <!--if:type:yes-->
        <tr>
          <td class="infone" width="50%">{langtype}:</td>
        <td class="inftwo" width="50%">{valtype}</td>
        </tr>
        <!--if-->

        <!--if:size:yes-->
        <tr>
          <td class="infone" width="50%">{langsize}:</td>
          <td class="inftwo" width="50%">{valsize}</td>
        </tr>
        <!--if-->

        <!--if:mirror:yes-->
        <tr>
          <td class="infone" width="50%">{langmir}:</td>
          <td class="inftwo" width="50%">{valmir}</td>
        </tr>
        <!--if--> 
        
    </tbody>
    </table>
  </div>
</div>
