<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<html>
    <head>
        <!-- Include jQuery -->
        <script type="text/javascript" src="  /js/fusioncharts/jquery-3.3.1.min.js"></script> 
        <!-- Include fusioncharts core library file -->        
        <script type="text/javascript" src="  /js/fusioncharts/fusioncharts.js"></script>
        <script type="text/javascript" src="  /js/fusioncharts/fusioncharts.charts.js"></script>
        <!-- Include fusion theme file -->
        <script type="text/javascript" src="  /js/fusioncharts/themes/fusioncharts.theme.gammel.js"></script> 
        <script type="text/javascript" src="  /js/fusioncharts/themes/fusioncharts.theme.fusion.js"></script>
        <!-- Include fusioncharts jquery plugin -->
        <script type="text/javascript" src="  /js/fusioncharts/fusioncharts.jqueryplugin.min.js"></script> 
    </head>
    
    <body>
    	
    	<script type="text/javascript">
        
            $('document').ready(function () {
            	
            	(function func(){
        			//var rows;                
                    $.ajax({
        				  type: 'POST',
        				  url: "/portal/epo/graph/retrievePiChartList.data",
        				  dataType: "json",
        				  success : function(data) {
        					  
        					  var test = [{
		                            "label": "20대이하",
		                            "value": data.rows[0].param1
		                        }, {
		                            "label": "30대",
		                            "value": data.rows[0].param2
		                        }, {
		                            "label": "40대",
		                            "value": data.rows[0].param3
		                        }, {
		                            "label": "50대",
		                            "value": data.rows[0].param4
		                        }, {
		                            "label": "60대이상",
		                            "value": data.rows[0].param5
		                        }];
        					          					  
        					  var strData = JSON.stringify(data.rows[0]);
        					  console.log(strData);
        					   
        					  var test2 = [{
		                            "label": "서술방식",
		                            "value": "4.30"
		                        }, {
		                            "label": "학습분량",
		                            "value": "4.10"
		                        }, {
		                            "label": "전반만족도",
		                            "value": "4.21"
		                        }, {
		                            "label": "평균",
		                            "value": "4.21"
		                        }]; 
        					  
        					  
        					  
        					  $("#chart-container").insertFusionCharts({
        		                    type: "column3d",
        		                    width: "700",
        		                    height: "300",
        		                    dataFormat: "json",
        		                    dataSource: {
        		                        // Chart Configuration
        		                        "chart": {
        		                            "caption": "교재 만족도",
        		                            //"subCaption": "In MMbbl = One Million barrels",
        		                            //"xAxisName": "Country",
        		                            //"yAxisName": "Reserves (MMbbl)",
        		                            //"numberSuffix": "K",
        		                            "decimals": "1",
        		                            "theme": "gammel"
        		                        },
        		                        // Chart Data
        		                        "data": test2
        		                    }
        		                });
        		                $("#chart-container2").insertFusionCharts({
        		                    type: "column3d",
        		                    width: "250",
        		                    height: "300",
        		                    dataFormat: "json",
        		                    dataSource: {
        		                        // Chart Configuration
        		                        "chart": {
        		                            "caption": "성별",
        		                            //"subCaption": "In MMbbl = One Million barrels",
        		                            //"xAxisName": "Country",
        		                            //"yAxisName": "Reserves (MMbbl)",
        		                            //"numberSuffix": "K",
        		                            "decimals": "1",
        		                            "theme": "gammel"
        		                        },
        		                        // Chart Data
        		                        "data": [{
        		                            "label": "남자",
        		                            "value": "4.24"
        		                        }, {
        		                            "label": "여자",
        		                            "value": "4.19"
        		                        }]
        		                    }
        		                });
        		                $("#chart-container3").insertFusionCharts({
        		                    type: "column3d",
        		                    width: "450",
        		                    height: "300",
        		                    dataFormat: "json",
        		                    dataSource: {
        		                        // Chart Configuration
        		                        "chart": {
        		                            "caption": "연령",
        		                            //"subCaption": "In MMbbl = One Million barrels",
        		                            //"xAxisName": "Country",
        		                            //"yAxisName": "Reserves (MMbbl)",
        		                            //"numberSuffix": "K",
        		                            "decimals": "1",
        		                            "theme": "gammel"
        		                        },
        		                        // Chart Data
        		                        "data": test
        		                    }
        		                });                
        		                
        		                
        		                
        		                $("#chart-container4").insertFusionCharts({
        		             	   type: "pie3d",
        		             	   width: "700",
        		             	   height: "400",
        		             	   dataFormat: "json",
        		             	   dataSource: {
        			             	  "chart": {
        			             	    "caption": "Recommended Portfolio Split",
        			             	    "subcaption": "For a net-worth of $1M",
        			             	    "showvalues": "1",
        			             	    "showpercentintooltip": "0",
        			             	    "numberprefix": "$",
        			             	    "enablemultislicing": "1",
        			             	    "theme": "fusion"
        			             	  },
        			             	 "data": test
        		             		}
        		            	});  
        					  
        					  
        					  
        					  
        				  }
        			});                
                }());
            	
            	
            	
                                                    
                
            });
            
        </script>
                
        <div id="stage">
			<div id="header">
		        <div>
			        <table cellpadding="0" cellspacing="0" summary="table infomation" class="query-table">
			        <tbody>
				        <tr>
				        	<td width="700" colspan="2"><div id="chart-container">FusionCharts will render here</div></td>
				        </tr>
				        <tr>
				        	<td width="250"><div id="chart-container2">FusionCharts will render here</div></td>
				        	<td width="450"><div id="chart-container3">FusionCharts will render here</div></td>
				        </tr>
				        <tr>
				        	<td width="700" colspan="2"><div id="chart-container4">FusionCharts will render here</div></td>
				        </tr>
			        </tbody>
			        </table>
		        </div>
	        </div>
        </div>
    </body>
</html>