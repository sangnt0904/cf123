var g_selectedItemRowId_i = null;
        
var g_areaNumber_i = 5;
var g_tableNumber_i = 50; 
var g_listOfBillInArea_obj = null;

var g_areaNameList_arr = ["","Bàn", "Bàn tròn", "Tum", "Nhà lớn", "Ngoài sân"];
var g_currentAreaId_i = 1;
var g_currentTableId_i = 0;
var g_currentBillId_s = "";
var g_selectedItemNameInBill_s = "";

var g_addItemAfterAddBill_bool = false;


function numberWithCommas(x) 
{
    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}


