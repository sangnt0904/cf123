<?php
    $g_STT_KHU_VUC_s = filter_input(INPUT_POST, "STT_KHU_VUC");
    
    $conn = mysqli_connect("127.0.0.1", "root", "usbw", "coffeebusiness2", "3307");
    $result = mysqli_query($conn, "call select_danh_sach_hoa_don_1_khu_vuc(" . $g_STT_KHU_VUC_s . ")") or die(mysqli_error($conn));

    $rows = array();
    while($r = mysqli_fetch_assoc($result))
    {
        $rows[] = $r;
    }
    
    echo json_encode($rows);
