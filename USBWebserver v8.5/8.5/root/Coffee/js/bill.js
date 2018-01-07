function loadBillList()
{
    $("#bill_info_list").jqGrid({
       url: "",
       loadonce:true,
       datatype: "json",
       colNames: ["Mã hóa đơn", "Ngày giờ thao tac", "Tên đồ dùng", "Số lượng", "Đơn giá", "Thành tiền"],
       colModel: [
           {name:'MA_HOA_DON_BAN_HANG',index:'MA_HOA_DON_BAN_HANG',hidden:true},
           {name:'THOI_GIAN_THAO_TAC_MILI_GIAY',index:'THOI_GIAN_THAO_TAC_MILI_GIAY',hidden:true},
           {name:'TEN_SAN_PHAM_BAN',index:'TEN_SAN_PHAM_BAN',width:105, editable: true},
           {name:'SO_LUONG_SAN_PHAM_BAN',index:'SO_LUONG_SAN_PHAM_BAN',width:90, editable: true},
           {name:'DON_GIA_SAN_PHAM_BAN',index:'DON_GIA_SAN_PHAM_BAN',width:90, editable: true, align: 'right', formatter:'currency', formatoptions:{decimalSeparator:".", thousandsSeparator: ",", decimalPlaces: 0}},
           {name:'THANH_TIEN_HOA_DON',index:'THANH_TIEN_HOA_DON',width:100, editable: true, align: 'right', formatter:'currency', formatoptions:{decimalSeparator:".", thousandsSeparator: ",", decimalPlaces: 0}}
       ],
       //rowNum: 15,
       //rowList: [10,15,20,25,30,35,40,45,50],
       pager: '#bill_info_pager' ,
       viewrecords: true,
       sortorder: "asc",
       caption: "Thông tin hóa đơn",
       sortable: true,
       height: 210,
       width: 405,
       cellEdit: true,
       cellsubmit: 'clientArray',
       shrinkToFit: false,
       hidegrid: false,
       footerrow: true,
       ondblClickRow: function(rowId) {  
           deleteItemInBill();
       },
       beforeEditCell: function(rowId) {
           g_selectedItemNameInBill_s = $("#bill_info_list").getRowData(rowId)["TEN_SAN_PHAM_BAN"];
       },
       afterSaveCell: function(rowId) {
           updateItemInBill(rowId);
       },
       gridComplete: function() {
           var colSum = $('#bill_info_list').jqGrid('getCol', 'THANH_TIEN_HOA_DON', false, 'sum');
           $('#bill_info_list').jqGrid('footerData', 'set', { 'THANH_TIEN_HOA_DON': colSum });
           colSum = $('#bill_info_list').jqGrid('getCol', 'SO_LUONG_SAN_PHAM_BAN', false, 'sum');
           $('#bill_info_list').jqGrid('footerData', 'set', { 'SO_LUONG_SAN_PHAM_BAN': colSum });
       }
   });

   //$("#bill_info_list").jqGrid('navGrid', '#bill_info_pager' ,{edit:false,add:false,del:false});
   $("#bill_info_list").jqGrid('filterToolbar', {stringResult: true, searchOnEnter: false, defaultSearch: "cn"});

   $("#bill_info_list").closest("div.ui-jqgrid-view")
       .children("div.ui-jqgrid-titlebar")
       .css("text-align", "center")
       .children("span.ui-jqgrid-title")
       .css("float", "none");
}

