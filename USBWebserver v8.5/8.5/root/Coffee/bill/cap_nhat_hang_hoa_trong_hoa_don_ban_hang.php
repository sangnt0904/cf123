<?php
    $g_MA_HOA_DON_BAN_HANG_s = filter_input(INPUT_POST, "MA_HOA_DON_BAN_HANG");
    $g_THOI_GIAN_THAO_TAC_MILI_GIAY_s = filter_input(INPUT_POST, "THOI_GIAN_THAO_TAC_MILI_GIAY");
    $g_TEN_SAN_PHAM_BAN_s = filter_input(INPUT_POST, "TEN_SAN_PHAM_BAN");
    $g_SO_LUONG_SAN_PHAM_BAN_s = filter_input(INPUT_POST, "SO_LUONG_SAN_PHAM_BAN");
    $g_DON_GIA_SAN_PHAM_BAN_s = filter_input(INPUT_POST, "DON_GIA_SAN_PHAM_BAN");
    $g_THANH_TIEN_HOA_DON_s = filter_input(INPUT_POST, "THANH_TIEN_HOA_DON");
    
    $conn = mysqli_connect("127.0.0.1", "root", "usbw", "coffeebusiness2", "3307");
    mysqli_query ($conn, "set character_set_client='utf8'"); 
    mysqli_query ($conn, "set character_set_results='utf8'");
    mysqli_query ($conn, "set collation_connection='utf8_general_ci'"); 
    
    $sql = "call update_chi_tiet_hoa_don_ban_hang('" . $g_MA_HOA_DON_BAN_HANG_s . "', '" . $g_THOI_GIAN_THAO_TAC_MILI_GIAY_s . "', '" . $g_TEN_SAN_PHAM_BAN_s . "', " . $g_SO_LUONG_SAN_PHAM_BAN_s . ", " . $g_DON_GIA_SAN_PHAM_BAN_s . ", " . $g_THANH_TIEN_HOA_DON_s . ")";
    $result = mysqli_query($conn, $sql) or die(mysqli_error($conn));

    $row = mysqli_fetch_row($result);
    echo $row[0];
