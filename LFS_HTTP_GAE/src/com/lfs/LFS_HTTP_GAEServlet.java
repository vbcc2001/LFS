package com.lfs;

import java.io.IOException;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class LFS_HTTP_GAEServlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		resp.setContentType("text/plain");
		resp.getWriter().println("Hello, world");
	}
}
