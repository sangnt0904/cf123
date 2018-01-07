<div class="center">
    <div class="bill-info-list">
        <table id="bill_info_list" style="font-size: 20px; font-family:Arial"></table>
        <div id="bill_info_pager"></div>
    </div>
    <div class="bill-tool">     
        <div class="div-100">
                <label id="table_name" class="table-name">Tên bàn</label>
                <input type="button" class="button" value="Thanh toán" onclick=pay() style="background-image: url(icons/pay.png);right: 20px;position: absolute;height:40px;font-size: 17px;">                
        </div>
        <br>        
        <input type="button" class="button" value="Gộp bàn" onclick=showMergeBillsPanel() style="background-image: url(icons/merge.png);">
        <input type="button" class="button" value="Tách bàn" onclick=showSplitBillsPanel() style="background-image: url(icons/split.png);">
        <input type="button" class="button" value="Đổi bàn" onclick=showExchangeBillsPanel() style="background-image: url(icons/exchange.png);">
        <input type="button" class="button" value="Xóa hóa đơn" onclick=deleteBill() style="background-image: url(icons/Abort.png);">
        <input type="button" class="button" value="Xóa đồ dùng" onclick=deleteItemInBill() style="background-image: url(icons/remove.png);">
        <input type="button" class="button" value="Thống kê" onclick=showTableInHistory() style="background-image: url(icons/Table_1.png);">
        <input type="button" class="button" value="In hóa đơn" onclick=printBill() style="background-image: url(icons/Print.png);">
    </div>
</div>
