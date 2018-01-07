<div id="merge_bill_panel" class="alert-panel">
    <div class="alert-panel2"></div>
    <p id="merge_bill_text" class="alert-text" style="top: 30%;">Chọn 2 bàn bên dưới</p>
    <p class="alert-text" style="left:40%; top:35%;">Bàn bị gộp</p>
    <p class="alert-text" style="left:60%; top:35%;">Bàn được gộp</p>
    <select id="from_area" class="merge-area" style="left: 40%; top: 40%;" onchange="changeMergeText()">
        <option value="1">Bàn</option>
        <option value="2">Bàn tròn</option>
        <option value="3">Tum</option>
        <option value="4">Nhà lớn</option>
        <option value="5">Ngoài sân</option>
    </select>
    <select id="from_table" class="merge-area" style="left: 40%; top:45%;" onchange="changeMergeText()">
    </select>
    <select id="to_area" class="merge-area" style="left: 60%; top: 40%;" onchange="changeMergeText()">
        <option value="1">Bàn</option>
        <option value="2">Bàn tròn</option>
        <option value="3">Tum</option>
        <option value="4">Nhà lớn</option>
        <option value="5">Ngoài sân</option>
    </select>
    <select id="to_table" class="merge-area" style="left: 60%; top:45%;" onchange="changeMergeText()">
    </select>
    <input type="button" class="alert-button" value="Gộp bàn" onclick=mergeBills() style="width:10%; top:55%; left:44%">
    <input type="button" class="alert-button" value="Đóng" onclick=closeMergePanel() style="background-color:#ff3333; width:10%; top:55%; left:56%">
</div>


<div id="split_bill_panel" class="alert-panel">
    <div class="split-panel">
        <p class="panel-black-text" style="left:50%; top:10%;">Chọn 2 bàn cần bên dưới</p>
        <input type="button" class="button" value="Đóng" style="width:7%; right:1%; position: absolute;background-image: url(icons/remove.png);" onclick=closeSplitBillPanel() />
        <div class="split-left-div">
            <select id="split_area1" class="merge-area" style="left: 45%;" onchange="changeSplitText(1)">
                <option value="1">Bàn</option>
                <option value="2">Bàn tròn</option>
                <option value="3">Tum</option>
                <option value="4">Nhà lớn</option>
                <option value="5">Ngoài sân</option>
            </select> 
            <select id="split_table1" class="merge-area" style="left: 60%;" onchange="changeSplitText(1)"></select>
            <p id="split_text2" class="panel-black-text" style="left:50%; top:10%; color: red;">Nhấp đôi vào đồ dùng để chuyển chúng sang Ngoài sân 15</p>
            <div id="split_list_div1">
                <table id="split_bill_list1" style="font-size: 15px; font-family:Arial"></table>

            </div>
        </div>
        <div class="split-right-div">
            <select id="split_area2" class="merge-area" style="left: 45%;" onchange="changeSplitText(2)">
                <option value="1">Bàn</option>
                <option value="2">Bàn tròn</option>
                <option value="3">Tum</option>
                <option value="4">Nhà lớn</option>
                <option value="5">Ngoài sân</option>
            </select> 
            <select id="split_table2" class="merge-area" style="left: 60%;" onchange="changeSplitText(2)"></select>
            <p id="split_text1" class="panel-black-text" style="left:50%; top:10%; color: red;">Nhấp đôi vào đồ dùng để chuyển chúng sang Ngoài sân 15</p>
            <div id="split_list_div2">
                <table id="split_bill_list2" style="font-size: 15px; font-family:Arial" style="top: 10%;"></table>

            </div>
        </div>

    </div>        
</div>    


<div id="exchange_bill_panel" class="alert-panel">
    <div class="alert-panel2"></div>
    <p id="exchange_bill_text" class="alert-text" style="top: 30%;">Chọn 2 bàn bên dưới</p>
    <p class="alert-text" style="left:40%; top:35%;">Bàn 1</p>
    <p class="alert-text" style="left:60%; top:35%;">Bàn 2</p>
    <select id="exchange_area1" class="merge-area" style="left: 40%; top: 40%;" onchange="changeExchangeText()">
        <option value="1">Bàn</option>
        <option value="2">Bàn tròn</option>
        <option value="3">Tum</option>
        <option value="4">Nhà lớn</option>
        <option value="5">Ngoài sân</option>
    </select>
    <select id="exchange_table1" class="merge-area" style="left: 40%; top:45%;" onchange="changeExchangeText()">
    </select>
    <select id="exchange_area2" class="merge-area" style="left: 60%; top: 40%;" onchange="changeExchangeText()">
        <option value="1">Bàn</option>
        <option value="2">Bàn tròn</option>
        <option value="3">Tum</option>
        <option value="4">Nhà lớn</option>
        <option value="5">Ngoài sân</option>
    </select>
    <select id="exchange_table2" class="merge-area" style="left: 60%; top:45%;" onchange="changeExchangeText()">
    </select>
    <input type="button" class="alert-button" value="Đổi bàn" onclick=exchangeBills() style="width:10%; top:55%; left:44%">
    <input type="button" class="alert-button" value="Đóng" onclick=closeExchangePanel() style="background-color:#ff3333; width:10%; top:55%; left:56%">
</div>