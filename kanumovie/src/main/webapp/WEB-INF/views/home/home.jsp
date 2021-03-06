<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<% String email=(String) session.getAttribute("email"); %>
<% String nick = (String) session.getAttribute("nick"); %>
<!DOCTYPE html>
<html>
<head>
<link rel="preconnect" href="https://fonts.googleapis.com"> 
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin> 
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap" rel="stylesheet">
<style>

#banner {
	margin: 0 auto;
	width: 80%;
}

#showcontainer {
	float: left;
	width: 70%;
	padding-left: 5%;
	height: 1600px;
	position: relative;
}

#showcontainer .row {
	box-sizing: border-box;
	display: block;
	width: 100%;
	margin: 5% 0% 5% 0%;
	padding: 0;
	height: 600px;
	max-width: 100%;
	max-height: 600px;
	
}

#showcontainer .large-16 {
	width: 100%;
	height: 500px;
	max-height: 500px;
	padding: 0%;
	margin: 0%;
}

#showcontainer .owl-carousel {
	width: 100%;
	height: 100%;
	padding: 2%;
}

#showcontainer .owl-stage-outer {
	height: 100%;
	width: 100%;
	padding: 2% 2% 2% 2%;

}

#showcontainer .owl-stage .active {
	overflow: visible;
	height: 100%;
}

#showcontainer .owl-stage {
	width: 100%;
	height: 100%;
	
}

#showcontainer .owl-item {
	padding: 0%;
	width: 95%;
	height: 100%;
}

h1 {
	color: white;
}

.item {
	position: relative;
	width: 95%;
	height: 100%;
	background-size: 100% 100%;
	border-radius: 10px;
	background-image: url('img/theater.jpg');
	margin: 0%;
}

.item:hover {
	transform: scale(1.1);
	transition: 0.5s;
	cursor: pointer;
	border-radius: 10px;
	z-index: 50;
}

.item:hover h2 {
	opacity: 0;
}

.item:hover p {
	opacity: 0;
}

.item h2 {
	position: absolute;
	top: -3%;
	left: -3%;
	color: #fff;
	font-weight: bold;
	z-index: 100;
	font-family: 'Black Han Sans', sans-serif;
	
}

#showcontainer h3 {
	color: white;
	margin:3% 0% 0% 3%;
	width: 100%;
	font-family: "Oswald", sans-serif;
}

#showcontainer p {
	color: #fff;
	position: absolute;
	display: flex;
	top: 70%;
	left: 5%;
	font-size: x-large;
	line-height: 140%;
	overflow: visible;
	font-family: 'Black Han Sans', sans-serif;
}

#bdirname {
	background-size: 100% 100%;
}

.product__sidebar__comment {
	width: 25%;
	float:right;
	margin-top: 6%;
}

.btn {
border: 1px solid #E53637;
}
/* 
footer {
	height: 200px;
	opacity: 0;
} */

.product__sidebar__comment__item {
	padding: 2%;
	margin: 2%;
}

.product__sidebar__comment__item:hover {
	cursor:pointer;
	transform:scale(1.1);
	transition: 0.3s;
	
}

.product__sidebar__comment__item img {
	width: 60%;
	height: 200px;
	border-radius: 10px;
}
.product__sidebar__comment__item__text h5 {
	font-family: 'Black Han Sans', sans-serif;
	color: white;
	margin: 0%;
}

.product__sidebar__comment__item__text span {
 	font-size: 8%;
}

