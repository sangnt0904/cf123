<?php
    $g_STT_KHU_VUC_1_s = filter_input(INPUT_POST, "STT_KHU_VUC_1");
    $g_STT_BAN_1_s = filter_input(INPUT_POST, "STT_BAN_1");
    $g_STT_KHU_VUC_2_s = filter_input(INPUT_POST, "STT_KHU_VUC_2");
    $g_STT_BAN_2_s = filter_input(INPUT_POST, "STT_BAN_2");
    
    $conn = mysqli_connect("127.0.0.1", "root", "usbw", "coffeebusiness2", "3307");
    
    $sql = "call thay_doi_ban(" . $g_STT_KHU_VUC_1_s . ", " . $g_STT_BAN_1_s . ", " . $g_STT_KHU_VUC_2_s . ", " .  $g_STT_BAN_2_s . ")";
    $result = mysqli_query($conn, $sql) or die(mysqli_error($conn));

    $row = mysqli_fetch_row($result);
    echo $row[0];
