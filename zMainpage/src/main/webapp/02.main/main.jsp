<%@page contentType="text/html;charset=UTF-8"
		pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->

<script type="text/javascript"
			src="http://code.jquery.com/jquery-3.3.1.min.js"></script>

<title>메인페이지 < ></title>

<!-- 부트스트랩 -->
<link href="../css/bootstrap.min.css" rel="stylesheet">

<!-- 사이드바 -->
<link type="text/css" rel="stylesheet" href="body.css">
<link type="text/css" rel="stylesheet" href="side.css"> <!--사이드바 목록-->
<link type="text/css" rel="stylesheet" href="reset.css">

<!-- 슬라이드js  -->

<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.js"></script>
 <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script><!-- 1.슬라이드하며 추가한부분 -->


<script src="../js/main.js"></script> 
<script src="../js/jquery.cycle2.js"></script><!-- 자동으로 넘어가는거 -->


<script>
/*1.슬라이드하며 추가한부분 */
$(document).ready(function(){
	/* 상단메뉴라 관련이 없음 사이드바 목록 구현시 참고
    //1. 사용자가 .gnb메뉴에 마우스 오버하면
    $('.gnb').hover(function(){
      //1)서브가 보이게 한다.
      $('#h_bottom').stop().animate({'height':'320px'},300);   
      //2) 서브항목이 서서히 보이게 한다.
      $('.sub').fadeIn();
    },function(){
      $('#h_bottom').stop().animate({'height':'46px'},300);

      $('.sub').fadeOut();
    });
    */

    //메인 슬라이드 작성하기
    //1) 1번 슬라이드의 앞에 마지막 이미지를 끌어서 앞으로 배치한다.
    $('.m_slide ul > li:last-child').insertBefore($(".m_slide ul > li:first-child"));
    // $('.m_slide ul').css('margin-left','-1600px');
    $('.m_slide ul').css('margin-left','-100%');
    //2) 3초마다 반복되는 함수를 작성하기
    //왼쪽방향 함수
    function moveLeft(){
      console.log("3초마다 함수 호출하기");
      // $('.m_slide ul').animate({'margin-left':'-3200px'},function(){
      $('.m_slide ul').animate({'margin-left':'-200%'},function(){
        $('.m_slide ul > li:first-child').insertAfter($(".m_slide ul > li:last-child"));

        //왼쪽으로 한칸 더 밀리기 때문에 오른쪽으로 다시 위치를 맞춘다.
        // $('.m_slide ul').css('margin-left','-1600px');  
        $('.m_slide ul').css('margin-left','-500%');  
      });
    }
      
    //오른쪽 방향 함수
    function moveRight(){
      $('.m_slide ul').animate({'margin-left':'0px'},function(){
        $('.m_slide ul > li:last-child').insertBefore($(".m_slide ul > li:first-child"));

        //왼쪽으로 한칸 더 밀리기 때문에 오른쪽으로 다시 위치를 맞춘다.
        // $('.m_slide ul').css('margin-left','-1600px');  
        $('.m_slide ul').css('margin-left','-100%');  
      });
    }
    //매 지정한 시간마다 지정한 함수 호출하기
    var Timer = setInterval(moveLeft,3000);

  //좌,우 버튼 클릭시 해당방향으로 움직이게 하기
    $('.slid-btns > .left_btn').click(function(){
      alert("left");
      moveLeft();
    });

    $('.slid-btns > .right_btn').click(function(){
      alert("right");
      moveRight();
     
    });
   
    //좌,우 버튼에 마우스 오버시 시간을 제거하여 멈추게하고 다시 마우스 빼면 시간을 넣어서 움직이게
    $('i.fas fa-angle-left, i.fas fa-angle-right').hover(function(){
      clearInterval(Timer);
    },function(){
      Timer = setInterval(moveLeft, 3000);
    });
  });

</script>


<style> 	
        
</style>
</head>

<body>