function loadSplitBillLists()
{
    $("#split_bill_list1").jqGrid({
        url: "",
        loadonce:true,
        datatype: "json",
        colNames: ["Mã hóa đơn", "Ngày giờ thao tac",  "Số lượng", "Đơn giá", "Thành tiền" , "Tên đồ dùng", "SL chuyển", ""],
        colModel: [
            {name:'MA_HOA_DON_BAN_HANG',index:'MA_HOA_DON_BAN_HANG',hidden:true},
            {name:'THOI_GIAN_THAO_TAC_MILI_GIAY',index:'THOI_GIAN_THAO_TAC_MILI_GIAY',hidden:true},   
            {name:'SO_LUONG_SAN_PHAM_BAN',index:'SO_LUONG_SAN_PHAM_BAN',width:90},
            {name:'DON_GIA_SAN_PHAM_BAN',index:'DON_GIA_SAN_PHAM_BAN',width:90, formatter:'currency', formatoptions:{decimalSeparator:".", thousandsSeparator: ",", decimalPlaces: 0}},
            {name:'THANH_TIEN_HOA_DON',index:'THANH_TIEN_HOA_DON',width:100, formatter:'currency', formatoptions:{decimalSeparator:".", thousandsSeparator: ",", decimalPlaces: 0}},
            {name:'TEN_SAN_PHAM_BAN',index:'TEN_SAN_PHAM_BAN',width:105},
            {name:'SO_LUONG_CHUYEN',index:'SO_LUONG_CHUYEN',width:100, align: 'right', editable: true},
            {name:'CHUYEN_SAN_PHAM',index:'CHUYEN_SAN_PHAM', align: 'center', width: 30, formatter: imangeRight}                    
        ],
        //rowNum: 15,
        //rowList: [10,15,20,25,30,35,40,45,50],
        // pager: '#split_bill_pager1' ,
        viewrecords: true,
        sortorder: "asc",
        caption: "Thông tin hóa đơn",
        sortable: true,
        height: 210,
        width: 570,
        cellEdit: true,
        cellsubmit: 'clientArray',
        shrinkToFit: false,
        hidegrid: false,
        footerrow: true,
        gridComplete: function() {
            var colSum = $('#split_bill_list1').jqGrid('getCol', 'THANH_TIEN_HOA_DON', false, 'sum');
            $('#split_bill_list1').jqGrid('footerData', 'set', { 'THANH_TIEN_HOA_DON': colSum });
            colSum = $('#split_bill_list1').jqGrid('getCol', 'SO_LUONG_SAN_PHAM_BAN', false, 'sum');
            $('#split_bill_list1').jqGrid('footerData', 'set', { 'SO_LUONG_SAN_PHAM_BAN': colSum });
        }
    });

    $("#split_bill_list1").jqGrid('filterToolbar', {stringResult: true, searchOnEnter: false, defaultSearch: "cn"});

    $("#split_bill_list1").closest("div.ui-jqgrid-view")
        .children("div.ui-jqgrid-titlebar")
        .css("text-align", "center")
        .children("span.ui-jqgrid-title")
        .css("float", "none");

    $("#split_bill_list2").jqGrid({
        url: "",
        loadonce:true,
        datatype: "json",
        colNames: ["", "SL chuyển", "Mã hóa đơn", "Ngày giờ thao tac", "Tên đồ dùng", "Số lượng", "Đơn giá", "Thành tiền"],
        colModel: [
            {name:'CHUYEN_SAN_PHAM',index:'CHUYEN_SAN_PHAM', align: 'center', width: 30, formatter: imangeLeft},
            {name:'SO_LUONG_CHUYEN',index:'SO_LUONG_CHUYEN',width:100, editable: true},
            {name:'MA_HOA_DON_BAN_HANG',index:'MA_HOA_DON_BAN_HANG',hidden:true},
            {name:'THOI_GIAN_THAO_TAC_MILI_GIAY',index:'THOI_GIAN_THAO_TAC_MILI_GIAY',hidden:true},
            {name:'TEN_SAN_PHAM_BAN',index:'TEN_SAN_PHAM_BAN',width:105},
            {name:'SO_LUONG_SAN_PHAM_BAN',index:'SO_LUONG_SAN_PHAM_BAN',width:90, align: 'right'},
            {name:'DON_GIA_SAN_PHAM_BAN',index:'DON_GIA_SAN_PHAM_BAN',width:90, align: 'right', formatter:'currency', formatoptions:{decimalSeparator:".", thousandsSeparator: ",", decimalPlaces: 0}},
            {name:'THANH_TIEN_HOA_DON',index:'THANH_TIEN_HOA_DON',width:100, align: 'right', formatter:'currency', formatoptions:{decimalSeparator:".", thousandsSeparator: ",", decimalPlaces: 0}}
        ],
        //rowNum: 15,
        //rowList: [10,15,20,25,30,35,40,45,50],
        // pager: '#split_bill_pager2' ,
        viewrecords: true,
        sortorder: "asc",
        caption: "Thông tin hóa đơn",
        sortable: true,
        height: 210,
        width: 570,
        cellEdit: true,
        cellsubmit: 'clientArray',
        shrinkToFit: false,
        hidegrid: false,
        footerrow: true,
        gridComplete: function() {
            var colSum = $('#split_bill_list2').jqGrid('getCol', 'THANH_TIEN_HOA_DON', false, 'sum');
            $('#split_bill_list2').jqGrid('footerData', 'set', { 'THANH_TIEN_HOA_DON': colSum });
            colSum = $('#split_bill_list2').jqGrid('getCol', 'SO_LUONG_SAN_PHAM_BAN', false, 'sum');
            $('#split_bill_list2').jqGrid('footerData', 'set', { 'SO_LUONG_SAN_PHAM_BAN': colSum });
        }
    });

    $("#split_bill_list2").jqGrid('filterToolbar', {stringResult: true, searchOnEnter: false, defaultSearch: "cn"});

    $("#split_bill_list2").closest("div.ui-jqgrid-view")
        .children("div.ui-jqgrid-titlebar")
        .css("text-align", "center")
        .children("span.ui-jqgrid-title")
        .css("float", "none");
}

