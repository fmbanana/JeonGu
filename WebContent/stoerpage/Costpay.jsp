<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>title</title>



<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

<link href="/JeonGu/css/custom.css" rel="stylesheet">

<script src="http://code.jquery.com/jquery-latest.min.js"></script>

<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script type="text/javascript " src="jquery/jquery-3.1.1.min.js">
</script>

<script type="text/javascript">
	$(function() {
		$("#table2 td:nth-child(1)").css("font-weight", "bold");
	});
</script>

<div id="layer"
	style="display: none; position: fixed; overflow: hidden; z-index: 1; -webkit-overflow-scrolling: touch;">
	<img
		src="//i1.daumcdn.net/localimg/localimages/07/postcode/320/close.png"
		id="btnCloseLayer"
		style="cursor: pointer; position: absolute; right: -3px; top: -3px; z-index: 1"
		onclick="closeDaumPostcode()" alt="�ݱ� ��ư">
</div>









<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
	// �����ȣ ã�� ȭ���� ���� element
	var element_layer = document.getElementById('layer');

	function closeDaumPostcode() {
		// iframe�� ���� element�� �Ⱥ��̰� �Ѵ�.
		element_layer.style.display = 'none';
	}

	function sample2_execDaumPostcode() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						// �˻���� �׸��� Ŭ�������� ������ �ڵ带 �ۼ��ϴ� �κ�.

						// �� �ּ��� ���� ��Ģ�� ���� �ּҸ� �����Ѵ�.
						// �������� ������ ���� ���� ��쿣 ����('')���� �����Ƿ�, �̸� �����Ͽ� �б� �Ѵ�.
						var fullAddr = data.address; // ���� �ּ� ����
						var extraAddr = ''; // ������ �ּ� ����

						// �⺻ �ּҰ� ���θ� Ÿ���϶� �����Ѵ�.
						if (data.addressType === 'R') {
							//���������� ���� ��� �߰��Ѵ�.
							if (data.bname !== '') {
								extraAddr += data.bname;
							}
							// �ǹ����� ���� ��� �߰��Ѵ�.
							if (data.buildingName !== '') {
								extraAddr += (extraAddr !== '' ? ', '
										+ data.buildingName : data.buildingName);
							}
							// �������ּ��� ������ ���� ���ʿ� ��ȣ�� �߰��Ͽ� ���� �ּҸ� �����.
							fullAddr += (extraAddr !== '' ? ' (' + extraAddr
									+ ')' : '');
						}

						// �����ȣ�� �ּ� ������ �ش� �ʵ忡 �ִ´�.
						document.getElementById('sample2_postcode').value = data.zonecode; //5�ڸ� �������ȣ ���
						document.getElementById('sample2_address').value = fullAddr;
						document.getElementById('sample2_addressEnglish').value = data.addressEnglish;

						// iframe�� ���� element�� �Ⱥ��̰� �Ѵ�.
						// (autoClose:false ����� �̿��Ѵٸ�, �Ʒ� �ڵ带 �����ؾ� ȭ�鿡�� ������� �ʴ´�.)
						element_layer.style.display = 'none';
					},
					width : '100%',
					height : '100%'
				}).embed(element_layer);

		// iframe�� ���� element�� ���̰� �Ѵ�.
		element_layer.style.display = 'block';

		// iframe�� ���� element�� ��ġ�� ȭ���� ����� �̵���Ų��.
		initLayerPosition();
	}

	// �������� ũ�� ���濡 ���� ���̾ ����� �̵���Ű���� �ϽǶ�����
	// resize�̺�Ʈ��, orientationchange�̺�Ʈ�� �̿��Ͽ� ���� ����ɶ����� �Ʒ� �Լ��� ���� ���� �ֽðų�,
	// ���� element_layer�� top,left���� ������ �ֽø� �˴ϴ�.
	function initLayerPosition() {
		var width = 300; //�����ȣ���񽺰� �� element�� width
		var height = 460; //�����ȣ���񽺰� �� element�� height
		var borderWidth = 5; //���ÿ��� ����ϴ� border�� �β�

		// ������ ������ ������ ���� element�� �ִ´�.
		element_layer.style.width = width + 'px';
		element_layer.style.height = height + 'px';
		element_layer.style.border = borderWidth + 'px solid';
		// ����Ǵ� ������ ȭ�� �ʺ�� ���� ���� �����ͼ� �߾ӿ� �� �� �ֵ��� ��ġ�� ����Ѵ�.
		element_layer.style.left = (((window.innerWidth || document.documentElement.clientWidth) - width) / 2 - borderWidth)
				+ 'px';
		element_layer.style.top = (((window.innerHeight || document.documentElement.clientHeight) - height) / 2 - borderWidth)
				+ 'px';
	}
