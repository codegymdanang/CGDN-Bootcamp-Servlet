import javax.servlet.RequestDispatcher;
import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Random;

//Dùng anotation để cấu hình url cho servlet
@WebServlet(name = "QuizServlet", urlPatterns = "/quiz")
public class QuizServlet extends HttpServlet {
    //Khai báo 1 đối tượng của hàm Random
    Random rd = new Random();

    //Phương thức doGet trả về trang quiz với score mặc định = 0 và number1, number2 là ngẫu nhiên
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int score = 0;
        int number1 = rd.nextInt(30);
        int number2 = rd.nextInt(20);

        //set các Attribute để chuyển dữ liệu sang sang view quiz.jsp
        request.setAttribute("number1", number1);
        request.setAttribute("number2", number2);
        request.setAttribute("score", score);
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/quiz.jsp");
        dispatcher.forward(request, response);
    }

//    Phương thức doPost lấy về number1, number2,result, score để kiểm tra và trả về 2 số ngẫu nhiên mói nếu đáp án đúng
//    và trả về 1 redirect đến servlet googbye nếu đáp án sai
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int number1 = Integer.parseInt(request.getParameter("number1"));
        int number2 = Integer.parseInt(request.getParameter("number2"));
        int result = Integer.parseInt(request.getParameter("result"));
        boolean isResult = number1 + number2 == result;

        if (isResult) {
            int newNumber1 = rd.nextInt(10);
            int newNumber2 = rd.nextInt(10);
            int score = Integer.parseInt(request.getParameter("score")) + 1;
            request.setAttribute("number1", newNumber1);
            request.setAttribute("number2", newNumber2);
            request.setAttribute("score", score);
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/quiz.jsp");
            dispatcher.forward(request, response);
        } else {
            response.sendRedirect("goodbye");
        }

    }


}
