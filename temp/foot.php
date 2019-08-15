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
global $db,$setting,$tm,$api,$adv,$siteglobal;
/* ==================================================== ##
## CONTENT                                              ##
## ==================================================== */
$contents = $tm->create('bot');
/* ==================================================== ##
## POWERED                                              ##
## ==================================================== */
$siteglobal['powered'] = "<a href=\"http://danneo.com/\" target=\"_blank\" title=\"CMS Danneo ".$setting['version']."\"><img src=\"temp/".$setting['site_temp']."/images/power.gif\" alt=\"\" /></a>";
/* ==================================================== ##
## BOTSYS                                               ##
## ==================================================== */
if($setting['botsys']=="yes"){
$start = explode(' ',TIMESTART);
$start = $start[0] + $start[1];
$end = microtime();
$end = explode(' ',$end); $end = $end[0] + $end[1];
$total_time = number_format($end - $start,4);
$siteglobal['counting'] = "[ PG.t : ".substr($total_time,0,4)." | DB.q : ".$db->sqlcount." | ".(($setting['cache'] == 1) ? "FR.q : ".$db->filecount." | " : "")."DB.t : ".substr($db->totaltime,0,4)." ]";
} else {
$siteglobal['counting'] = "";
}
/* ==================================================== ##
## DEBUG                                                ##
## ==================================================== */
$siteglobal['debug'] = '';
if($setting['debug']=="yes"){
$siteglobal['debug'].= '<div class="debug"><ol type="1">';
$siteglobal['debug'].= $db->explain;
$siteglobal['debug'].= '</ol></div>';
}
/* ==================================================== ##
## CONTENTS INSERT                                      ##
## ==================================================== */
$siteglobal['insert']['copy'] = '© '.NEWYEAR.' '.$api->siteuni($setting['site_copy']);
$siteglobal['insert']['count'] = $siteglobal['counting'];
$siteglobal['insert']['powered'] = $siteglobal['powered'];
$siteglobal['insert']['debug'] = $siteglobal['debug'];
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
/* ==================================================== ##
## DB CLOSE                                             ##
## ==================================================== */
$db->close();
/* ==================================================== ##
## TEMPLATE PRINT                                       ##
## ==================================================== */
if($setting['rewrite']=="yes" || $siteglobal['gzip']){
$contents = @ob_get_contents();
@ob_end_clean();
if($setting['rewrite']=="yes"){ $contents = $api->seo($contents); }
//
if($siteglobal['gzip']){
// ENCODING
$siteglobal['gzipenc'] = false;
if(strpos($_SERVER['HTTP_ACCEPT_ENCODING'],'x-gzip')!==false){ $siteglobal['gzipenc'] = 'x-gzip'; }
if(strpos($_SERVER['HTTP_ACCEPT_ENCODING'],'gzip')!==false){ $siteglobal['gzipenc'] = 'gzip'; }
// ENCODING
if($siteglobal['gzipenc']){
 @header('Content-Encoding: '.$siteglobal['gzipenc']);
 echo @gzencode($contents,$setting['gziplevel']);
} else {
 echo $contents;
}
// ENCODING
} else {
 echo $contents;
}
//
}
exit;
?>
