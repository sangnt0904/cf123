<div id="table_history_panel" class="table-history-panel">
    <div class="div-100">
        <label>Ngày bắt đầu</label>
        <input id="begin_date_txt" type="date" class="item-input" placeholder="Ngày bắt đầu" style="width:12%;color:blue;">
        <label>Ngày kết thúc</label>
        <input id="end_date_txt" type="date" class="item-input" placeholder="Ngày bắt đầu" style="width:12%;color:blue;">
        <input type="button" class="button" value="Đóng" style="width:5%;background-image: url(icons/remove.png);" onclick=closeTableInHistoryPanel() />
    </div>
    <div class="div-100">
        <input type="button" class="button" value="Xem DS hóa đơn" style="width:11%;background-image: url(icons/Table_1.png);" onclick=getTableInfoInHistory() />
        <input type="button" class="button" value="Xem DS đồ dùng" style="width:11%;background-image: url(icons/Table_1.png);" onclick=getItemInfoInHistory() />
        <input type="button" class="button" value="Xem lịch sử" style="width:9%;background-image: url(icons/Table_1.png);" onclick=getTableDetailInHistory() />
    </div>
    <div>
        <div class="inline-div">
            <table id="table_history_list" style="font-size: 15px; font-family:Arial"></table>
            <div id="table_history_pager"></div>
            <table id="item_history_list" style="font-size: 15px; font-family:Arial"></table>
            <div id="item_history_pager"></div>
            <table id="bill_history_list" style="font-size: 15px; font-family:Arial"></table>
            <div id="bill_history_pager"></div>
        </div>
    </div>
</div>
<div id="table_history_detail_panel">
    <input type="button" class="button" value="Đóng" style="width: 70px; margin: 5px 5px 5px 0; background-image: url(icons/remove.png);" onclick=closeTableHistoryDetailPanel() />
    <table id="table_history_detail_list" style="font-size: 15px; font-family:Arial"></table>
</div>

<div id="print_bill" class="print-bill">
    <div class="div-100">
        <table id="print_bill_table" class="print-bill-table">
        </table>
    </div>        
</div>