function addNewBill()
{
    if(!isSelectedTable())
    {
        return;
    }

    if(g_currentBillId_s !== "")
    {
        alertFull(g_areaNameList_arr[g_currentAreaId_i] + " " + g_currentTableId_i + " đang có khách! Không thể thêm hóa đơn!");
        return;
    }

    $.post("bill/them_hoa_don_ban_hang.php", {STT_KHU_VUC: g_currentAreaId_i, STT_BAN: g_currentTableId_i}).done(
        function(data)
        {
            if(data === "1")
            {
                selectArea(g_currentAreaId_i);
            }
            else if(data === "0")
            {
                alertFull(g_areaNameList_arr[g_currentAreaId_i] + " " + g_currentTableId_i + " đang có khách! Không thể thêm hóa đơn!");
                selectArea(g_currentAreaId_i);
            }
            else
            {
                alertFull(data);
            }
        }
    );
}

function deleteBill()
{            
    if(!isSelectedTable())
    {
        return;
    }

    if(g_currentBillId_s === "")
    {
        alertFull(g_areaNameList_arr[g_currentAreaId_i] + " " + g_currentTableId_i + " không có hóa đơn! Không thể xóa!");
        return;
    }

    showConfirmPanel("\nBạn có muốn xóa hóa đơn tại " + g_areaNameList_arr[g_currentAreaId_i] + " " + g_currentTableId_i + " không?\n",
        "Xóa",
        "Không",
        function() {
            $.post("bill/xoa_hoa_don_ban_hang.php", {MA_HOA_DON_BAN_HANG: g_currentBillId_s}).done(
                function(data)
                {
                    if(data === "1")
                    {
                        $("#bill_info_list").setGridParam({datatype:'json', page:1, url: "bill/lay_danh_sach_hang_hoa_bang_ma_hoa_don.php?MA_HOA_DON_BAN_HANG=" + g_currentBillId_s}).trigger('reloadGrid');
                        selectArea(g_currentAreaId_i);
                    }
                    else if(data === "0")
                    {
                        alertFull(g_areaNameList_arr[g_currentAreaId_i] + " " + g_currentTableId_i + " không có hóa đơn để xóa!");
                        selectArea(g_currentAreaId_i);
                    }
                    else
                    {
                        alertFull(data);
                    }
                }
             );
        }
    );
}
        
