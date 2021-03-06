package co.edu.kanumovie.user.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.edu.kanumovie.common.DataSource;
import co.edu.kanumovie.genre.vo.GenreVO;
import co.edu.kanumovie.user.service.UserMapper;
import co.edu.kanumovie.user.service.UserService;
import co.edu.kanumovie.user.vo.PreferVO;
import co.edu.kanumovie.user.vo.UserVO;

public class UserServiceImpl implements UserService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private UserMapper map = sqlSession.getMapper(UserMapper.class);
	
	
	@Override
	public List<UserVO> userListSelect() {
		return map.userListSelect();
	}

	@Override
	public List<UserVO> userSearchList(UserVO vo) {
		return null;
	}

	@Override
	public UserVO userSelect(UserVO vo) {
		return map.userSelect(vo);
	}

	@Override
	public int userInsert(UserVO vo) {
		return map.userInsert(vo);
	}

	@Override
	public int userUpdate(UserVO vo) {
		return map.userUpdate(vo);
	}

	@Override
	public int userDelete(UserVO vo) {
		return map.userDelete(vo);
	}

	@Override
	public int userUpdatePw(UserVO vo) {
		return map.userUpdatePw(vo);
	}

	@Override
	public int userUpdatePrefer(UserVO vo) {
		return map.userUpdatePrefer(vo);
	}

	@Override
	public List<PreferVO> perferList() {
		return map.perferList();
	}

	@Override
	public int userUpdateProfile(UserVO vo) {
		return map.userUpdateProfile(vo);
	}

	@Override
	public UserVO userSelectEmail(UserVO vo) {
		return map.userSelectEmail(vo);
	}

	@Override
	public List<GenreVO> userPreference(UserVO vo) {
		return map.userPreference(vo);
	}

}
