package cn.hncu.servlets;

import java.io.IOException;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.hncu.domain.Car;
import cn.hncu.domain.User;

@WebServlet("/ShowUserServlet")
public class ShowUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//按理这里应该访问dao层查询，这里就模拟了
		User user = new User();
		user.setId("U001");
		user.setName("Jack");
		user.setPwd("1234");
		user.setAge(20);
		Random r = new Random();
		int len = r.nextInt(10); //随机生成 Car的数量
		Car[] cars = new Car[len];
		for (int i = 0; i < cars.length; i++) {
			cars[i] = new Car();
			cars[i].setName("Car"+(i+1));
			cars[i].setNo("No."+(i+1));
		}
		user.setCars(cars);
		
		request.setAttribute("user", user);
		request.getRequestDispatcher("/jsps/show.jsp").forward(request, response);
	}

}
