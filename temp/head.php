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
global $setting,$siteglobal,$tm,$api,$adv;
/* ==================================================== ##
## GZIP                                                 ##
## ==================================================== */
$siteglobal['gzip'] = (@extension_loaded('zlib') && isset($GLOBALS['HTTP_SERVER_VARS']['HTTP_ACCEPT_ENCODING']) && $setting['gzip']=='yes') ? 1 : 0;
/* ==================================================== ##
## SEOURL                                               ##
## ==================================================== */
if($setting['rewrite']=="yes" || $siteglobal['gzip']){ ob_start(); }
/* ==================================================== ##
## HEADER                                               ##
## ==================================================== */
@header("Last-Modified: ".gmdate("D, d M Y H:i:s")." GMT");
@header("Content-Type: text/html; charset=".$setting['langcharset']."");
@header("X-Powered-By: CMS Danneo ".$setting['version']."");
/* ==================================================== ##
## SITETITLE                                            ##
## ==================================================== */
$siteglobal['title'] = (empty($siteglobal['title'])) ? "" : $siteglobal['title']." - ";
$siteglobal['title'].= (empty($siteglobal['modname'])) ? "" : $siteglobal['modname']." - ";
/* ==================================================== ##
## HTML                                                 ##
## ==================================================== */
$siteglobal['insert']['site_url'] = $setting['site_url'];
$siteglobal['insert']['langcharset'] = $setting['langcharset'];
$siteglobal['insert']['site_temp'] = $setting['site_temp'];
$siteglobal['insert']['site'] = $setting['site'];
$siteglobal['insert']['keywords'] = (empty($siteglobal['keywords'])) ? $setting['site_keyword'] : $api->sitedp($siteglobal['keywords']);
$siteglobal['insert']['descript'] = (empty($siteglobal['descript'])) ? $setting['site_descript'] : $api->sitedp($siteglobal['descript']);
$siteglobal['insert']['title'] = $api->siteuni($siteglobal['title'].$setting['site']);
$siteglobal['insert']['version'] = $setting['version'];
/* ==================================================== ##
## TOP STANDART OUTPUT                                  ##
## ==================================================== */
$contents = $tm->parsein($tm->create('top'));
/* ==================================================== ##
## CONTENTS PARSE                                       ##
## ==================================================== */
$contents = $api->siteuni($tm->parse($siteglobal['insert'],$contents));
/* ==================================================== ##
## BANNER                                               ##
## ==================================================== */
if(is_object($adv)){ $contents = $adv->banners($contents); }
/* ==================================================== ##
## CONTENTS PRINT                                       ##
## ==================================================== */
echo $contents;
?>

