<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Coffee</title>     
    <script src="scripts/jquery.js"></script>
  
    <link rel="stylesheet" type="text/css" href="css/main.css">
    
    <script src="scripts/jquery-1.11.0.min.js"></script>   
    <link rel="stylesheet" type="text/css" media="screen" href="css/jquery-ui-1.12.1.custom/jquery-ui.min.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="css/ui.jqgrid.css" />
    <script src="scripts/grid.locale-vi.js" type="text/javascript"></script>
    <script src="scripts/jquery.jqGrid.js" type="text/javascript"></script> 
    <script src="js/declaration.js" type="text/javascript"></script>
    <script src="js/item.js" type="text/javascript"></script>
    <script src="js/bill.js" type="text/javascript"></script>
    <script src="js/area.js" type="text/javascript"></script>
    <script src="js/table.js" type="text/javascript"></script>
    <script src="js/alert.js" type="text/javascript"></script>
    <script src="js/report.js" type="text/javascript"></script>
    
    <script>             
        $(function()
        {  
            initializeElements();
            loadBillList();
            loadSplitBillLists();
            loadItemList();            
            selectArea(1);
            showGrid(0);
            initializeTableHistoryDetailList();
            initializeReportGrids();
        });
        
    </script>
</head> 
<body>    
    <div class="background">
        <?php
            include "html/area.php";
            include "html/bill.php";
            include "html/item.php";
        ?>    
    </div>
    <?php        
        include "html/bill_interation_panel.php";
        include "html/report.php";
        include "html/alert.php";
    ?>
</body>
</html>
