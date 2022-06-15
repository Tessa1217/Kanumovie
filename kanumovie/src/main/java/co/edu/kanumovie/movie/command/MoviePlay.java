package co.edu.kanumovie.movie.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.edu.kanumovie.common.Command;

public class MoviePlay implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		return "movie/moviePlay";
	}

}
