<?php
    $g_MA_HOA_DON_BAN_HANG_s = filter_input(INPUT_POST, "MA_HOA_DON_BAN_HANG");
    $g_THOI_GIAN_THAO_TAC_MILI_GIAY_s = filter_input(INPUT_POST, "THOI_GIAN_THAO_TAC_MILI_GIAY");
    $g_SO_LUONG_CHUYEN_s = filter_input(INPUT_POST, "SO_LUONG_CHUYEN");
    $g_STT_KHU_VUC_CHUYEN_DEN_s = filter_input(INPUT_POST, "STT_KHU_VUC_CHUYEN_DEN");
    $g_STT_BAN_CHUYEN_DEN_s = filter_input(INPUT_POST, "STT_BAN_CHUYEN_DEN");
    
    $conn = mysqli_connect("127.0.0.1", "root", "usbw", "coffeebusiness2", "3307");
    mysqli_query ($conn, "set character_set_client='utf8'"); 
    mysqli_query ($conn, "set character_set_results='utf8'");
    mysqli_query ($conn, "set collation_connection='utf8_general_ci'"); 
    
    $sql = "call chuyen_hang_hoa_sang_hoa_don_khac('" . $g_MA_HOA_DON_BAN_HANG_s . "', '" . $g_THOI_GIAN_THAO_TAC_MILI_GIAY_s . "', " . $g_SO_LUONG_CHUYEN_s . ", " . $g_STT_KHU_VUC_CHUYEN_DEN_s . ", " . $g_STT_BAN_CHUYEN_DEN_s . ")";
    $result = mysqli_query($conn, $sql) or die(mysqli_error($conn));

    $row = mysqli_fetch_row($result);
    echo $row[0];
