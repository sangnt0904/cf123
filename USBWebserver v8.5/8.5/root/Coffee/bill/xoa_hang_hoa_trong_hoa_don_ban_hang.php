<?php
    $g_MA_HOA_DON_BAN_HANG_s = filter_input(INPUT_POST, "MA_HOA_DON_BAN_HANG");
    $g_THOI_GIAN_THAO_TAC_MILI_GIAY_s = filter_input(INPUT_POST, "THOI_GIAN_THAO_TAC_MILI_GIAY");
    
    $conn = mysqli_connect("127.0.0.1", "root", "usbw", "coffeebusiness2", "3307");
    
    $sql = "call delete_chi_tiet_hoa_don_ban_hang('" . $g_MA_HOA_DON_BAN_HANG_s . "', '" . $g_THOI_GIAN_THAO_TAC_MILI_GIAY_s . "')";
    $result = mysqli_query($conn, $sql) or die(mysqli_error($conn));

    $row = mysqli_fetch_row($result);
    echo $row[0];
