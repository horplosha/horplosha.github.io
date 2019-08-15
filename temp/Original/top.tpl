<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ru" lang="ru">
<head>
  <base href="{site_url}" />
  <meta http-equiv="content-type" content="text/html; charset={langcharset}" />
  <meta http-equiv="expires" content="0" />
  <meta name="resource-type" content="document" />
  <meta name="distribution" content="global" />
  <meta name="generator" content="CMS Danneo {version}" />
  <meta name="author" content="{site}" />
  <meta name="copyright" content="Copyright (c) {site}" />
  <meta name="keywords" content="{keywords}" />
  <meta name="description" content="{descript}" />
  <meta name="robots" content="index, follow" />
  <meta name="revisit-after" content="3 days" />
  <meta name="allow-search" content="yes" />
  <title>{title}</title>      
  <link rel="stylesheet" href="temp/Original/css/style.css" type="text/css" />
  <link rel="alternate" type="application/rss+xml" title="{site}" href="rss.php?dn=news" />
  <link rel="icon" href="favicon.ico" type="image/x-icon" />
  <link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />
  <script type="text/javascript" src="js/api.js"></script> 
</head>
<body> 
<table id="main" align="center" cellpadding="0" cellspacing="0">
 <tbody>
  <tr>
   <td>
    <table width="100%" cellpadding="0" cellspacing="0">
     <tbody>
      <tr>
       <td class="temptl">&nbsp;</td>
       <td class="tempt">
        <table class="top" width="100%" cellpadding="0" cellspacing="0">
        <tbody>
          <tr>
            <td id="topleft">
              <a href="/" title="{site}"></a>
            </td>
            <td id="topcenter">	
             &nbsp;
            </td>
            <td id="topright" class="vb">
             <div>DANNEO OPEN FOREVER</div>
            </td>
          </tr>
        </tbody>
        </table>						   
       </td>
       <td class="temptr">&nbsp;</td>
      </tr>
     </tbody>
    </table>
    <table width="100%" cellpadding="0" cellspacing="0">
     <tbody>
      <tr class="vt">
       <td class="templ">&nbsp;</td>
       <td id="wrap"> 
       <div id="topmenu">
         <div id="tunelink">
           <a class="tune" href="javascript:DN.odn('tune',DN.rdn('tune','display') ? '' : 'none');">
           <script type="text/javascript" src="temp/Original/css/color/tunelink.js"></script></a>
         </div>
         {dnmtop}
       </div>
       <script type="text/javascript" src="temp/Original/css/color/tune.js"></script>
       <div id="content"> 
        <table width="100%" cellpadding="0" cellspacing="0">
         <tbody>
          <tr>
           <td id="left">
           {leftblock}
           </td>
           <td id="center">
                <div id="cbody">
                  {topblock}
              
              <!--buffer:sitetitle:0--> 
              <div class="sitetitle">
                <div class="cont">{title}</div>
              </div>                                          
              <!--buffer-->
              
              <!--buffer:siterec:0-->   
              <div class="siterec">
                <div class="siterectime">{time}</div>{link}
              </div>                                
              <!--buffer-->
              
              <!--buffer:pagesout:0-->  
              <div class="pages">{text}: {pages}</div>                                                             
              <!--buffer-->
              
              <!--buffer:ajaxbox:0-->   
              <div class="ac" id="ajaxbox" style="display:none"></div> 
              <!--buffer-->