function addItemToBill()
{
    if(g_currentBillId_s === "")
    {
        if(g_currentTableId_i > 0)
        {
            g_addItemAfterAddBill_bool = true;
            addNewBill();
            //alertFull("Vui lòng thêm hóa đơn vào " + g_areaNameList_arr[g_currentAreaId_i] + " " + g_currentTableId_i);
        }
        else
        {
            alertFull("Vui lòng chọn bàn!");
        }
        return;
    }

    var selectRowId = $("#item_info_list").jqGrid ("getGridParam", "selrow");
    var rowData = $("#item_info_list").getRowData(selectRowId);
    var itemId = rowData["MA_SAN_PHAM"];

    g_addItemAfterAddBill_bool = false;

    $.post("bill/them_hang_hoa_vao_hoa_don_ban_hang.php", {MA_HOA_DON_BAN_HANG: g_currentBillId_s, MA_SAN_PHAM: itemId}).done(
        function(data)
        {
            if(data === "1")
            {
                $("#bill_info_list").setGridParam({datatype:'json', page:1, url: "bill/lay_danh_sach_hang_hoa_bang_ma_hoa_don.php?MA_HOA_DON_BAN_HANG=" + g_currentBillId_s}).trigger('reloadGrid');
                selectArea(g_currentAreaId_i);
            }
            else if(data === "0")
            {
                alertFull("Vui lòng không thêm quá nhanh (1 giây 1 lần)!");
                selectArea(g_currentAreaId_i);
            }
            else
            {
                alertFull(data);
                selectArea(g_currentAreaId_i);
            }
        }
    );
}

function updateItemInBill(rowId)
{
    var rowData = $("#bill_info_list").getRowData(rowId);
    var l_MA_HOA_DON_BAN_HANG_s = rowData["MA_HOA_DON_BAN_HANG"];
    var l_THOI_GIAN_THAO_TAC_MILI_GIAY_s = rowData["THOI_GIAN_THAO_TAC_MILI_GIAY"];
    var l_TEN_SAN_PHAM_BAN_s = rowData["TEN_SAN_PHAM_BAN"];                    
    var l_SO_LUONG_SAN_PHAM_BAN_s = rowData["SO_LUONG_SAN_PHAM_BAN"];
    var l_DON_GIA_SAN_PHAM_BAN_s = rowData["DON_GIA_SAN_PHAM_BAN"];
    var l_THANH_TIEN_HOA_DON_s = rowData["THANH_TIEN_HOA_DON"];

    $.post("bill/cap_nhat_hang_hoa_trong_hoa_don_ban_hang.php",
        {
            MA_HOA_DON_BAN_HANG: l_MA_HOA_DON_BAN_HANG_s,
            THOI_GIAN_THAO_TAC_MILI_GIAY: l_THOI_GIAN_THAO_TAC_MILI_GIAY_s,
            TEN_SAN_PHAM_BAN: l_TEN_SAN_PHAM_BAN_s,
            SO_LUONG_SAN_PHAM_BAN: l_SO_LUONG_SAN_PHAM_BAN_s,
            DON_GIA_SAN_PHAM_BAN: l_DON_GIA_SAN_PHAM_BAN_s,
            THANH_TIEN_HOA_DON: l_THANH_TIEN_HOA_DON_s
        }
    ).done(
        function(data)
        {
            if(data === "1")
            {
                $("#bill_info_list").setGridParam({datatype:'json', page:1, url: "bill/lay_danh_sach_hang_hoa_bang_ma_hoa_don.php?MA_HOA_DON_BAN_HANG=" + g_currentBillId_s}).trigger('reloadGrid');
               selectArea(g_currentAreaId_i); 
            }
            else
            {                            
                alertFull(data);
                $("#bill_info_list").setGridParam({datatype:'json', page:1, url: "bill/lay_danh_sach_hang_hoa_bang_ma_hoa_don.php?MA_HOA_DON_BAN_HANG=" + g_currentBillId_s}).trigger('reloadGrid');
                selectArea(g_currentAreaId_i);
            }
        }
    );
}

