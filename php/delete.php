<?php include_once 'Dbconnects.php';
$member_HN=$_GET['HN'];
if(isset($_GET['HN']))
{
    $delete_id = $_GET['id'];
    $sql_delete = mysqli_query($connect,"DELETE FROM message WHERE id='$delete_id'"); 
    if($sql_delete){
        echo "<script type='text/javascript'>";
        echo "alert('ลบข้อความสำเร็จ');";
        // echo "window.location = 'read_msg.php?HN=$member_HN'; ";
        echo "window.location='javascript:history.back()'; ";
        
        echo "</script>";
        
    }else{
        echo mysqli_error($connect);
    }
}

?>