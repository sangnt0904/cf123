function initializeTableHistoryDetailList()
{
    $("#table_history_detail_list").jqGrid({
       url: "",
       loadonce:true,
       datatype: "json",
       colNames: ["Mã hóa đơn", "Tên đồ dùng", "Số lượng", "Đơn giá", "Thành tiền"],
       colModel: [
           {name:'MA_HOA_DON_BAN_HANG',index:'MA_HOA_DON_BAN_HANG',hidden:true},
           {name:'TEN_SAN_PHAM_BAN',index:'TEN_SAN_PHAM_BAN',width:105},
           {name:'SO_LUONG_SAN_PHAM_BAN',index:'SO_LUONG_SAN_PHAM_BAN',width:90},
           {name:'DON_GIA_SAN_PHAM_BAN',index:'DON_GIA_SAN_PHAM_BAN',width:90, align: 'right', formatter:'currency', formatoptions:{decimalSeparator:".", thousandsSeparator: ",", decimalPlaces: 0}},
           {name:'THANH_TIEN_HOA_DON',index:'THANH_TIEN_HOA_DON',width:100, align: 'right', formatter:'currency', formatoptions:{decimalSeparator:".", thousandsSeparator: ",", decimalPlaces: 0}}
       ],
       //rowNum: 15,
       //rowList: [10,15,20,25,30,35,40,45,50],
       viewrecords: true,
       sortorder: "asc",
       caption: "Thông tin hóa đơn",
       sortable: true,
       height: 450,
       width: 405,
       cellsubmit: 'clientArray',
       shrinkToFit: false,
       hidegrid: false,
       footerrow: true,
       gridComplete: function() {
           var colSum = $('#table_history_detail_list').jqGrid('getCol', 'THANH_TIEN_HOA_DON', false, 'sum');
           $('#table_history_detail_list').jqGrid('footerData', 'set', { 'THANH_TIEN_HOA_DON': colSum });
           colSum = $('#table_history_detail_list').jqGrid('getCol', 'SO_LUONG_SAN_PHAM_BAN', false, 'sum');
           $('#table_history_detail_list').jqGrid('footerData', 'set', { 'SO_LUONG_SAN_PHAM_BAN': colSum });
       }
   });
   
   $("#table_history_detail_list").jqGrid('filterToolbar', {stringResult: true, searchOnEnter: false, defaultSearch: "cn"});
}

function setCurrentDate(inputId)
{
    var l_today_date = new Date();
    var l_today_1 = l_today_date.getDate();
    var l_today_2 = (l_today_date.getMonth() + 1);
    var l_today_s =  (l_today_date.getFullYear() + "-" + (l_today_2<10?"0":"") + l_today_2 + "-" + (l_today_1<10?"0":"") + l_today_1);
    $("#" + inputId).val(l_today_s);
}

function showTableInHistory()
{
    $("#table_history_panel").css("display", "block");
}

function closeTableInHistoryPanel()
{
    $("#table_history_panel").css("display", "none");
    $("#table_history_detail_panel").css("display", "none");
}

function getTableInfoInHistory()
{
    var l_NGAY_BAT_DAU_s = $("#begin_date_txt").val();
    var l_NGAY_KET_THUC_s = $("#end_date_txt").val();
    showGrid(1);
    $("#table_history_list").setGridParam({datatype:'json', page:1, url: "bill/thong_ke_danh_sach_hoa_don_theo_ngay.php?NGAY_BAT_DAU=" + l_NGAY_BAT_DAU_s + "&NGAY_KET_THUC=" + l_NGAY_KET_THUC_s}).trigger('reloadGrid');
}

function getItemInfoInHistory()
{
    var l_NGAY_BAT_DAU_s = $("#begin_date_txt").val();
    var l_NGAY_KET_THUC_s = $("#end_date_txt").val();
    showGrid(2);
    $("#item_history_list").setGridParam({datatype:'json', page:1, url: "bill/thong_ke_danh_sach_hang_hoa_theo_ngay.php?NGAY_BAT_DAU=" + l_NGAY_BAT_DAU_s + "&NGAY_KET_THUC=" + l_NGAY_KET_THUC_s}).trigger('reloadGrid');
}

function getTableDetailInHistory()
{
    var l_NGAY_BAT_DAU_s = $("#begin_date_txt").val();
    var l_NGAY_KET_THUC_s = $("#end_date_txt").val();
    showGrid(3);
    $("#bill_history_list").setGridParam({datatype:'json', page:1, url: "bill/thong_ke_lich_su_theo_ngay.php?NGAY_BAT_DAU=" + l_NGAY_BAT_DAU_s + "&NGAY_KET_THUC=" + l_NGAY_KET_THUC_s}).trigger('reloadGrid');
}

