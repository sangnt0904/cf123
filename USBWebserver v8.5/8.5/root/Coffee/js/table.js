function resetAllTablesColor()
{
    for(var i=1; i<=g_tableNumber_i; i++)
    {
        $("#table" + i).css('background-color', '#f0ff93');
        $("#table" + i).css('color','black');
        $("#table" + i).attr('value', i);
        $("#table_title" + i).css('color','black');
        $("#bill_total_lbl" + i).css('color','black');
        $("#bill_total_lbl" + i).text("-");
    }                
}

function selectTable(tableId)
{
    g_currentTableId_i = tableId;

    getBillIdByTableId(tableId);
    $("#bill_info_list").jqGrid('setCaption', g_areaNameList_arr[g_currentAreaId_i] + " " + tableId);
    $("#table_name").text(g_areaNameList_arr[g_currentAreaId_i] + " " + tableId);
    $("#bill_info_list").setGridParam({datatype:'json', page:1, url: "bill/lay_danh_sach_hang_hoa_bang_ma_hoa_don.php?MA_HOA_DON_BAN_HANG=" + g_currentBillId_s}).trigger('reloadGrid');
}

function isSelectedTable()
{
    if(g_currentTableId_i === 0)
    {
        alertFull("Vui lòng chọn bàn!");
        return false;
    }

    return true;
}