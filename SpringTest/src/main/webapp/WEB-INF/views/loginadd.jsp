<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
 <style>
 #s {font-size:8pt}
 TABLE {font-size:9pt; font-family:����ü}
 </style>
 <script>
function winOpen(){
	window.open("idChk.html","w","width=300, height=100, resizable=yes");
}
function nickChk(){window.open("nickChk.html","n","width=300, height=100")}
function zipChk(){window.open("zipChkClose.html","n","width=300, height=100")}
 </script>
</head>
<body>
<script language = "javascript">
function memChk() // ������ �Է����� Ȯ�� ��ũ��Ʈ
{
  if(document.frm.memId.value == "")
  {
   alert("���̵� �Է��ϼ���")
   document.frm.memId.focus();
   return false;
  }
  if(document.frm.memPwd.value == "")
  {
   alert("��й�ȣ�� �Է��ϼ���")
   document.frm.memPwd.focus();
   return false;
  }
  if(document.frm.memPwdChk.value == "")
  {
   alert("��й�ȣ�� �ٽ��ѹ� �Է����ּ���")
   document.frm.memPwdChk.focus();
   return false;
  }
  if(document.frm.memPwd.value != frm.memPwdChk.value) 
  {
   alert("��й�ȣ�� �ٸ��ϴ�.");
   document.frm.memPwd.value = ""; 
   document.frm.memPwdChk.value = ""; 
   document.frm.memPwd.focus(); 
   return false;
  }
  if(document.frm.memName.value == "")
  {
   alert("�̸��� ���°ǰ�..") 
   document.frm.memName.focus(); 
   return false;
  }
  // ��ȭ���� �̸����� ��ü�ϴ°� �𸣰���... 
  if(document.frm.memJumin01.value == "" || frm.memJumin02.value == "")
  {
   alert("�ֹε�Ϲ�ȣ�� �Է��ϼ���") 
   document.frm.memJumin01.focus(); 
   return false;
  }
  if(document.frm.memBirth01.value == "" || frm.memBirth02.value == "" || frm.memBirth03.value == "")
  {
   alert("��������� �Է��ϼ���.") 
   document.frm.memBirth01.focus(); 
   return false;
  }
  /* if(document.frm.memSung.value == "")
  {
   alert("������ �����ϼ���") 
   return false; 
  } ������ư�� üũ ���� Ȯ�� ���??*/
  if(document.frm.memEmail.value == "")
  {
   alert("�̸����� �Է��ϼ���") 
   document.frm.memEmail.focus(); 
   return false;
  }
  // ���� ������ ���ŵ��� selected

  if (document.frm.memTel01.value == "")
  {
   alert("��ȭ��ȣ�� �����ϼ���")
   return false;
  }
  if (document.frm.memTel02.value == "")
  {
   alert("��ȭ��ȣ�� �Է��ϼ���")
   document.frm.memTel02.focus();
   return false;
  }
  if (document.frm.memTel03.value == "")
  {
   alert("��ȭ��ȣ�� �Է��ϼ���")
   document.frm.memTel03.focus();
   return false;
  }
  if (document.frm.memMobile01.value == "Not")
  {
   alert("�ڵ�����ȣ�� �����ϼ���")
   return false;
  }
  if (document.frm.memMobile02.value == "")
  {
   alert("�ڵ�����ȣ�� �Է��ϼ���")
   document.frm.memMobile02.focus();
   return false;
  }
  if (document.frm.memMobile03.value == "")
  {
   alert("�ڵ�����ȣ�� �Է��ϼ���")
   document.frm.memMobile03.focus();
   return false;
  }
  /* if (document.frm.memHobby.value == "" )
  {
   alert("��̸� �������ּ���")
   return false;
  } üũ�ڽ��� üũ���� Ȯ�ι��?? */

  document.frm.submit(); // ��ư���� �� �� return true; ��� �̰� ���� form���� ������ onsubmit="return memChk()" �� ���ʿ��Ͽ� ����

 } 
 </script>

<form action="#" method="post" name="frm"> 

<table border="0" cellpadding="0" cellspacing="0"> <!-- cellpadding�� cellspacing ���� 0���� �ʱ�ȭ ������ ������ ���̺����� ��/�� �� ������ ��������. -->
<caption align="left">
 <tr height="35">
  <td align="right" width="100" bgcolor="#efefef">��&nbsp;��&nbsp;��&nbsp;</td>
  <td valign="top">&nbsp;&nbsp;</td>
  <td width="600">  
   <input type="text" name="memId" size="12">&nbsp;&nbsp;
   <input type="button" value="�ߺ�Ȯ��" onClick="winOpen()"><br>  
  </td>
 </tr>

 <tr height="35">
  <td align="right" bgcolor="#efefef">��й�ȣ&nbsp;</td>
  <td valign="top">&nbsp;&nbsp;</td>
  <td>
   <input type="password" name="memPwd" size="13"><br>
  </td> <!-- ��й�ȣ ���ڿ� ���� ȥ�ջ�� üũ....? -��-a -->
 </tr>

 <tr height="35">
  <td align="right" bgcolor="#efefef">���Ȯ��&nbsp;</td>
  <td valign="top">&nbsp;&nbsp;</td>
  <td>
   <input type="password" name="memPwdChk" size="13">
  </td>
 </tr> 

 <tr height="35">
  <td align="right" bgcolor="#efefef">��<font color="white">....</font>��&nbsp;</td>
  <td valign="top">&nbsp;&nbsp;</td>
  <td>
  <input type="text" name="memName" size="7" maxlength="28">
  </td>
 </tr>
 
 
 <tr height="35">
  <td align="right" bgcolor="#efefef">E - mail&nbsp;</td>
  <td valign="top">&nbsp;&nbsp;</font></td>
  <td>
   <input type="text" name="memEmail" size="20">
  </td>
 </tr>

 <tr height="35">
  <td align="right" bgcolor="#efefef">�� �� ��&nbsp;</td>
  <td valign="top">&nbsp;&nbsp;</font></td>
  <td>
   <select name="memMobile01">
   <option value="010">010</option>
   <option value="011">011</option>
   <option value="016">016</option>
   <option value="017">017</option>
   <option value="018">018</option>
   <option value="019">019</option>
   </select>-
   <input type="text" name="memMobile02" size="5" maxlength="4">
   -
   <input type="text" name="memMobile03" size="5" maxlength="4"> 
  </td> <!-- ���ڸ� �Է°���?? -.-a -->
 </tr>


 <tr align="left">
  <td colspan="3">
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <input type="button" value="ȸ�����" onClick="memChk()">

   <font color="white">...</font>
  </td>
 </tr>
</table>
</form>

</body>
</html>