function showGrid(gridIndex)
{
    switch(gridIndex)
    {
        case 0:
        {
            $("#table_history_list").jqGrid('setGridState','hidden');
            $("#item_history_list").jqGrid('setGridState','hidden');
            $("#bill_history_list").jqGrid('setGridState','hidden');
            break;
        }
        case 1:
        {
            $("#table_history_list").jqGrid('setGridState','visible');
            $("#item_history_list").jqGrid('setGridState','hidden');
            $("#bill_history_list").jqGrid('setGridState','hidden');
            break;
        }
        case 2:
        {
            $("#table_history_list").jqGrid('setGridState','hidden');
            $("#item_history_list").jqGrid('setGridState','visible');
            $("#bill_history_list").jqGrid('setGridState','hidden');
            break;
        }
        case 3:
        {
            $("#table_history_list").jqGrid('setGridState','hidden');
            $("#item_history_list").jqGrid('setGridState','hidden');
            $("#bill_history_list").jqGrid('setGridState','visible');
            break;
        }
        case 4:
        {
            $("#table_history_list").jqGrid('setGridState','visible');
            $("#item_history_list").jqGrid('setGridState','visible');
            $("#bill_history_list").jqGrid('setGridState','visible');
            break;
        }
    }
}



function initializeReportGrids()
{
    $("#table_history_list").jqGrid({
        url: "",
        loadonce:true,
        datatype: "json",
        colNames: ["Khu vực", "Bàn", "Mã hóa đơn", "Tổng tiền thanh toán", "Ngày giờ thêm", "Trạng thái"],
        colModel: [
            {name:'TEN_KHU_VUC',index:'TEN_KHU_VUC', width:150},
            {name:'STT_BAN',index:'STT_BAN', width:100}, 
            {name:'MA_HOA_DON_BAN_HANG',index:'MA_HOA_DON_BAN_HANG',width:200},
            {name:'TONG_TIEN',index:'TONG_TIEN', width:170, align: 'right', formatter:'currency', formatoptions:{decimalSeparator:".", thousandsSeparator: ",", decimalPlaces: 0}},                    
            {name:'NGAY_GIO_LAP_HOA_DON_BAN_HANG',index:'NGAY_GIO_LAP_HOA_DON_BAN_HANG',width:170, align: 'right'},
            {name:'TRANG_THAI',index:'TRANG_THAI',width:175, align: 'right'}
        ],
        rowNum: 100000,
        rowList: [10,50,100,200,500,1000,100000],
        pager: '#table_history_pager' ,                
        viewrecords: true,
        sortorder: "asc",
        caption: "Danh sách hóa đơn",
        sortable: true,
        height: 350,
        width: 1000,
        shrinkToFit: false,
        footerrow: true,
        ondblClickRow: function(rowId) {
            var rowData = $("#table_history_list").getRowData(rowId);
            getTableHistoryDetailInfo(rowData["MA_HOA_DON_BAN_HANG"]);
            showTableHistoryDetailPanel();
        },
        gridComplete: function() {
            var colSum = $('#table_history_list').jqGrid('getCol', 'TONG_TIEN', false, 'sum');
            $('#table_history_list').jqGrid('footerData', 'set', { 'TONG_TIEN': colSum });
        }
    });

    $("#table_history_list").jqGrid('filterToolbar', {stringResult: true, searchOnEnter: false, defaultSearch: "cn"});

    $("#item_history_list").jqGrid({
        url: "",
        loadonce:true,
        datatype: "json",
        colNames: ["Khu vực", "Bàn", "Mã hóa đơn", "Đồ dùng", "Đơn giá", "Số lượng", "Thành tiền", "Ngày giờ thêm", "Trạng thái"],
        colModel: [
            {name:'TEN_KHU_VUC',index:'TEN_KHU_VUC', width:100},
            {name:'STT_BAN',index:'STT_BAN', width:50}, 
            {name:'MA_HOA_DON_BAN_HANG',index:'MA_HOA_DON_BAN_HANG', width:120}, 
            {name:'TEN_SAN_PHAM_BAN',index:'TEN_SAN_PHAM_BAN',width:130},
            {name:'DON_GIA_SAN_PHAM_BAN',index:'DON_GIA_SAN_PHAM_BAN',width:80, align: 'right', formatter:'currency', formatoptions:{decimalSeparator:".", thousandsSeparator: ",", decimalPlaces: 0}},
            {name:'SO_LUONG_SAN_PHAM_BAN',index:'SO_LUONG_SAN_PHAM_BAN', width:80, align: 'right', formatter:'currency', formatoptions:{decimalSeparator:".", thousandsSeparator: ",", decimalPlaces: 2}},
            {name:'THANH_TIEN',index:'THANH_TIEN', width:95, align: 'right', formatter:'currency', formatoptions:{decimalSeparator:".", thousandsSeparator: ",", decimalPlaces: 0}},
            {name:'NGAY_GIO_THEM_SAN_PHAM_BAN',index:'NGAY_GIO_THEM_SAN_PHAM_BAN',width:160, align: 'right'},
            {name:'TRANG_THAI',index:'TRANG_THAI',width:135}
        ],
        rowNum: 100000,
        rowList: [10,50,100,200,500,1000,100000],
        pager: '#item_history_pager' ,
        viewrecords: true,
        sortorder: "asc",
        caption: "Danh sách đồ dùng",
        sortable: true,
        height: 350,
        width: 1000,
        shrinkToFit: false,
        footerrow: true,
        gridComplete: function() {
            var colSum = $('#item_history_list').jqGrid('getCol', 'THANH_TIEN', false, 'sum');
            $('#item_history_list').jqGrid('footerData', 'set', { 'THANH_TIEN': colSum });

            colSum = $('#item_history_list').jqGrid('getCol', 'SO_LUONG_SAN_PHAM_BAN', false, 'sum');
            $('#item_history_list').jqGrid('footerData', 'set', { 'SO_LUONG_SAN_PHAM_BAN': colSum });
        }
    });

    $("#item_history_list").jqGrid('filterToolbar', {stringResult: true, searchOnEnter: false, defaultSearch: "cn"});

    $("#bill_history_list").jqGrid({
        url: "",
        loadonce:true,
        datatype: "json",
        colNames: ["Khu vực", "Bàn", "Mã hóa đơn", "Chi tiết", "Ngày giờ thực hiện", "Tổng tiền"],
        colModel: [
            {name:'TEN_KHU_VUC',index:'TEN_KHU_VUC', width:150},
            {name:'STT_BAN',index:'STT_BAN', width:100}, 
            {name:'MA_HOA_DON_BAN_HANG',index:'MA_HOA_DON_BAN_HANG',width:200},
            {name:'MO_TA_LICH_SU_HOA_DON_BAN_HANG',index:'MO_TA_LICH_SU_HOA_DON_BAN_HANG',width:200},                                      
            {name:'NGAY_GIO_LICH_SU_HOA_DON_BAN_HANG',index:'NGAY_GIO_LICH_SU_HOA_DON_BAN_HANG',width:155},                    
            {name:'TONG_TIEN',index:'TONG_TIEN', width:160, align: 'right', formatter:'currency', formatoptions:{decimalSeparator:".", thousandsSeparator: ",", decimalPlaces: 0}}
        ],
        rowNum: 100000,
        rowList: [10,50,100,200,500,1000,100000],
        pager: '#bill_history_pager' ,
        viewrecords: true,
        sortorder: "asc",
        caption: "Chi tiết lịch sử hóa đơn",
        sortable: true,
        height: 350,
        width: 1000,
        shrinkToFit: false
    });

    $("#bill_history_list").jqGrid('filterToolbar', {stringResult: true, searchOnEnter: false, defaultSearch: "cn"});
}

