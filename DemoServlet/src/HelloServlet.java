import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/*
cấu hình đường dẫn cho servlet dùng anotation
@WebServlet(name = "QuizServlet", urlPatterns = "/hello")
*/

//hoặc cấu hình trong web.xml bằng cách khai báo thẻ <servlet> và <servlet-mapping>
public class HelloServlet extends HttpServlet {

    //Phương thức init sẽ khởi tạo trong lần đầu tiên servlet được gọi.
    @Override
    public void init() throws ServletException {
        System.out.println("-------------------------------");
        System.out.println("-------------------------------");
        System.out.println("---------Create servlet--------");
        System.out.println("-------------------------------");
        System.out.println("-------------------------------");
    }

    //Phương thức destroy sẽ xoá servlet khi disconnect server hoặc gỡ project ra khỏi server đang chạy
    @Override
    public void destroy() {
        System.out.println("-------------------------------");
        System.out.println("-------------------------------");
        System.out.println("--------Destroy servlet--------");
        System.out.println("-------------------------------");
        System.out.println("-------------------------------");
    }

    //phương thức service để kiểm tra request được gửi lên là loại gì trong số các phương thức http
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.service(req, resp);
        System.out.println("-------------------------------");
        System.out.println("-------------------------------");
        System.out.println("Method of request is: " + req.getMethod());
        System.out.println("-------------------------------");
        System.out.println("-------------------------------");
    }

    //phương thức doPost để xử lý khi request gửi lên là http Post
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter writer = response.getWriter();
        writer.println("Hello!! ");
        String name = request.getParameter("name");
        writer.print(name);
        writer.println("<h1>  You used method Post</h1>");
    }

    //phương thức doGet để xử lý khi request gửi lên là http Get
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter writer = response.getWriter();
        writer.println("Hello!! ");
        String name = request.getParameter("name");
        writer.println(name);
        writer.println("<h1> You used method Get</h1>");

    }
}
