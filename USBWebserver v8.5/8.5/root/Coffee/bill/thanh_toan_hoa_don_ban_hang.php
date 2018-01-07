<?php
    $g_MA_HOA_DON_BAN_HANG_s = filter_input(INPUT_POST, "MA_HOA_DON_BAN_HANG");
    
    $conn = mysqli_connect("127.0.0.1", "root", "usbw", "coffeebusiness2", "3307");
    
    $sql = "call thanh_toan_hoa_don_ban_hang('" . $g_MA_HOA_DON_BAN_HANG_s . "')";
    $result = mysqli_query($conn, $sql) or die(mysqli_error($conn));

    $row = mysqli_fetch_row($result);
    echo $row[0];
