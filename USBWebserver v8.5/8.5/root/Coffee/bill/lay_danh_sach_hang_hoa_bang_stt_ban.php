<?php
    $g_STT_KHU_VUC_s = filter_input(INPUT_GET, "STT_KHU_VUC");
    $g_STT_BAN_s = filter_input(INPUT_GET, "STT_BAN");
    
    $conn = mysqli_connect("127.0.0.1", "root", "usbw", "coffeebusiness2", "3307");
    mysqli_query ($conn, "set character_set_client='utf8'"); 
    mysqli_query ($conn, "set character_set_results='utf8'");
    mysqli_query ($conn, "set collation_connection='utf8_general_ci'"); 
    $sql = "call select_danh_sach_hang_hoa_1_ban(" . $g_STT_KHU_VUC_s . ", " . $g_STT_BAN_s . ")";
    $result = mysqli_query($conn, $sql) or die(mysqli_error($conn));

    $rows = array();
    while($r = mysqli_fetch_assoc($result))
    {
        $rows[] = $r;
    }
    echo json_encode($rows);
