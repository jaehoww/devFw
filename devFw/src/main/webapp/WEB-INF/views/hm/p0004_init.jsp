<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
	function fn_process(p_command){
		$("#command").val(p_command); 
	    var v_id = $("#t_id").val();  
	    var c_id = $("#cust_id").val();
	    
	    if(p_command == 'add'){
	    	$('#frm')[0].reset();
	    	$('#cust_id').prop("disabled", false)
	    	return;
	    }	  
	    if(p_command == 'search' && v_id == ''){
	    	alert("ID를 입력하세요");
	    	return;
	    } 
	    if(p_command == 'save' && v_id == ''&&c_id == ''){
	        alert("조회나 추가 후 저장을 선택해 주세요");
	        return;
	     }
	    if(p_command =='after'){
	    	$("#t_id").val($("#after").val())
	    }
	    if(p_command =='before'){
		    $("#t_id").val($("#before").val())
		}
	    var params = $("#frm").serialize();
		$.ajax({
			type : "post",
			async : false,
			url : "${contextPath}/hm/p0004/searchMember.do",
			data : params,
		    dataType:"json",
			success : function(data, textStatus) {
				var jsonInfo = data;
				if(p_command == 'search' || p_command == 'after' || p_command == 'before'){
					if (jsonInfo.customer.cust_id == null) {
						alert("존재하지 않는 고객번호입니다.");
					} else {
						$('#cust_id').val(jsonInfo.cust_id); 
						$('#cust_id').prop("disabled", true)
						$('#cust_name').val(jsonInfo.cust_name);
						$('#cust_address').val(jsonInfo.cust_address);
						$('#cust_state').val(jsonInfo.cust_state);
						$('#cust_zip').val(jsonInfo.cust_zip);
						$('#cust_country').val(jsonInfo.cust_country);
						$('#cust_contact').val(jsonInfo.cust_contact);
						$('#cust_email').val(jsonInfo.cust_email);
						$('#before').val(jsonInfo.before_id);
						$('#after').val(jsonInfo.after_id);
					}
				}
				if(p_command == 'save'){
					var result=jsonInfo.result;
					if(result=="add")
						alert("추가되었습니다.");
					if(result=="mod")
						alert("수정되었습니다.");
					$('#cust_id').prop("disabled", false)
					$('#frm')[0].reset();
				}
				if(p_command == 'del'){
					alert("삭제되었습니다..");
					$('#cust_id').prop("disabled", false)
					$('#frm')[0].reset();
				}
			},
			error : function(data, textStatus) {
				alert("에러가 발생했습니다.");
			}
			
		});
	};
</script>
</head>
<body>
	고객번호
	<form name="frm" id="frm">
		<input type="text" name="t_id" id="t_id" /> 
		<input type="hidden" name="command" id="command" /> 
		<input type="button" id="btn_search" value="조회" onClick="fn_process('search')" /> 
		<input type="button" id="btn_add" value="추가" onClick="fn_process('add')" /> 
		<input type="button" id="btn_save" value="저장" onClick="fn_process('save')" />
		<input type="button" id="btn_del" value="삭제" onClick="fn_process('del')" />
	<br><br>
	<table id="tb" border=1>
		<tr>
			<td>
			<button id="before" type="button" onClick="fn_process('before')"><img src="devFw/src/main/webapp/resources/image/before.jpg" height="10px" width="auto"></button>
			고객번호
			<button id="after" type="button" onClick="fn_process('after')"><img src="after.jpg" height="10px" width="auto"></button>
			</td>
			<td><input type="text" name="cust_id" id="cust_id"  /></td>
		</tr>
		<tr>
			<td>고객이름</td>
			<td><input type="text" name="cust_name" id="cust_name" /></td>
		</tr>
		<tr>
			<td>고객주소</td>
			<td><input type="text" name="cust_address" id="cust_address" /></td>
		</tr>
		<tr>
			<td>고객주</td>
			<td><select name="cust_state" id="cust_state">
			<option>고객주 </option>
			<option value="MI">MI</option>
			<option value="OH">OH</option>
			<option value="IN">IN</option>
			<option value="AZ">AZ</option>
			<option value="IL">IL</option>
			</select></td>
		</tr>
		<tr>
			<td>우편번호</td>
			<td><input type="text" name="cust_zip" id="cust_zip" /></td>
		</tr>
		<tr>
			<td>고객국가</td>
			<td><select name="cust_country" id="cust_country">
			<option>국가 </option>
			<option value="USA">USA</option>
			<option value="KOR">KOR</option>
			</select></td>
		</tr>
		<tr>
			<td>고객담당자</td>
			<td><input type="text" name="cust_contact" id="cust_contact" /></td>
		</tr>
		<tr>
			<td>고객메일주소</td>
			<td><input type="text" name="cust_email" id="cust_email" /></td>
		</tr>
	</table>
	</form>
</body>
</html>