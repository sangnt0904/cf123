function initializeElements()
{
    $("#alert_panel").click(function(evt)
    {
        $("#alert_panel").css('display', 'none');
    }); 
    
    setCurrentDate("begin_date_txt");
    setCurrentDate("end_date_txt");
    
    for(var i=1; i<= g_tableNumber_i; i++)
    {
        $("#area").append('<div id="table' + i +'" class="table-button" onclick=selectTable(' + i + ') ondblclick=deleteBill()><label id="table_title' + i + '" class="table-title">' + i + '</label><br><label id="bill_total_lbl' + i + '" class="bill-total-label">-</label></div>');
        $("#from_table").append('<option value="' + i + '">' + i + '</option>');
        $("#to_table").append('<option value="' + i + '">' + i + '</option>');
        $("#split_table1").append('<option value="' + i + '">' + i + '</option>');
        $("#split_table2").append('<option value="' + i + '">' + i + '</option>');
        $("#exchange_table1").append('<option value="' + i + '">' + i + '</option>');
        $("#exchange_table2").append('<option value="' + i + '">' + i + '</option>');
    }
}

function resetAllAreasColor()
{
    for(var i=1; i<=g_areaNumber_i; i++)
    {
        $("#area" + i).css('background-color','#ffc335');
        $("#area" + i).css('color', 'black');
    }
}

function selectArea(areaId)
{
    g_currentAreaId_i = areaId;
    resetAllAreasColor();
    $("#area" + areaId).css('background-color','#705411');
    $("#area" + areaId).css('color','white');
    resetAllTablesColor();
    $.post("bill/lay_danh_sach_hoa_don.php", {STT_KHU_VUC: areaId}).done(
        function(data)
        {
            g_listOfBillInArea_obj = $.parseJSON(data);
            if(data !== "[]")
            {
                $.each(g_listOfBillInArea_obj, function(i, item) {
                    var l_tableId_s = item.STT_BAN;
                    $("#table" + l_tableId_s).css('background-color', '#4f3906');                    
                    $("#bill_total_lbl" + l_tableId_s).text(numberWithCommas(item.TONG_TIEN));     
                    $("#bill_total_lbl" + l_tableId_s).css('color','yellow');
                    $("#table_title" + l_tableId_s).css('color','yellow');
                });
            }
            getBillIdByTableId(g_currentTableId_i);
            selectAreaWithPaidBills();
        }
    );
}

function selectAreaWithPaidBills()
{
    $.post("bill/lay_danh_sach_ban_da_thanh_toan_gan_day.php", {STT_KHU_VUC: g_currentAreaId_i}).done(
        function(data)
        {
            var l_listOfPaidBillInArea_obj = $.parseJSON(data);
            if(data !== "[]")
            {
                $.each(l_listOfPaidBillInArea_obj, function(i, item) {
                    var l_tableId_s = item.STT_BAN;                 
                    $("#bill_total_lbl" + l_tableId_s).text(numberWithCommas(item.TONG_TIEN));     
                    $("#bill_total_lbl" + l_tableId_s).css('color','red');
                });
            }
        }
    );
}