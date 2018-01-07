<div class="right">
    <div class="item-info-list">
        <table id="item_info_list" style="font-size: 12px; font-family:Arial"></table>
        <div id="item_info_pager"></div>
    </div>
    <div class="item-tool">                
        <input id="item_name_txt" type="text" class="item-input" placeholder="Tên đồ dùng">
        <input id="item_price_txt" type="number" class="item-input" placeholder="Giá">
        <input id="item_note_txt" type="text" class="item-input" placeholder="Ghi chú">
        <input id="add_item_btn" type="button" class="button" value="Thêm đồ dùng mới" style="width:47%;background-image: url(icons/add.png);" onclick=addNewItem()>
        <input id="update_item_btn" type="button" class="button" value="Cập nhật đồ dùng" style="width:47%;background-image: url(icons/edit.png);" onclick=updateItem()>  
        <input id="delete_item_btn" type="button" class="button" value="Xoá đồ dùng" style="width:47%; background-image: url(icons/remove.png);;" onclick=deleteItem()>  
    </div>
</div>  