package co.edu.kanumovie.user.service;

import java.util.List;

import co.edu.kanumovie.genre.vo.GenreVO;
import co.edu.kanumovie.user.vo.PreferVO;
import co.edu.kanumovie.user.vo.UserVO;

public interface UserMapper {
	public List<UserVO> userListSelect(); // 전체 유저 리스트.
//	public List<UserVO> userSearchList(UserVO vo); // 조건부 유저 검색 리스트.	
	public UserVO userSelect(UserVO vo); // 한 개 유저 정보.
	public int userInsert(UserVO vo); // 유저 회원가입.
	public int userUpdate(UserVO vo); // 유저 정보 변경. > 임시로 닉네임 바꾸는 거만.
	public int userUpdatePw(UserVO vo); // 유저 정보 pw 변경.
	public int userUpdatePrefer(UserVO vo); // 유저 정보 선호 영화 변경.
	public int userDelete(UserVO vo); // 유저 회원탈퇴.
	public int userUpdateProfile(UserVO vo); // 유저 프로필 변경.
	
	public List<PreferVO> perferList(); // 선호 영화 선택용 영화들 리스트.
	public UserVO userSelectEmail(UserVO vo); // 한 개 유저 정보 이메일로 가져오기.
	List<GenreVO> userPreference(UserVO vo); // 유저의 선호 장르 가져오기 
}