</script>












<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script
	src="//apis.daum.net/maps/maps3.js?apikey=�߱޹��� API KEY�� ����ϼ���&libraries=services"></script>
<script>
	var mapContainer = document.getElementById('map'), // ������ ǥ���� div
	mapOption = {
		center : new daum.maps.LatLng(37.537187, 127.005476), // ������ �߽���ǥ
		level : 5
	// ������ Ȯ�� ����
	};

	//������ �̸� ����
	var map = new daum.maps.Map(mapContainer, mapOption);
	//�ּ�-��ǥ ��ȯ ��ü�� ����
	var geocoder = new daum.maps.services.Geocoder();
	//��Ŀ�� �̸� ����
	var marker = new daum.maps.Marker({
		position : new daum.maps.LatLng(37.537187, 127.005476),
		map : map
	});

	function sample5_execDaumPostcode() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						// �� �ּ��� ���� ��Ģ�� ���� �ּҸ� �����Ѵ�.
						// �������� ������ ���� ���� ��쿣 ����('')���� �����Ƿ�, �̸� �����Ͽ� �б� �Ѵ�.
						var fullAddr = data.address; // ���� �ּ� ����
						var extraAddr = ''; // ������ �ּ� ����

						// �⺻ �ּҰ� ���θ� Ÿ���϶� �����Ѵ�.
						if (data.addressType === 'R') {
							//���������� ���� ��� �߰��Ѵ�.
							if (data.bname !== '') {
								extraAddr += data.bname;
							}
							// �ǹ����� ���� ��� �߰��Ѵ�.
							if (data.buildingName !== '') {
								extraAddr += (extraAddr !== '' ? ', '
										+ data.buildingName : data.buildingName);
							}
							// �������ּ��� ������ ���� ���ʿ� ��ȣ�� �߰��Ͽ� ���� �ּҸ� �����.
							fullAddr += (extraAddr !== '' ? ' (' + extraAddr
									+ ')' : '');
						}

						// �ּ� ������ �ش� �ʵ忡 �ִ´�.
						document.getElementById("sample5_address").value = fullAddr;
						// �ּҷ� ��ǥ�� �˻�
						geocoder
								.addr2coord(
										data.address,
										function(status, result) {
											// ���������� �˻��� �Ϸ������
											if (status === daum.maps.services.Status.OK) {
												// �ش� �ּҿ� ���� ��ǥ�� �޾Ƽ�
												var coords = new daum.maps.LatLng(
														result.addr[0].lat,
														result.addr[0].lng);
												// ������ �����ش�.
												mapContainer.style.display = "block";
												map.relayout();
												// ���� �߽��� �����Ѵ�.
												map.setCenter(coords);
												// ��Ŀ�� ��������� ���� ��ġ�� �ű��.
												marker.setPosition(coords)
											}
										});
					}
				}).open();
	}
</script>






<style type="text/css">