function deleteItemInBill()
{
    var selectRowId = $("#bill_info_list").jqGrid ("getGridParam", "selrow");

    if(selectRowId === null)
    {
        alertFull("Vui lòng chọn 1 đồ dùng trong hóa đơn (bàn) để xóa!");
        return;
    }

    var rowData = $("#bill_info_list").getRowData(selectRowId);

    showConfirmPanel("\nBạn có muốn xóa " + g_selectedItemNameInBill_s + " từ " + g_areaNameList_arr[g_currentAreaId_i] + " " + g_currentTableId_i + " không?\n",
        "Xóa",
        "Không",
        function() {
            $.post("bill/xoa_hang_hoa_trong_hoa_don_ban_hang.php", 
                {
                    MA_HOA_DON_BAN_HANG: rowData["MA_HOA_DON_BAN_HANG"],
                    THOI_GIAN_THAO_TAC_MILI_GIAY: rowData["THOI_GIAN_THAO_TAC_MILI_GIAY"]
                }
            ).done(
                function(data)
                {
                    if(data === "1")
                    {
                        $("#bill_info_list").setGridParam({datatype:'json', page:1, url: "bill/lay_danh_sach_hang_hoa_bang_ma_hoa_don.php?MA_HOA_DON_BAN_HANG=" + g_currentBillId_s}).trigger('reloadGrid');
                        selectArea(g_currentAreaId_i);
                    }
                    else if(data === "0")
                    {
                        alertFull(g_areaNameList_arr[g_currentAreaId_i] + " " + g_currentTableId_i + " không có hóa đơn để xóa!");
                        selectArea(g_currentAreaId_i);
                    }
                    else
                    {
                        alertFull(data);
                    }
                }
             );
        }
    );
}

function showMergeBillsPanel()
{
    if(g_currentTableId_i > 0)
    {
        $("#from_area").val(g_currentAreaId_i);
        $("#from_table").val(g_currentTableId_i);        
    }

    $("#merge_bill_text").text("Chọn 2 bàn bên dưới");
    $("#merge_bill_panel").css("display", "block");
}

function showSplitBillsPanel()
{
    $("#split_bill_panel").css("display", "block");

    $("#split_area1").val(g_currentAreaId_i);
    $("#split_table1").val(g_currentTableId_i);
    
    changeSplitText(1);
    changeSplitText(2);
}

function closeSplitBillPanel()
{
    $("#split_bill_panel").css("display", "none");
    selectArea(g_currentAreaId_i);
    selectTable(g_currentTableId_i);
}

function showExchangeBillsPanel()
{
    if(g_currentTableId_i > 0)
    {
        $("#exchange_area1").val(g_currentAreaId_i);
        $("#exchange_table1").val(g_currentTableId_i);
    }

    $("#exchange_bill_text").text("Chọn 2 bàn bên dưới");
    $("#exchange_bill_panel").css("display", "block");
}

function pay()
{
    if(!isSelectedTable())
    {
        return;
    }

    if(g_currentBillId_s === "")
    {
        alertFull(g_areaNameList_arr[g_currentAreaId_i] + " " + g_currentTableId_i + " không có hóa đơn! Không thể thanh toán!");
        return;
    }

    showConfirmPanel("\nBạn có muốn thanh toán hóa đơn tại " + g_areaNameList_arr[g_currentAreaId_i] + " " + g_currentTableId_i + " không?\n",
        "Thanh toán", 
        "Không",
        function()
        {
            $.post("bill/thanh_toan_hoa_don_ban_hang.php", {MA_HOA_DON_BAN_HANG: g_currentBillId_s}).done(
                function(data)
                {
                    if(data === "1")
                    {
                        $("#bill_info_list").setGridParam({datatype:'json', page:1, url: "bill/lay_danh_sach_hang_hoa_bang_ma_hoa_don.php?MA_HOA_DON_BAN_HANG=" + g_currentBillId_s}).trigger('reloadGrid');
                        selectArea(g_currentAreaId_i);
                    }
                    else if(data === "0")
                    {
                        alertFull(g_areaNameList_arr[g_currentAreaId_i] + " " + g_currentTableId_i + " không có hóa đơn để thanh toán!");
                        selectArea(g_currentAreaId_i);
                    }
                    else
                    {
                        alertFull(data);
                    }
                }
             );
        }
    );
}

