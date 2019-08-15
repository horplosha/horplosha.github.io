<?php
/* ==================================================== ##
##             COPYRIGHTS © DANNEO PHP TEAM             ##
## ==================================================== ##
## PRODUCT : CMS(CONTENT MANAGEMENT SYSTEM)             ##
## LICENSE : GNU 2(General Public License v.2)          ##
## TECHNOLOGIES : PHP & MySQL                           ##
## WWW: www.danneo.com | www.danneo.ru | www.danneo.org ##
## E-MAIL : help@danneo.com                             ##
## ==================================================== */
if(!defined("DNREAD") || !is_object($api) || !is_array($siteglobal)) exit();
/* ==================================================== ##
## GLOBAL                                               ##
## ==================================================== */
global $setting,$siteglobal,$tm,$api;
/* ==================================================== ##
## SEOURL                                               ##
## ==================================================== */
if($setting['rewrite']=="yes"){ ob_start(); }
/* ==================================================== ##
## SITETITLE                                            ##
## ==================================================== */
$siteglobal['title'] = (empty($siteglobal['title'])) ? "" : " - ".$siteglobal['title'];
$siteglobal['title'].= (empty($siteglobal['modname'])) ? "" : " - ".$siteglobal['modname'];
/* ==================================================== ##
## HEADER                                               ##
## ==================================================== */
header("Last-Modified: ".gmdate("D, d M Y H:i:s")." GMT");
header("Content-Type: text/html; charset=".$setting['langcharset']."");
print "<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\n"
      ."<HTML>\n"
      ."<HEAD>\n"
      ."<BASE HREF=\"".$setting['site_url']."/\">\n"
      ."<META HTTP-EQUIV=\"Content-Type\" CONTENT=\"text/html; charset=".$setting['langcharset']."\">\n"
      ."<META HTTP-EQUIV=\"EXPIRES\" CONTENT=\"0\">\n"
      ."<META NAME=\"RESOURCE-TYPE\" CONTENT=\"DOCUMENT\">\n"
      ."<META NAME=\"DISTRIBUTION\" CONTENT=\"GLOBAL\">\n"
      ."<META NAME=\"GENERATOR\" CONTENT=\"Danneo CMS ".$setting['version']."\">\n"
      ."<META NAME=\"AUTHOR\" CONTENT=\"".$setting['site']."\">\n"
      ."<META NAME=\"COPYRIGHT\" CONTENT=\"Copyright (c) ".$setting['site']."\">\n";
print(empty($siteglobal['keywords'])) ? "<META NAME=\"KEYWORDS\" CONTENT=\"".$setting['site_keyword']."\">\n" : "<META NAME=\"KEYWORDS\" CONTENT=\"".$api->sitedp($siteglobal['keywords'])."\">\n";
print(empty($siteglobal['descript'])) ? "<META NAME=\"DESCRIPTION\" CONTENT=\"".$setting['site_descript']."\">\n" : "<META NAME=\"DESCRIPTION\" CONTENT=\"".$api->sitedp($siteglobal['descript'])."\">\n";
print "<META NAME=\"ROBOTS\" CONTENT=\"INDEX, FOLLOW\">\n"
      ."<META NAME=\"REVISIT-AFTER\" CONTENT=\"1 DAYS\">\n"
      ."<TITLE>".$api->siteuni($setting['site'].$siteglobal['title'])."</TITLE>\n"
      ."<LINK REL=\"STYLESHEET\" HREF=\"temp/".$setting['site_temp']."/css/simple.style.css\" TYPE=\"TEXT/CSS\">\n"
      ."<LINK REL=\"alternate\" TYPE=\"application/rss+xml\" TITLE=\"".$api->siteuni($setting['site'])."\" HREF=\"rss.php?dn=news\">\n"
      ."<LINK REL=\"icon\" HREF=\"favicon.ico\" type=\"image/x-icon\">\n"
      ."<LINK REL=\"shortcut icon\" HREF=\"favicon.ico\" TYPE=\"image/x-icon\">\n"
      ."<SCRIPT LANGUAGE=\"javascript\" SRC=\"js/api.js\" TYPE=\"text/javascript\"></SCRIPT>\n"
      ."</HEAD>\n"
      ."<BODY>\n";
?>
