<?php
    $g_MA_SAN_PHAM_s = filter_input(INPUT_POST, "MA_SAN_PHAM");
    $g_TEN_SAN_PHAM_s = filter_input(INPUT_POST, "TEN_SAN_PHAM");
    $g_GIA_SAN_PHAM_s = filter_input(INPUT_POST, "GIA_SAN_PHAM");
    $g_GHI_CHU_SAN_PHAM_s = filter_input(INPUT_POST, "GHI_CHU_SAN_PHAM");
    
    $conn = mysqli_connect("127.0.0.1", "root", "usbw", "coffeebusiness2", "3307");
    mysqli_query ($conn, "set character_set_client='utf8'"); 
    mysqli_query ($conn, "set character_set_results='utf8'");
    mysqli_query ($conn, "set collation_connection='utf8_general_ci'"); 
    $sql = "call update_sanpham('" . $g_MA_SAN_PHAM_s . "', '" . $g_TEN_SAN_PHAM_s . "', " . $g_GIA_SAN_PHAM_s . ", '" . $g_GHI_CHU_SAN_PHAM_s . "')";
    $result = mysqli_query($conn, $sql) or die(mysqli_error($conn));

    $row = mysqli_fetch_row($result);
    echo $row[0];