function mergeBills()
{
    var l_fromArea_s = $("#from_area").val();
    var l_fromTable_s = $("#from_table").val();
    var l_toArea_s = $("#to_area").val();
    var l_toTable_s = $("#to_table").val();

    $.post("bill/gop_ban.php",
        {
            STT_KHU_VUC_BI_GOP: l_fromArea_s,
            STT_BAN_BI_GOP: l_fromTable_s,
            STT_KHU_VUC_DUOC_GOP: l_toArea_s,
            STT_BAN_DUOC_GOP: l_toTable_s
        }
    ).done(
        function(data)
        {
            if(data === "1")
            {
                $("#merge_bill_panel").css('display', 'none');
                $("#bill_info_list").setGridParam({datatype:'json', page:1, url: "bill/lay_danh_sach_hang_hoa_bang_stt_ban.php?STT_KHU_VUC=" + g_currentAreaId_i + "&STT_BAN=" + g_currentTableId_i}).trigger('reloadGrid');
                selectArea(g_currentAreaId_i);
            }
            else
            {
                $("#merge_bill_panel").css('display', 'none');
                alertFull(data);
            }
        }
    );
}

function exchangeBills()
{
    var l_exchangeArea1_s = $("#exchange_area1").val();
    var l_exchangeTable1_s = $("#exchange_table1").val();
    var l_exchangeArea2_s = $("#exchange_area2").val();
    var l_exchangeTable2_s = $("#exchange_table2").val();

    $.post("bill/doi_ban.php",
        {
            STT_KHU_VUC_1: l_exchangeArea1_s,
            STT_BAN_1: l_exchangeTable1_s,
            STT_KHU_VUC_2: l_exchangeArea2_s,
            STT_BAN_2: l_exchangeTable2_s
        }
    ).done(
        function(data)
        {
            if(data === "1")
            {
                $("#exchange_bill_panel").css('display', 'none');                
                selectArea(g_currentAreaId_i);
                getBillIdByTableId(g_currentTableId_i);
                $("#bill_info_list").setGridParam({datatype:'json', page:1, url: "bill/lay_danh_sach_hang_hoa_bang_stt_ban.php?STT_KHU_VUC=" + g_currentAreaId_i + "&STT_BAN=" + g_currentTableId_i}).trigger('reloadGrid');
            }
            else
            {
                $("#exchange_bill_panel").css('display', 'none');
                alertFull(data);
            }
        }
    );
}

function getBillIdByTableId(tableId)
{
    g_currentBillId_s = "";
    $.each(g_listOfBillInArea_obj ,function(i, item) {
        if(parseInt(item.STT_BAN) === tableId)
        {
            g_currentBillId_s = item.MA_HOA_DON_BAN_HANG;
            return false; // break each
        }
    });

    if(g_addItemAfterAddBill_bool) addItemToBill();
}


function changeMergeText()
{
    $("#merge_bill_text").text("Gộp " + $("#from_area option:selected").text() + " " + $("#from_table").val() + " vào " + $("#to_area option:selected").text() + " " + $("#to_table").val());
}

function closeMergePanel()
{
    $("#merge_bill_panel").css('display', 'none');
}

function changeSplitText(tableIndex)
{
    var l_areaText_s = $("#split_area" + tableIndex + " option:selected").text();
    var l_areaId_s = $("#split_area" + tableIndex + " option:selected").val();
    var l_tableId_s = $("#split_table" + tableIndex).val();
    $("#split_text" + tableIndex).text("Nhập số lượng chuyển (sau đó, nhấn TAB hoặc ENTER) rồi nhấn vào nút MŨI TÊN để chuyển chúng sang " + l_areaText_s + " " + l_tableId_s);
    $("#split_bill_list" + tableIndex).setGridParam({datatype:'json', page:1, url: "bill/lay_danh_sach_hang_hoa_bang_stt_ban.php?STT_KHU_VUC=" + l_areaId_s + "&STT_BAN=" + l_tableId_s}).trigger('reloadGrid');
}

function imangeRight( cellvalue, options, rowObject ){
    return '<img src="icons/add1.png" class="move-item-img" onclick=moveItemToOtherBill(1,"' + options.rowId + '") />';
}

function imangeLeft( cellvalue, options, rowObject ){
    return '<img src="icons/add2.png" class="move-item-img" onclick=moveItemToOtherBill(2,"' + options.rowId + '") />';
}

