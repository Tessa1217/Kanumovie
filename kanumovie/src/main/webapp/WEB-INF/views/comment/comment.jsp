<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
	String email = (String)session.getAttribute("email");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div class="anime__details__review">
		<div class="section-title">
			<h5>Reviews</h5>
		</div>
		<c:forEach items="${comments }" var="comments">
			<div class="anime__review__item">
				<div class="anime__review__item__pic">
					<img src="img/anime/review-1.jpg" alt="">
				</div>
				<div class="anime__review__item__text">
					<h6>
					${comments.nick }	- <span>${comments.wdate }</span>
					<c:if test="${comments.email == email }">
					
					<a href="#">����</a>
					<button type="button"
                        class="btn btn-sm btn-outline-danger comment-delete-btn"
                        data-comment-id="{{cid}}">����
               	    </button>
					</c:if>
					<a href="#">�Ű�</a>
					</h6>
					
					<p>${comments.comments }</p>
				</div>
			</div>
		</c:forEach>
	</div>


	<c:if test="${email != null }">
	<div class="anime__details__form">
		<div class="section-title">
			<h5>Your Comment</h5>
		</div>
		<form id ="writeCommentForm" action="commentInsert.do" method="post">
			<textarea id="comments" name="comments" placeholder="Your Comment"></textarea>
			<button type="submit">
				<i class="fa fa-location-arrow"></i> Review
			</button>
		</form>
	</div>
	</c:if>
</body>

<Script>
{
  // ���� ��ư ����
  const commentDeleteBtns = document.querySelectorAll(".comment-delete-btn");
  // ���� ��ư �̺�Ʈ�� ó��
  commentDeleteBtns.forEach(btn => {
    // �� ��ư�� �̺�Ʈ ó���� ���
    btn.addEventListener("click", (event) => {
      // �̺�Ʈ �߻� ��Ҹ� ����
      const commentDeleteBtn = event.target;
      // ���� ��� id ��������
      const commentId = commentDeleteBtn.getAttribute("data-comment-id");
      console.log(`���� ��ư Ŭ��: ${commentId}�� ���`);
    });
  });
}
</script>
</html>