<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../common/header.jsp"%>
<%@include file="../common/common.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>유기동물 증감 차트</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.js"></script>
</head>
<body>
	<h1>2018년</h1>
	<h3>현재까지 유기동물 수</h3>
	<div style="width: 50%; align-content: center;">
		<canvas id="thisYearAbandoned" width="400" height="200"></canvas>
		<br> 현재까지 구조된 총 동물 수 :
		<span id="totalCount"></span>
		마리
	</div>
	<hr>
	<br>
	<h3>종별 유기동물</h3>
	<div style="width: 50%; align-content: center;">
		<canvas id="pieChart" width="400" height="200"></canvas>
	</div>
	<br>	
	<hr>
	<br>
	<br>
	<h3>전년도 동월과 비교</h3>
	<div style="width: 50%; align-content: center;">
		<canvas id="compareAbandoned" width="400" height="200"></canvas>
	</div>
	<script>
	var totalCount = 0;
		var ctx = document.getElementById("thisYearAbandoned");
		var monthDataArr = new Array();
		
		var myChart = new Chart(ctx,
				{
				type : 'bar',
					label : '월별 유기동물 수',
					data : {
					labels : [], // 여기에 월 쑤셔s넣기
					datasets : [ {
						type : 'line',
						label : '꺽은선 그래프',
						data : [ ], // 여기에 월에 해당하는 값 쑤셔넣기
						backgroundColor : [ 'rgba(255, 99, 132, 0.2)',],
						borderColor : [ 'rgba(255,99,132,1)'],
						borderWidth : 2,
						fill : false,
						lineTension : 0
					}, {
						type: 'bar',
						label: '바 그래프',
						backgroundColor : [ 'rgba(75, 192, 192, 0.8)',
							'rgba(255, 206, 86, 0.8)',
							'rgba(255, 99, 132, 0.8)',
							'rgba(54, 162, 235, 0.8)',
							'rgba(255, 206, 86, 0.8)',
							'rgba(75, 192, 192, 0.8)',
							'rgba(153, 102, 255, 0.8)',
							'rgba(255, 99, 132, 0.8)',
							'rgba(255, 159, 64, 0.8)',
							'rgba(153, 86, 255, 0.8)',],
						data: [ ],
						borderColor: 'white',
						fill : true,
						borderWidth: 1
					}
					
					]
				},
					responsive : true,
					title : {
						display : true,
						text : '월별 유기동물 수'
					},
					tooltips : {
						mode : 'index',
						intersect: true
					},
					scales : {
						xAxes : [ {
							display : true,
							scaleLabel : {
								display : true
							}
						} ],
						yAxes : [ {
							display : true,
							scaleLabel : {
								display : true,
								labelString : 'Value'
							},
							ticks : {
								suggestedMin : -10,
								suggestedMax : 200,
							}
						} ]
					}
				}); 
		
				function addData(chart, label, data) {
				    chart.data.labels.push(label);
				    chart.data.datasets.forEach((dataset) => {
				        dataset.data.push(data);
				    });
				    chart.update();
				}
				
				function addDataIdx(chart, data, datasetIndex) {
					   chart.data.datasets[datasetIndex].data = data;
					   alert(data);
					   chart.update();
					}

				function removeData(chart) {
				    chart.data.labels.pop();
				    chart.data.datasets.forEach((dataset) => {
				        dataset.data.pop();
				    });
				    chart.update();
				}
		
				var i=0;
		
		function getArr(idx){
			return monthDataArr[idx];
		}		
		
		
		var ctx2 = document.getElementById("compareAbandoned");

		var myChart2 = new Chart(ctx2,
				{
				type : 'bar',
					label : '월별 유기동물 수',
					data : {
					labels : ["1월","2월","3월","4월","5월","6월", "7월", "8월", "9월", "10월", "11월", "12월"], // 여기에 월 쑤셔s넣기
					datasets : [ {
						type : 'line',
						label : '2017',
						data : [ 5582,5242,6600,7593,9845,9713, 11075,11119, 9978,9312,8048,6733], // 여기에 월에 해당하는 값 쑤셔넣기
						backgroundColor : [ 'rgba(255, 99, 132, 0.2)',],
						borderColor : [ 'rgba(255,99,132,1)'],
						borderWidth : 2,
						fill : false,
						lineTension : 0
					}, {
						type: 'line',
						label: '2018',
						backgroundColor : [ 'rgba(75, 192, 192, 0.8)',],
						data: [ ],
						borderColor: 'rgba(75, 192, 192, 0.8)',
						fill : false,
						borderWidth: 2,
						lineTension : 0
					}
					
					]
				},
					responsive : true,
					title : {
						display : true,
						text : '월별 유기동물 수'
					},
					tooltips : {
						mode : 'index',
						intersect: true
					},
					scales : {
						xAxes : [ {
							display : true,
							scaleLabel : {
								display : true
							}
						} ],
						yAxes : [ {
							display : true,
							scaleLabel : {
								display : true,
								labelString : 'Value'
							},
							ticks : {
								suggestedMin : -10,
								suggestedMax : 200,
							}
						} ]
					}
				}); 
		
		
		var ctx3 = document.getElementById("pieChart");
		var monthDataArr = new Array();
		
		var myChart3 = new Chart(ctx3,
				{
				type : 'pie',
					data : {
					labels : [], 
					datasets : [ {
						type : 'pie',
						label : '동물 종별',
						data : [ ],
						backgroundColor : [ 'rgba(255, 99, 132, 0.2)',],
						borderColor : [ 'rgba(255,99,132,1)'],
						borderWidth : 2,
						fill : false,
						lineTension : 0
					}]
				},
					responsive : true,
					title : {
						display : true,
						text : '월별 유기동물 수'
					},
					tooltips : {
						mode : 'index',
						intersect: true
					},
					scales : {
						xAxes : [ {
							display : true,
							scaleLabel : {
								display : true
							}
						} ],
						yAxes : [ {
							display : true,
							scaleLabel : {
								display : true,
								labelString : 'Value'
							},
							ticks : {
								suggestedMin : -10,
								suggestedMax : 200,
							}
						} ]
					}
				}); 
		
		function doFill(){
			for(var a=0; a<i; a++){
				myChart2.data.datasets[1].data[a]=monthDataArr[a];
				myChart2.update();
			}
		}
		
		jQuery(document).ready(function() {
			$.ajax({
				type : "POST",
				url : "http://${myIP}${root}/countAbandoned.animal",
				dataType : "json",
				success : function(data) {
					$.each(data.monthData, function(key, value) {
						addData(myChart, value.month, value.value);
						totalCount += value.value;
						monthDataArr[i] = value.value;
						i++;
					});
					doFill();
					$("#totalCount").html(totalCount);
				},
				error : function(e) {
					alert("처리중 장애가 발생하였습니다.");
				}
			});
			
			$.ajax({
				type : "POST",
				url : "http://${myIP}${root}/countAbandonedType.animal",
				dataType : "json",
				success : function(data) {
					$.each(data.typeData, function(key, value) {
						addData(myChart3, value.type, value.value);
					});
					$("#totalCount").html(totalCount);
				},
				error : function(e) {
					alert("처리중 장애가 발생하였습니다.");
				}
			});
		});
		
	</script>
</body>
</html>