.product__sidebar__comment__item__text i {
	font-size: 8%;
}
</style>
<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="css/project-movie.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- banner start -->
<div id="banner">
		<div class="hero__slider owl-carousel">
			<c:forEach items="${blist}" var="b">
				<div id="bdirname" class="hero__items set-bg" style="background-image: url('img/banner/${b.bdirname}')">
					<div class="row">
						<div class="col-lg-6">
							<div class="hero__text">
								<div class="label" id="genrename">${b.genrename}</div>
								<h2 id="btitle">${b.btitle}</h2>
								<p id="bcontent">${b.bcontent}</p>
								<a href="#"><span>Watch Now</span> <i
									class="fa fa-angle-right"></i></a> 
									<c:if test="${authority eq 'admin'}"> <!-- ???????????? ????????? ????????? -->
									<a href="bannerupdateform.do?bid=${b.bid}" class="btn btn-sm btn-primary"
									style="margin-top: 20px; color: white; background-color: #E53637"
									>??????</a>
									<a href="deletebanner.do?bid=${b.bid}" class="btn btn-sm btn-primary" 
									style="margin-top: 20px; color: white; background-color: #E53637">??????</a>
									</c:if>
									
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
			
		</div>
	</div>
	
	<!-- banner end -->
	<!-- TOP 20 ?????? ???????????? -->
	<div id="showcontainer">
		<div class="row">
			<div>
				<h3>Now Trending Movie</h3>
			</div>
			<div class="large-16 columns">
				<div class="owl-carousel owl-theme movie">
					<div class="item" id="movie1"></div>
					<div class="item" id="movie2"></div>
					<div class="item" id="movie3"></div>
					<div class="item" id="movie4"></div>
					<div class="item" id="movie5"></div>
					<div class="item" id="movie6"></div>
					<div class="item" id="movie7"></div>
					<div class="item" id="movie8"></div>
					<div class="item" id="movie9"></div>
					<div class="item" id="movie10"></div>
					<div class="item" id="movie11"></div>
					<div class="item" id="movie12"></div>
					<div class="item" id="movie13"></div>
					<div class="item" id="movie14"></div>
					<div class="item" id="movie15"></div>
					<div class="item" id="movie16"></div>
					<div class="item" id="movie17"></div>
					<div class="item" id="movie18"></div>
					<div class="item" id="movie19"></div>
					<div class="item" id="movie20"></div>
				</div>
			</div>
		</div>
		<!-- TOP 20 ??? ???????????? -->
		<div class="row">
			<div>
				<h3>Now Trending Show</h3>
			</div>
			<div class="large-16 columns">
				<div class="owl-carousel owl-theme show">
					<div class="item" id="show1"></div>
					<div class="item" id="show2"></div>
					<div class="item" id="show3"></div>
					<div class="item" id="show4"></div>
					<div class="item" id="show5"></div>
					<div class="item" id="show6"></div>
					<div class="item" id="show7"></div>
					<div class="item" id="show8"></div>
					<div class="item" id="show9"></div>
					<div class="item" id="show10"></div>
					<div class="item" id="show11"></div>
					<div class="item" id="show12"></div>
					<div class="item" id="show13"></div>
					<div class="item" id="show14"></div>
					<div class="item" id="show15"></div>
					<div class="item" id="show16"></div>
					<div class="item" id="show17"></div>
					<div class="item" id="show18"></div>
					<div class="item" id="show19"></div>
					<div class="item" id="show20"></div>
				</div>
			</div>
		</div>
		<!-- ?????? ????????? ???????????? -->
		<c:if test="${not empty email}">
		<div class="prefer row">
			<div>
				<input type="hidden" id="sessionId" value="${email}">
				<h3>${nick}?????? ??? ??????</h3>
			</div>
			<div class="large-16 columns">
				<div class="owl-carousel owl-theme movie">
					<div class="item" id="movie1"></div>
					<div class="item" id="movie2"></div>
					<div class="item" id="movie3"></div>
					<div class="item" id="movie4"></div>
					<div class="item" id="movie5"></div>
					<div class="item" id="movie6"></div>
					<div class="item" id="movie7"></div>
					<div class="item" id="movie8"></div>
					<div class="item" id="movie9"></div>
					<div class="item" id="movie10"></div>
					<div class="item" id="movie11"></div>
					<div class="item" id="movie12"></div>
					<div class="item" id="movie13"></div>
					<div class="item" id="movie14"></div>
					<div class="item" id="movie15"></div>
					<div class="item" id="movie16"></div>
					<div class="item" id="movie17"></div>
					<div class="item" id="movie18"></div>
					<div class="item" id="movie19"></div>
					<div class="item" id="movie20"></div>
				</div>
			</div>
		</div>
		</c:if>
		<aside>
			
		</aside>
	</div>
	<script type="text/javascript">  
		let name = "<%=request.getAttribute("message")%>";
		if (name == 'login') {
			alert('????????????????????????.')
		} else if (name == 'logout') {
			alert('???????????????????????????')
		} else if (name == 'login2') {
			alert('????????? ??????!!')
		} else if (name == 'signup') {
			alert('???????????? ??????!!')
		} else if (name == 'signupfail') {
			alert('???????????? ??????!!')
		}
	</script>
	<!-- ???????????? ????????? ????????? ?????? ?????? 5??? ?????? -->
	 <div class="product__sidebar__comment">
        <div class="section-title">
            <h5>Latest Comment</h5>
        </div>
        <c:forEach items="${latestclist}" var="comment">
        	<div class="product__sidebar__comment__item">
        		<img src="https://image.tmdb.org/t/p/w500${comment.posterPath}" onerror="this.src='img/theater.jpg';" onclick="location.href='movieInfo.do?id=${comment.id}'">
        	</div>
        	<div class="product__sidebar__comment__item__text">
        		<h5>${comment.title}</h5>
        		<span><i class="fa fa-check"></i>${comment.voteCount} votes</span>
        	</div>
        </c:forEach>
  </div>
	<script src="js/makeMovieCard.js"></script>
	<script src="js/movie.js"></script>
	<script>
	// ????????? ???????????? ?????? 20??? ????????? ??????
	const posterpath = "https://image.tmdb.org/t/p/w500"
	let param = {"email":'<%=email%>'};
	if ('<%=email%>' != null) {
		fetch('userLikesSelectList.do', {
			method:'POST',
			headers:{'Content-Type':'application/json'},
			body:JSON.stringify(param)
		})
			.then(response => response.json())
			.then(data => {
				if (data.length == "0") {
					console.log(document.querySelector('.prefer'));
					document.querySelector('.prefer').remove(); 
					return;
				} else if (data.length != "0") {
				// ???????????? ????????? ?????? ????????????
				let showContainer = document.querySelector('#showcontainer');
				showContainer.setAttribute('style', 'height:2100px');
				// Fetch ????????? ?????? ???????????? ?????????????????? ?????? ??????
				data.forEach((elem, idx) => {
					if (idx < 20) {
					fetch('https://api.themoviedb.org/3/movie/' + elem.id + '?api_key=e51d70c65b46eb8bd60cafccc9325e8b&language=ko-KR')
						.then(response => response.json())
						.then(data => {
							let moviecard = document.querySelector('.prefer #movie' + (idx+1));		
							moviecard.addEventListener('click', function() {
								insertMovie(data);
							});
							let title = document.createElement('p');
							title.innerHTML = data.title;
							moviecard.append(title);
							moviecard.setAttribute('style', 'background-image:url(' + posterpath + data.poster_path + ')');
						})
					}
				})
				}
			})
	}
	</script>
	<script src="js/banner.js?ver=1"></script>
</body>
</html>