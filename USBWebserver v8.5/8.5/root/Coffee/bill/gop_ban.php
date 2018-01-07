<?php
    $g_STT_KHU_VUC_BI_GOP_s = filter_input(INPUT_POST, "STT_KHU_VUC_BI_GOP");
    $g_STT_BAN_BI_GOP_s = filter_input(INPUT_POST, "STT_BAN_BI_GOP");
    $g_STT_KHU_VUC_DUOC_GOP_s = filter_input(INPUT_POST, "STT_KHU_VUC_DUOC_GOP");
    $g_STT_BAN_DUOC_GOP_s = filter_input(INPUT_POST, "STT_BAN_DUOC_GOP");
    
    $conn = mysqli_connect("127.0.0.1", "root", "usbw", "coffeebusiness2", "3307");
    
    $sql = "call gop_ban(" . $g_STT_KHU_VUC_BI_GOP_s . ", " . $g_STT_BAN_BI_GOP_s . ", " . $g_STT_KHU_VUC_DUOC_GOP_s . ", " .  $g_STT_BAN_DUOC_GOP_s . ")";
    $result = mysqli_query($conn, $sql) or die(mysqli_error($conn));

    $row = mysqli_fetch_row($result);
    echo $row[0];
