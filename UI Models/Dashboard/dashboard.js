var dashboard = {
    "optionsObj": {
        "btm1": "",
        "lg1": "",
        "top1": "",
        
        "btm2": "",
        "lg2": "",
        "top2": "",
        
        "hl1": "",
        "v1": "",
        "hl2": "",
        "v2": "",

        "i1": "",
        "i2": "",
        "iv1": "",
        "iv2": "",

        "btm3": "",
        "chart1": {},
        
        "btm4": "",
        "chart2": {},
        
        "btm5": "",
        "chart3": {},
        
        "btm6": "",
        "chart4": {},
        
        "btm7": "",
        "chart5": {},
        
        "btm8": "",
        "chart6": {}
    
    },
    //    "customContent": ""
    
    "initialize": function(options){
        //init chart 1
        var ctx = document.getElementById('chart1');
        var myChart = new Chart(ctx, options.chart1);
        
        //init chart 2
        var ctx = document.getElementById('chart2');
        var myChart = new Chart(ctx, options.chart2);
        
        //init chart 3
        var ctx = document.getElementById('chart3');
        var myChart = new Chart(ctx, options.chart3);
        
        //init chart 4
        var ctx = document.getElementById('chart4');
        var myChart = new Chart(ctx, options.chart4);
        
        //init chart 5
        var ctx = document.getElementById('chart5');
        var myChart = new Chart(ctx, options.chart5);
        
        //init chart chart6
        var ctx = document.getElementById('chart6');
        var myChart = new Chart(ctx, options.chart6);
        
        //init custom html cell
        var dbcCustom = document.getElementById('dbcCustom');
        dbcCustom.innerHTML = options.customContent;
    }
}