.in_tex{
	-moz-box-shadow:inset 0px 1px 0px 0px #ffffff;
	-webkit-box-shadow:inset 0px 1px 0px 0px #ffffff;
	box-shadow:inset 0px 1px 0px 0px #ffffff;
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #ededed), color-stop(1, #dfdfdf));
	background:-moz-linear-gradient(top, #ededed 5%, #dfdfdf 100%);
	background:-webkit-linear-gradient(top, #ededed 5%, #dfdfdf 100%);
	background:-o-linear-gradient(top, #ededed 5%, #dfdfdf 100%);
	background:-ms-linear-gradient(top, #ededed 5%, #dfdfdf 100%);
	background:linear-gradient(to bottom, #ededed 5%, #dfdfdf 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#ededed', endColorstr='#dfdfdf',GradientType=0);
	background-color:#ededed;
	-moz-border-radius:6px;
	-webkit-border-radius:6px;
	border-radius:6px;
	border:1px solid #dcdcdc;
	display:inline-block;
	cursor:pointer;
	color:#777777;
	font-family:Arial;
	font-size:15px;
	font-weight:bold;
	padding:6px 24px;
	text-decoration:none;
	text-shadow:0px 1px 0px #ffffff;
}
.in_tex:hover {
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #dfdfdf), color-stop(1, #ededed));
	background:-moz-linear-gradient(top, #dfdfdf 5%, #ededed 100%);
	background:-webkit-linear-gradient(top, #dfdfdf 5%, #ededed 100%);
	background:-o-linear-gradient(top, #dfdfdf 5%, #ededed 100%);
	background:-ms-linear-gradient(top, #dfdfdf 5%, #ededed 100%);
	background:linear-gradient(to bottom, #dfdfdf 5%, #ededed 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#dfdfdf', endColorstr='#ededed',GradientType=0);
	background-color:#dfdfdf;
}
.in_tex:active {
	position:relative;
	top:1px;
}


.myButton {

width:40px;
height:20px;
font-size:10px;

	-moz-box-shadow: 0px 1px 0px 0px #1c1b18;
	-webkit-box-shadow: 0px 1px 0px 0px #1c1b18;
	box-shadow: 0px 1px 0px 0px #1c1b18;
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0.05, #eae0c2
		), color-stop(1, #ccc2a6));
	background: -moz-linear-gradient(top, #eae0c2 5%, #ccc2a6 100%);
	background: -webkit-linear-gradient(top, #eae0c2 5%, #ccc2a6 100%);
	background: -o-linear-gradient(top, #eae0c2 5%, #ccc2a6 100%);
	background: -ms-linear-gradient(top, #eae0c2 5%, #ccc2a6 100%);
	background: linear-gradient(to bottom, #eae0c2 5%, #ccc2a6 100%);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#eae0c2',
		endColorstr='#ccc2a6', GradientType=0);
	background-color: #eae0c2;
	-moz-border-radius: 12px;
	-webkit-border-radius: 12px;
	border-radius: 12px;
	border: 2px solid #756848;
	display: inline-block;
	cursor: pointer;
	
	
	color: black;
	font-family: Arial;
	
	font-weight: bold;

text-decoration: none;
/* 	text-shadow: 0px 1px 0px #ffffff;
	 */
	
}

.myButton:hover {
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0.05, #ccc2a6
		), color-stop(1, #eae0c2));
	background: -moz-linear-gradient(top, #ccc2a6 5%, #eae0c2 100%);
	background: -webkit-linear-gradient(top, #ccc2a6 5%, #eae0c2 100%);
	background: -o-linear-gradient(top, #ccc2a6 5%, #eae0c2 100%);
	background: -ms-linear-gradient(top, #ccc2a6 5%, #eae0c2 100%);
	background: linear-gradient(to bottom, #ccc2a6 5%, #eae0c2 100%);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ccc2a6',
		endColorstr='#eae0c2', GradientType=0);
	background-color: #ccc2a6;
}

.myButton:active {
	position: relative;
	top: 1px;
}




.iput_but {
	-moz-box-shadow:inset 0px 1px 0px 0px #bbdaf7;
	-webkit-box-shadow:inset 0px 1px 0px 0px #bbdaf7;
	box-shadow:inset 0px 1px 0px 0px #bbdaf7;
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #79bbff), color-stop(1, #378de5));
	background:-moz-linear-gradient(top, #79bbff 5%, #378de5 100%);
	background:-webkit-linear-gradient(top, #79bbff 5%, #378de5 100%);
	background:-o-linear-gradient(top, #79bbff 5%, #378de5 100%);
	background:-ms-linear-gradient(top, #79bbff 5%, #378de5 100%);
	background:linear-gradient(to bottom, #79bbff 5%, #378de5 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#79bbff', endColorstr='#378de5',GradientType=0);
	background-color:#79bbff;
	-moz-border-radius:6px;
	-webkit-border-radius:6px;
	border-radius:6px;
	border:1px solid #84bbf3;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:15px;
	font-weight:bold;
	padding:6px 24px;
	text-decoration:none;
	text-shadow:0px 1px 0px #528ecc;
}
.iput_but:hover {
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #378de5), color-stop(1, #79bbff));
	background:-moz-linear-gradient(top, #378de5 5%, #79bbff 100%);
	background:-webkit-linear-gradient(top, #378de5 5%, #79bbff 100%);
	background:-o-linear-gradient(top, #378de5 5%, #79bbff 100%);
	background:-ms-linear-gradient(top, #378de5 5%, #79bbff 100%);
	background:linear-gradient(to bottom, #378de5 5%, #79bbff 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#378de5', endColorstr='#79bbff',GradientType=0);
	background-color:#378de5;
}
.iput_but:active {
	position:relative;
	top:1px;
}


td {
	padding-left: 10px;
}

#bk_item td {
	padding: 20px;
}

table {
	text-align: center;
}

#bk_title td {
	padding-top: 10px;
	padding-bottom: 10px;
	background: #E2E2E2;
	font-weight: bold;
	min-width: 80px;
}

#choice {
	width: 120px;
	height: 40px;
	border: 1px solid gray;
	font-size: 12px;
	font-weight: bold;
	text-align: center;
	margin-left: 10px;
}

#table1 {
	border-bottom: 1px solid #BFBABA;
}

#table2 input {
	padding: 4px;
	margin: 3px;
}

#table2 td {
	padding: 5px;
}

#zom {
	border-left: 2px solid gray;;
	border-top: 2px solid gray;
}
</style>
</head>

<body>
	<jsp:include page="../header.jsp"></jsp:include>

	<div
		style="min-height: 800px;  background: white;   
border-radius:30px;box-shadow :5px 5px 5px 0px black;padding-right:4%;">




		<table style="margin-left: 7%;margin-top: 4%" id="table1">
			<tr style="width: 100px; border-bottom: 2px solid black;">
				<td style="padding: 20px; text-align: left;" colspan='8'"><font
					size="5"><b>�ֹ� / ����</b></font></td>
			</tr>


			<tr id="bk_title">
				<td></td>
				<td align="left">��ǰ����</td>
				<td>����</td>
				<td>��ǰ�ݾ�</td>
				<td>���αݾ�</td>
				<td>��ۺ�</td>
				<td>�Ǹ��ڸ�</td>
				<td>�ֹ��ݾ�</td>

			</tr>




			<tr id="bk_item">
				<td style="padding: 10px"><input type="checkbox"></td>
				<td width="40%">
				<div style="float: left; width: 20%">
						<img alt="" src="img/pizza.JPG" style="width: 75px; height: 75px;">
					</div>
					
					
					<div 
		style="  width:70%; margin-top: 5%; margin-left: 20px; float: left;
		padding-right:50px; padding-left: 10px; 
		 font-weight: bold;">
						���� ĳ�־�ȭ 2color
					</div></td>
				<td>1<br>
				<input type="button" class="myButton" value="����"></td>
				<td width="150px"><b>410,000 ��</b></td>
				<td><font color="gray">0</font></td>
				<td><font color="gray">2500</font></td>
				<td><font color="gray">�������ٻ���</font></td>
				<td style=" padding-right: 10px; width: 130px"><font style="padding-left: 20px;"
					color="green"><b>4,100 ��</b></font> <br>
			<input type="button" value="����" class="myButton">&nbsp;<input type="button"class="myButton"
					value="����"></td>



			</tr>



			<tr>
				<td colspan="5" style="padding: 5px;" id="zom">



					<table 
						style="padding: 20px; width: 100%; text-align: left;" id="table2" >

						<tr>
							<td colspan="2" style="padding: 10px"><font size="5px"><b>�����
										���� </b></font></td>
						</tr>
						<tr style="border-bottom: 1px dotted gray">
							<td width="15%">���������</td>
							<td width="100%"><input type="radio">�űԹ����&nbsp;&nbsp;&nbsp; <input
								type="radio"> �ֱ�: ������</td>
						</tr>
			
						<tr>
							<td>������</td>
							<td><input type="text" size="8" class="in_tex"></td>
						</tr>
						<tr>
							<td>�������</td>
							<td><input type="text" size="8" class="in_tex"></td>
						</tr>
						<tr>
							<td>����ó1</td>
							<td><input type="text" size="3" class="in_tex">-<input type="text"
								size="4" class="in_tex">-<input type="text" size="4" class="in_tex"></td>
						</tr>
						<tr>
							<td>����ó2</td>
							<td><input type="text" size="3" class="in_tex">-<input type="text"
								size="4" class="in_tex">-<input type="text" size="4" class="in_tex"></td>
						</tr>
						<tr>
							<td>����� �ּ�</td>
							<td><input type="text" id="sample2_postcode"
								placeholder="�����ȣ" name="addr" class="in_tex"> <input
								type="button" onclick="sample2_execDaumPostcode()"
								value="�����ȣ ã��" class="iput_but"><br> <input
								type="text" id="sample2_address" placeholder="�ѱ��ּ�"
								class="in_tex"> <input type="text"
								id="sample2_addressEnglish" placeholder="�����ּ�" class="in_tex"><br>


								<input type="text" id="sample5_address" placeholder="�ּ�"
								class="in_tex" name="addr2"> <input type="button"
								onclick="sample5_execDaumPostcode()" value="�ּ� �˻�"
								class="iput_but"><br>
								<div id="map"
									style="width: 300px; height: 300px; margin-top: 10px; display: none"></div></td>
						</tr>
						<tr>
							<td>��۸޸�</td>
							<td>�Ȱ��� �е������� ���� ĳ�־�ȭ 2color �� 1��<br> <input
								type="text" size="50" class="in_tex">
						</tr>



						<!--  
(49515) �λ걤���� ���ϱ� �ټ۷� 23 �ٴ�Ե�ĳ����� 105�� 2204ȣ��������  <br>



��۸޸�   <br>


�Ȱ��� �е������� ���� ĳ�־�ȭ 2color �� 1��  <br>
	 -->

					</table>

				</td>


				<td colspan="3"
					style="padding: 30px; background: #E2E2E2; font-weight: bold;">

					<div align="left">�����ݾ�</div> <br>
					<div align="left" style="font-size: 23px">
						<b> 111,900 ��</b>
					</div> <br> <br>
					<div align="left" style="float: left;">�� ��ǰ�ݾ�</div>
					<div align="right">120,800 ��</div>
					<br>
					<div align="left" style="float: left;">��ۺ�</div>
					<div align="right">(+) 2,500��</div> <br>

					<div align="left" style="float: left;">�� ���αݾ�</div>
					<div align="right">(-) 0��</div>
					<br>





				</td>
			</tr>

		</table>

		<div align="center" style="margin-top: 30px">
			<a href="#myModal" data-toggle="modal" title="Compose"
				class="btn btn-compose" style="background: gray; color: white;"
				id="choice">�����ϱ� </a>

		</div>





	</div>





	<jsp:include page="../footer.jsp"></jsp:include>
<body>

</body>
</html>