function showTableHistoryDetailPanel()
{
    $("#table_history_detail_panel").css("display", "block");
}

function closeTableHistoryDetailPanel()
{
    $("#table_history_detail_panel").css("display", "none");
}

function getTableHistoryDetailInfo(billId)
{
    $("#table_history_detail_list").setGridParam({datatype:'json', page:1, url: "bill/lay_danh_sach_hang_hoa_bang_ma_hoa_don_trong_lich_su.php?MA_HOA_DON_BAN_HANG=" + billId}).trigger('reloadGrid');
}

function printBill()
{
    setTimeout(function()
    {
        $.get("bill/lay_danh_sach_hang_hoa_bang_ma_hoa_don.php", {MA_HOA_DON_BAN_HANG: g_currentBillId_s}).done(
            function(data)
            {
                var l_listOfItemInBill_obj = $.parseJSON(data);
                var l_totalOfAmount_obj = 0;
                var l_totalOfMoney_obj = 0;


                var l_today_date = new Date();
                var l_today_1 = l_today_date.getDate();
                var l_today_2 = (l_today_date.getMonth() + 1);
                var l_today_s =  ((l_today_1<10?"0":"") + l_today_1 + "/" + (l_today_2<10?"0":"") + l_today_2 + "/" + l_today_date.getFullYear() + " lúc " + (l_today_date.getHours()<10?"0":"") + l_today_date.getHours() + ":" + (l_today_date.getMinutes()<10?"0":"") + l_today_date.getMinutes());

                $("#print_bill_table").empty();

                var l_appendString_s = '';
                var l_MA_HOA_DON_BAN_HANG_s = '';

                if(data !== "[]")
                {
                    $.each(l_listOfItemInBill_obj, function(i, item) {
                        l_MA_HOA_DON_BAN_HANG_s = item.MA_HOA_DON_BAN_HANG;
                        l_totalOfAmount_obj += parseFloat(item.SO_LUONG_SAN_PHAM_BAN);
                        l_totalOfMoney_obj += parseInt(item.THANH_TIEN_HOA_DON);
                        l_appendString_s += '<tr>\n\
                                                <td class="print-bill-td1">' + item.TEN_SAN_PHAM_BAN + '</td>\n\
                                                <td class="print-bill-td2">' + item.SO_LUONG_SAN_PHAM_BAN + '</td>\n\
                                                <td class="print-bill-td3">' + numberWithCommas(item.DON_GIA_SAN_PHAM_BAN) + '</td>\n\
                                                <td class="print-bill-td4">' + numberWithCommas(item.THANH_TIEN_HOA_DON) + '</td>\n\
                                            </tr>';
                    });
                }
                
                l_appendString_s = '<tr>\n\
                                            <td colspan="4" class="print-bill-footer" style="font-size: 5mm;">Coffee Thanh Trúc</td>\n\
                                        </tr>\n\
                                        <tr>\n\
                                            <td colspan="4" class="print-bill-id-left-align">' + $("#table_name").text() + ' - ' + l_MA_HOA_DON_BAN_HANG_s + '</td>\n\
                                        </tr>\n\
                                        <tr>\n\
                                            <td class="print-bill-td1" style="font-weight: bold; border-top: 1px solid black;">Tên đồ dùng</td>\n\
                                            <td class="print-bill-td2" style="font-weight: bold; border-top: 1px solid black;">SL</td>\n\
                                            <td class="print-bill-td3" style="font-weight: bold; border-top: 1px solid black;">Đ.Giá</td>\n\
                                            <td class="print-bill-td4" style="font-weight: bold; border-top: 1px solid black;">Th.Tiền</td>\n\
                                        </tr>' + l_appendString_s;

                l_appendString_s += '<tr>\n\
                                        <td class="print-bill-td1" style="font-weight: bold; border-top: 1px solid black;">Tổng:</td>\n\
                                        <td class="print-bill-td2" style="font-weight: bold; border-top: 1px solid black;">' + l_totalOfAmount_obj + '</td>\n\
                                        <td class="print-bill-td3" style="font-weight: bold; border-top: 1px solid black;"></td>\n\
                                        <td class="print-bill-td4" style="font-weight: bold; border-top: 1px solid black;">' + numberWithCommas(l_totalOfMoney_obj) + '</td>\n\
                                    </tr>\n\
                                    <tr>\n\
                                        <td colspan="4" class="print-bill-id-left-align">' + l_today_s + '</td>\n\
                                    </tr>\n\
                                    <tr>\n\
                                        <td colspan="4" class="print-bill-footer">Hẹn gặp lại quý khách!<br>Cám ơn</td>\n\
                                    </tr>\n\
                                    <tr>\n\
                                        <td colspan="4" class="print-bill-footer"></td>\n\
                                    </tr>';

                $("#print_bill_table").append(l_appendString_s);

                var printContents = document.getElementById("print_bill").innerHTML;
                w = window.open();
                w.document.write(printContents);
                w.document.write('<html><head><title>' + g_currentBillId_s + '</title>');
                w.document.write('<style>\n\
                                    @media print {@page { margin: 0; } \n\
                                    body { margin: 0; }\n\
                                    }\n\
                                    </style>\n\
                                    <link rel="stylesheet" type="text/css" href="css/main.css">\n\
                                    </head>');
                w.document.write('<scr' + 'ipt type="text/javascript">' + 'window.onload = function() { window.print(); window.close();\n\
                                     };' + '</sc' + 'ript>');
                w.document.write('</html>');
                w.document.close();
                w.focus();
            }
        );
    }, 0);   
}