<div id="container"> 
		<div class="sidebar "><!-- 사이드바 -->
			<div id="wrapper">
			<h3>ouerhome</h3>
				<div class="side_wrap">
					<div class="menu_cell">
				         <input type="checkbox" id="ch1">
				         <label for="ch1">DECORATION</label>
			           		<ul class="sub_menu">
			               		<li>Lamp</li>
				                <li>Frame</li>
				                <li>Candle</li>
				            </ul>
					 </div>    
			
			        <div class="menu_cell">
			            <input type="checkbox" id="ch2">
			            <label for="ch2">PLANTS</label>
			            <ul class="sub_menu">
			                <li>Flower </li>
			                <li>Furniture</li>
			                <li>Chair</li>
			                <li>Table</li>
			                <li>Dresser</li>
			            </ul>
			        </div>
			
			        <div class="menu_cell">
			            <input type="checkbox" id="ch3">
			            <label for="ch3">FABRIC</label>
			            <ul class="sub_menu">
			                <li>rug</li>
			                <li>mat</li>
			                <li>curtain/blind</li>
			            </ul>
			        </div>  
			        
			        <div class="menu_cell">
			            <input type="checkbox" id="ch4">
			            <label for="ch4">FABRIC</label>
			            <ul class="sub_menu">
			                <li>rug</li>
			                <li>mat</li>
			                <li>curtain/blind</li>
			                <li>covers</li>
			            </ul>
			        </div>   
			        
			        <div class="menu_cell">
			            <input type="checkbox" id="ch5">
			            <label for="ch5"> KITCHEN</label>
			            <ul class="sub_menu">
			                <li> 한글</li>
			                <li>영어가 안보여</li>
			                <li>글씨체바껴라</li>	
			                <li> Pantry </li>
			                <li>Cooking</li>
			                <li>dishes</li>				    
			            </ul>
			        </div>  
			        <p><p>
			        
			         <div class="menu_cell">
			           <!--  <input type="checkbox" id="ch6"> -->
			            <label for="ch6"> NOTICE</label>
			            <ul class="sub_menu">
			          	</ul>
			          </div>
			          <div class="menu_cell">
			            <!-- <input type="checkbox" id="ch7"> -->
			            <label for="ch7"> Q&A</label>
			            <ul class="sub_menu">
			          	</ul>
			          </div>
			          <div class="menu_cell">
			            <!-- <input type="checkbox" id="ch8"> -->
			            <label for="ch8">REVIEW</label>
			            <ul class="sub_menu">
			          	</ul>
			          </div>
			          <div class="menu_cell">
			            <!-- <input type="checkbox" id="ch9"> -->
			            <label for="ch9"> CANCEL</label>
			            <ul class="sub_menu">
			          	</ul>
			          </div>
			       
			    </div>    
							
			</div><!--<div id="wrapper">-->
		</div><!--sidebar  -->
		

		<!-- ========본문시작===========-->
	<div class="conent">
		
		<!--학원에서 받은부분
		<div class="conent_slider">
			<div class="cycle-slideshow  col-md-12">	
				<img src="../poto/cont_mt/vis1.jpg" class="slider">	 
				<img src="../poto/cont_mt/vis2.jpg" class="slider">			
				<img src="../poto/cont_mt/vis3.jpg" class="slider">				
				<img src="../poto/cont_mt/vis4.jpg" class="slider">			
			</div>
		</div> conent_slider -->
		
		 <article class="m_slide ">
		<!--1. 슬라이드쇼 https://blog.naver.com/pooh9868/222923264197 -->
			      <ul><!-- 1500*644 -->
			        <li><a href="#" title=""><img src="../poto/cont_mt/vis1.jpg" alt=""></a></li>
			        <li><a href="#" title=""><img src="../poto/cont_mt/vis4.jpg" alt=""></a></li>
			        <li><a href="#" title=""><img src="../poto/cont_mt/vis3.jpg" alt=""></a></li>
			        <li><a href="#" title=""><img src="../poto/cont_mt/vis2.jpg" alt=""></a></li>
			      </ul>
				 <!-- 좌우버튼 클릭시 해당방향이동  -->
				 	<div class="slide-btns"><!--  버튼 큰범위-->
				        <div class="left_btn">
				         <span> 
				            <i class="fas fa-angle-left"></i>
				          </span>
						</div>
						
						<div class="right_btn">
				          <span>
				            <i class="fas fa-angle-right"></i><!-- 화살표이미지 -->
				          </span>
				        </div>
				     </div>
			   </article><!-- conent_slider -->
	
	
	<!-- 제품목록 -->
		<div class="conent_list col-md-8" align="center" >
			<table class="list_imgs" >
				<tr>
					<td class="warp">
						 <div class="text">편안한의자</p>가격:58599 </p>추천</div>
						<img src="../poto/의자/01의자1(1).jpg"  class="img" width="100%" height="100%">
					</td>
					<td class="warp">
						 <div class="text"> 편안한의자</p>가격:$$$$$ </p>추천</div>
						<img src="../poto/의자/01의자1(1).jpg" class="img" width="100%" height="100%">						
					</td>
					<td class="warp">
						 <div class="text">한의자</p>가격:5400 </p></div>						
						<img src="../poto/의자/01의자1(2).jpg" class="img" width="100%" height="100%">					
					</td>							
				</tr>
				<tr>
					<td class="warp">
						 <div class="text">편안한의자</p>가격:54759 </p>추천</div>
						<img src="../poto/의자/04의자3.jpg"   class="img" width="100%" height="100%">
					</td>
					<td class="warp">
						 <div class="text"> 편안한의자</p>가격:$$$$$ </p>추천</div>
						<img src="../poto/의자/03의자(3).jpg" class="img" width="100%" height="100%">						
					</td>
					<td class="warp">
						 <div class="text">파란의자</p>가격:999999 </p></div>						
						<img src="../poto/의자/03의자(1).jpg" class="img" width="100%" height="100%">					
					</td>							
				</tr>
				<tr>
					<td class="warp">
						 <div class="text">편눕눕의자</p>가격:80000 </p>추천</div>
						<img src="../poto/의자/05의자3.jpg"   class="img" width="100%" height="100%">
					</td>
					<td class="warp">
						 <div class="text"> 등받이의자</p>가격:1200000 </p>추천</div>
						<img src="../poto/의자/04의자5.jpg" class="img" width="100%" height="100%">						
					</td>
					<td class="warp">
						 <div class="text">파란의자</p>가격:90000 </p></div>						
						<img src="../poto/의자/05의자8.jpg" class="img" width="100%" height="100%">					
					</td>							
				</tr>				
			</table>
		 </div>
     </div>
     

	 <!-- class="container-fluid navbar-bottom" 이렇게 넣어도 되는거 같음 양옆여백이조금있음-->
	<footer >
		<div class="footer" >
			상호명 | 대표자 | 전화번호 | 주소 서울특별시 강남구<p>
				사업자번호 xxx-xx-xxxxx<p>
 				이메일 | 교환,반품 주소지<p>			
		</div>
	</footer>

	
	<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
	<script src="../js/bootstrap.min.js"></script>
</div>	
</body>
</html>