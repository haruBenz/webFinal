
<?php
date_default_timezone_set('Asia/Bangkok');

$timestamp = time();
$date_time = date("d-m-Y (D) H:i:s", $timestamp);
$t = date("H");

if ($t < "1") {
 $tr=0; 
 echo $tr ;
} else {
   $tt=$row["or_tt"];
   $med=$row["or_med"];
   $tr=$tt-$med; 
   echo $tr ;
}
?>