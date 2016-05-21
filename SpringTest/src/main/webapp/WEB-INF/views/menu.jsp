<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta name="description" content="The Overflowing church website's main page" />
<meta name="author" content="unikys@gmail.com" />
    <title>Home</title>
    <style>
    #topMenu {
            height: 30px;  /* ���� �޴��� ���� */
            width: 850px;  /* ���� �޴��� ���� */
    }
    #topMenu ul {           /* ���� �޴� ���� ul�� ������: �����޴��� ul+���� �޴��� ul */
        list-style-type: none;  /* ���� �޴� ���� ul ������ ��� ǥ�ø� ������ */
        margin: 0px;            /* ���� �޴� ���� ul�� margin�� ���� */
        padding: 0px;           /* ���� �޴� ���� ul�� padding�� ���� */
    }
    #topMenu ul li {            /* ���� �޴� �ȿ� ul �±� �ȿ� �ִ� li �±��� ��Ÿ�� ����(����/�����޴� ���) */
        color: white;               /* �۾� ���� ������� ���� */
        background-color: #2d2d2d;  /* ��� ���� RGB(2D2D2D)�� ���� */
        float: left;                /* �������� �����ǵ��� ���� */
        line-height: 30px;          /* �ؽ�Ʈ �� ���� ���̸� 30px�� ���� */
        vertical-align: middle;     /* ���� ������ ����� ���� */
        text-align: center;         /* �ؽ�Ʈ�� ����� ���� */
        position: relative;         /* �ش� li �±� ������ top/left ������ �ʱ�ȭ */
    }
    .menuLink, .submenuLink {           /* ���� �޴��� ���� �޴��� a �±׿� �������� ������ ��Ÿ�� */
        text-decoration:none;               /* a �±��� �ٹ� ȿ�� ���� */
        display: block;                     /* a �±��� Ŭ�� ������ ���� */
        width: 150px;                       /* �⺻ ���̸� 150px�� ���� */
        font-size: 12px;                    /* ��Ʈ ����� 12px�� ���� */
        font-weight: bold;                  /* ��Ʈ�� ���� ���� */
        font-family: "Trebuchet MS", Dotum; /* �⺻ ��Ʈ�� ����/�ѱ� ������� ���� */
    }
    .menuLink {     /* ���� �޴��� �۾����� ������� ���� */
        color: white;
    }
    .topMenuLi:hover .menuLink {    /* ���� �޴��� li�� ���콺���� �Ǿ��� �� ��Ÿ�� ���� */
        color: red;                 /* �۾� �� ������ */
        background-color: #4d4d4d;  /* ������ ���� ȸ������ ���� */
    }
    .submenuLink {          /* ���� �޴��� a �±� ��Ÿ�� ���� */
        color: #2d2d2d;             /* �۾� ���� RGB(2D2D2D)�� ���� */
        background-color: white;    /* ������ ������� ���� */
        border: solid 1px black;    /* �׵θ��� ���� */
        margin-top: -1px;           /* �� ĭ�� �ϴ� �׵θ��� �Ʒ�ĭ�� ��� �׵θ��� ���������� ���� */
    }
    .longLink {     /* �� �� �� �޴� ��Ÿ�� ���� */
        width: 190px;   /* ���̴� 190px�� ���� */
    }
    .submenu {              /* ���� �޴� ��Ÿ�� ���� */
        position: absolute;     /* html�� flow�� ������ ��ġ�� �ʰ� absolute ���� */
        height: 0px;            /* �ʱ� ���̴� 0px�� ���� */
        overflow: hidden;       /* �� ������ ���̺��� Ŀ���� �ش� ���� ���� */
        transition: height .2s; /* height�� ��ȭ ������ �� 0.2�ʰ� ��ȭ �ǵ��� ����(�⺻) */
        -webkit-transition: height .2s; /* height�� ��ȭ ������ �� 0.2�ʰ� ��ȭ �ǵ��� ����(������ ũ��/���Ķ��) */
        -moz-transition: height .2s; /* height�� ��ȭ ������ �� 0.2�ʰ� ��ȭ �ǵ��� ����(������ ����) */
        -o-transition: height .2s; /* height�� ��ȭ ������ �� 0.2�ʰ� ��ȭ �ǵ��� ����(������ �����) */
    }
    .topMenuLi:hover .submenu { /* ���� �޴��� ���콺 ����� ��� �� ���� ���� �޴� ��Ÿ�� ���� */
        height: 93px;           /* ���̸� 93px�� ���� */
    }
    .submenuLink:hover {        /* ���� �޴��� a �±��� ���콺 ���� ��Ÿ�� ���� */
        color: red;                 /* �۾����� ���������� ���� */
        background-color: #dddddd;  /* ����� RGB(DDDDDD)�� ���� */
    }
    </style>

</head>
<body>
	<nav id="topMenu" >
		<ul>
			
			<li class="topMenuLi">
			<a class="menuLink" href="http://localhost:8080/test/map.do" target="link">Moniter</a></li>
  			
			<li>|</li>
			<li><a class="menuLink" href="http://localhost:8080/test/memberlist.do" target="link">Video</a></li>
			<li>|</li>
			<li><a class="menuLink" href="http://localhost:8080/test/memberlist.do" target="link">Picture</a></li>
			<li>|</li>
			
			
			<li class="topMenuLi">
			<a class="menuLink">Database</a>
			<ul class="submenu">
				<li><a class="submenuLink loginLink" href="http://localhost:8080/test/database.do" target="link">DB����</a></li>
				<li><a class="submenuLink loginLink" href="http://localhost:8080/test/writeForm.do" target="link">DB��������</a></li>
			</ul>
			<li>|</li>
			
			
			<li class="topMenuLi">
			<a class="menuLink">Member Management</a>
  			<ul class="submenu">
  				<li><a class="submenuLink loginLink" href="http://localhost:8080/test/writeForm.do" target="link">ȸ�����</a></li>
  				<li><a class="submenuLink loginLink" href="http://localhost:8080/test/memberlist.do" target="link">ȸ������</a></li>
  				<li><a class="submenuLink loginLink" href="http://localhost:8080/test/memberlist.do" target="link">ȸ�� ����/����</a></li>
  			</ul>
		</ul>
			
	</nav>
	<iframe width="100%" height="600px"  frameborder="0" scrolling="no" name="link">
	</iframe>

</body>
</html>