function moveItemToOtherBill(tableIndex, rowId)
{
    var rowData = $("#split_bill_list" + tableIndex).getRowData(rowId);
    var l_MA_HOA_DON_BAN_HANG_s = rowData["MA_HOA_DON_BAN_HANG"];
    var l_THOI_GIAN_THAO_TAC_MILI_GIAY_s = rowData["THOI_GIAN_THAO_TAC_MILI_GIAY"];
    var l_SO_LUONG_CHUYEN_s = rowData["SO_LUONG_CHUYEN"];
    var l_areaId1_s = $("#split_area1").val();
    var l_tableId1_s = $("#split_table1").val();
    var l_areaId2_s = $("#split_area2").val();
    var l_tableId2_s = $("#split_table2").val();
    var l_STT_KHU_VUC_CHUYEN_s = l_areaId1_s;
    var l_STT_BAN_CHUYEN_DEN_s = l_tableId1_s;
    if(tableIndex === 1)
    {
       l_STT_KHU_VUC_CHUYEN_s = l_areaId2_s;
       l_STT_BAN_CHUYEN_DEN_s = l_tableId2_s; 
    }
    
    
    $.post("bill/chuyen_hang_hoa_sang_hoa_don_khac.php", 
        {
            MA_HOA_DON_BAN_HANG: l_MA_HOA_DON_BAN_HANG_s,
            THOI_GIAN_THAO_TAC_MILI_GIAY: l_THOI_GIAN_THAO_TAC_MILI_GIAY_s,
            SO_LUONG_CHUYEN: l_SO_LUONG_CHUYEN_s,
            STT_KHU_VUC_CHUYEN_DEN: l_STT_KHU_VUC_CHUYEN_s,
            STT_BAN_CHUYEN_DEN: l_STT_BAN_CHUYEN_DEN_s
        }).done(
            function(data)
            {
                if(data === "1")
                {
                    $("#split_bill_list1").setGridParam({datatype:'json', page:1, url: "bill/lay_danh_sach_hang_hoa_bang_stt_ban.php?STT_KHU_VUC=" + l_areaId1_s + "&STT_BAN=" + l_tableId1_s}).trigger('reloadGrid');
                    $("#split_bill_list2").setGridParam({datatype:'json', page:1, url: "bill/lay_danh_sach_hang_hoa_bang_stt_ban.php?STT_KHU_VUC=" + l_areaId2_s + "&STT_BAN=" + l_tableId2_s}).trigger('reloadGrid');
                }
                else if(data === "0")
                {                    
                    alertFull("Không có hàng hóa để chuyển!");
                    $("#split_bill_list1").setGridParam({datatype:'json', page:1, url: "bill/lay_danh_sach_hang_hoa_bang_stt_ban.php?STT_KHU_VUC=" + l_areaId1_s + "&STT_BAN=" + l_tableId1_s}).trigger('reloadGrid');
                    $("#split_bill_list2").setGridParam({datatype:'json', page:1, url: "bill/lay_danh_sach_hang_hoa_bang_stt_ban.php?STT_KHU_VUC=" + l_areaId2_s + "&STT_BAN=" + l_tableId2_s}).trigger('reloadGrid');
                }
                else
                {
                    alertFull(data);
                    $("#split_bill_list1").setGridParam({datatype:'json', page:1, url: "bill/lay_danh_sach_hang_hoa_bang_stt_ban.php?STT_KHU_VUC=" + l_areaId1_s + "&STT_BAN=" + l_tableId1_s}).trigger('reloadGrid');
                    $("#split_bill_list2").setGridParam({datatype:'json', page:1, url: "bill/lay_danh_sach_hang_hoa_bang_stt_ban.php?STT_KHU_VUC=" + l_areaId2_s + "&STT_BAN=" + l_tableId2_s}).trigger('reloadGrid');
                }
            }
     );
}

function closeExchangePanel()
{
    $("#exchange_bill_panel").css('display', 'none');
}

function changeExchangeText()
{
    $("#exchange_bill_text").text("Đổi " + $("#exchange_area1 option:selected").text() + " " + $("#exchange_table1").val() + " và " + $("#exchange_area2 option:selected").text() + " " + $("#exchange_table2").val());
}