<?php
    $g_NGAY_BAT_DAU_s = filter_input(INPUT_GET, "NGAY_BAT_DAU");
    $g_NGAY_KET_THUC_s = filter_input(INPUT_GET, "NGAY_KET_THUC");
    
    $conn = mysqli_connect("127.0.0.1", "root", "usbw", "coffeebusiness2", "3307");
    mysqli_query ($conn, "set character_set_client='utf8'"); 
    mysqli_query ($conn, "set character_set_results='utf8'");
    mysqli_query ($conn, "set collation_connection='utf8_general_ci'"); 
    $sql = "call thong_ke_danh_sach_san_pham_ban_theo_ngay('" . $g_NGAY_BAT_DAU_s . "', '" . $g_NGAY_KET_THUC_s . "')";
    $result = mysqli_query($conn, $sql) or die(mysqli_error($conn));

    $rows = array();
    while($r = mysqli_fetch_assoc($result))
    {
        $rows[] = $r;
    }
    echo json_encode($rows);
