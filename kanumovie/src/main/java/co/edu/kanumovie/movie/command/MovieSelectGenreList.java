package co.edu.kanumovie.movie.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.edu.kanumovie.common.Command;
import co.edu.kanumovie.genre.vo.GenreVO;
import co.edu.kanumovie.movie.service.MovieService;
import co.edu.kanumovie.movie.serviceImpl.MovieServiceImpl;
import co.edu.kanumovie.movie.vo.MovieVO;
import co.edu.kanumovie.show.service.ShowService;
import co.edu.kanumovie.show.serviceImpl.ShowServiceImpl;
import co.edu.kanumovie.show.vo.ShowVO;

public class MovieSelectGenreList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		MovieService mdao = new MovieServiceImpl(); 
		ShowService sdao = new ShowServiceImpl(); 
		GenreVO vo = new GenreVO(); 
		vo.setId(Integer.valueOf(request.getParameter("id")));
		vo.setName(request.getParameter("name"));
		List<MovieVO> movielist = mdao.movieSelectGenreList(vo);
		List<ShowVO> showlist = sdao.showSelectGenreList(vo);
		request.setAttribute("movielist", movielist);
		request.setAttribute("showlist", showlist);
		request.setAttribute("genre", vo.getName());
		request.setAttribute("id", vo.getId());
		return "movie/movieSelectGenreList";
	}

}
