function loadItemList()
{
    $("#item_info_list").jqGrid({
        url: "item/lay_danh_sach_hang_hoa.php",
        loadonce:true,
        datatype: "json",
        colNames: [ "Mã sản phẩm", "Tên đồ dùng", "Đơn giá", "Ghi chú"],
        colModel: [
            {name:'MA_SAN_PHAM',index:'MA_SAN_PHAM',hidden:true},
            {name:'TEN_SAN_PHAM',index:'TEN_SAN_PHAM',width:150},
            {name:'GIA_SAN_PHAM',index:'GIA_SAN_PHAM',width:70},
            {name:'GHI_CHU_SAN_PHAM',index:'GHI_CHU_SAN_PHAM',width:100}
        ],
        rowNum: 20,
        rowList: [10,15,20,25,30,35,40,45,50],
        pager: '#item_info_pager' ,
        viewrecords: true,
        caption: "Đồ dùng",
        sortable: true,
        height: 210,
        width: 405,  
        hidegrid: false,
        shrinkToFit: false,
        ondblClickRow: function(rowId) {
            addItemToBill();
        },
        onSelectRow: function(rowId) {
            setSelectedItemInfoToInputs(rowId);
        }
    });

   // $("#item_info_list").jqGrid('navGrid', '#item_info_pager' ,{edit:false,add:false,del:false});
    $("#item_info_list").jqGrid('filterToolbar', {stringResult: true, searchOnEnter: false, defaultSearch: "cn"});

    $("#item_info_list").closest("div.ui-jqgrid-view")
        .children("div.ui-jqgrid-titlebar")
        .css("text-align", "center")
        .children("span.ui-jqgrid-title")
        .css("float", "none");
}

function addNewItem()
{
    var l_TEN_SAN_PHAM_s = $("#item_name_txt").val();
    if(l_TEN_SAN_PHAM_s === "") 
    {
        alertFull("Vui lòng nhập tên sản phẩm!");
        return;
    }
    var l_GIA_SAN_PHAM_s = $("#item_price_txt").val();
    if(l_GIA_SAN_PHAM_s === "") 
    {
        alertFull("Vui lòng nhập giá sản phẩm!");
        return;
    }
    var l_GHI_CHU_SAN_PHAM_s = $("#item_note_txt").val();
    if(l_GHI_CHU_SAN_PHAM_s === "") 
    {
        alertFull("Vui lòng nhập ghi chú sản phẩm!");
        return;
    }

    $.post("item/them_hang_hoa_moi.php", 
        {
            TEN_SAN_PHAM: l_TEN_SAN_PHAM_s,
            GIA_SAN_PHAM: l_GIA_SAN_PHAM_s,
            GHI_CHU_SAN_PHAM: l_GHI_CHU_SAN_PHAM_s
        }
    ).done(
        function(data)
        {
            if(data === "1")
            {
                $("#item_info_list").setGridParam({datatype:'json', page:1, url: "item/lay_danh_sach_hang_hoa.php"}).trigger('reloadGrid');
            }
            else if(data === "0")
            {
                alertFull("Vui lòng không thêm quá nhanh (1 giây 1 lần)!");
            }
            else
            {
                alertFull(data);
            }
        }
    );
}

function updateItem()
{
    var l_TEN_SAN_PHAM_s = $("#item_name_txt").val();
    if(l_TEN_SAN_PHAM_s === "") 
    {
        alertFull("Vui lòng nhập tên sản phẩm!");
        return;
    }
    var l_GIA_SAN_PHAM_s = $("#item_price_txt").val();
    if(l_GIA_SAN_PHAM_s === "") 
    {
        alertFull("Vui lòng nhập giá sản phẩm!");
        return;
    }
    var l_GHI_CHU_SAN_PHAM_s = $("#item_note_txt").val();
    if(l_GHI_CHU_SAN_PHAM_s === "") 
    {
        alertFull("Vui lòng nhập ghi chú sản phẩm!");
        return;
    }
    var l_MA_SAN_PHAM_s = $("#item_info_list").getRowData(g_selectedItemRowId_i)["MA_SAN_PHAM"];

    $.post("item/cap_nhat_hang_hoa.php", 
        {
            MA_SAN_PHAM: l_MA_SAN_PHAM_s,
            TEN_SAN_PHAM: l_TEN_SAN_PHAM_s,
            GIA_SAN_PHAM: l_GIA_SAN_PHAM_s,
            GHI_CHU_SAN_PHAM: l_GHI_CHU_SAN_PHAM_s
        }
    ).done(
        function(data)
        {
            if(data === "1")
            {
                $("#item_info_list").setGridParam({datatype:'json', page:1, url: "item/lay_danh_sach_hang_hoa.php"}).trigger('reloadGrid');
            }
            else if(data === "0")
            {
                alertFull("Thông tin đồ uống không được thay đổi!");
            }
            else
            {
                alertFull(data);
            }
        }
    );
}

function deleteItem()
{
    if(g_selectedItemRowId_i === null)
    {
        alertFull("Vui lòng chọn 1 đồ uống để xóa!");
        return;
    }

    var rowData = $("#item_info_list").getRowData(g_selectedItemRowId_i);
    var l_MA_SAN_PHAM_s = rowData["MA_SAN_PHAM"];
    showConfirmPanel("Bạn có muốn xóa " + rowData["TEN_SAN_PHAM"] + " có giá " + rowData["GIA_SAN_PHAM"] + "?",
    "     Xóa     ", "     Không     ",
    function()
    {
        $.post("item/xoa_hang_hoa.php", 
            {
                MA_SAN_PHAM: l_MA_SAN_PHAM_s
            }
        ).done(
            function(data)
            {
                if(data === "1")
                {
                    $("#item_info_list").setGridParam({datatype:'json', page:1, url: "item/lay_danh_sach_hang_hoa.php"}).trigger('reloadGrid');
                }
                else if(data === "0")
                {
                    alertFull("Vui lòng chọn đồ dùng để xóa!");
                }
                else if(data.includes("FK_SP_CTHDBH"))
                {
                    alertFull("Đồ dùng này đã được thêm vào hóa đơn, không thể xóa!");
                }
                else
                {
                    alertFull(data);
                }
            }
        );
    });
}

function setSelectedItemInfoToInputs(rowId)
{
    var rowData = $("#item_info_list").getRowData(rowId);
    g_selectedItemRowId_i = rowId;
    $("#item_name_txt").val(rowData["TEN_SAN_PHAM"]);
    $("#item_price_txt").val(rowData["GIA_SAN_PHAM"]);
    $("#item_note_txt").val(rowData["GHI_CHU_SAN_PHAM"]);
}