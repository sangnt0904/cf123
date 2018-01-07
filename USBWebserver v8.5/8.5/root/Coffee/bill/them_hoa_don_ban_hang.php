<?php
    $g_STT_KHU_VUC_s = filter_input(INPUT_POST, "STT_KHU_VUC");
    $g_STT_BAN_s = filter_input(INPUT_POST, "STT_BAN");
    
    $conn = mysqli_connect("127.0.0.1", "root", "usbw", "coffeebusiness2", "3307");
    
    $result = mysqli_query($conn, "call insert_hoa_don_ban_hang(" . $g_STT_KHU_VUC_s . ", " . $g_STT_BAN_s . ")") or die(mysqli_error($conn));

    $row = mysqli_fetch_row($result);
    echo $row[0];
