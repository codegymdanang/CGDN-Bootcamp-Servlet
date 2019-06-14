/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Product;
import service.ProductService;
import service.ProductServiceImpl;

/**
 *
 * @author Trung
 */
//Sử dụng datanotaion để khai bao cho servlet
@WebServlet(name = "ProductServlet", urlPatterns = "/Product")

public class ProductServet extends HttpServlet {

    //khai báo đối tượng productService để sử dụng các phương thức đã xây dựng
    private ProductService productService = new ProductServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        //Get thông tin action
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                formCreateProduct(request, response);
                break;
            case "edit":
                formEditProduct(request, response);
                break;
            case "delete":
                formDeleteProduct(request, response);
                break;
            case "view":
                formViewProduct(request, response);
                break;
            default:
                listProducts(request, response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                createProduct(request, response);
                break;
            case "edit":
                editProduct(request, response);
                break;
            case "delete":
                deleteProduct(request, response);
                break;
            default:
                break;
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    //Phương thức trả về list Product và load trang list.jsp
    private void listProducts(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<Product> products = this.productService.findAll();
        request.setAttribute("products", products);

        request.getRequestDispatcher("Product/list.jsp").forward(request, response);

    }
    
    //Phương thức load trang create.jsp
    private void formCreateProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("Product/create.jsp").forward(request, response);
    }
    
    //Phương thức tạo mới 1 product và lưu dữ liệu
    private void createProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        long price = Long.parseLong(request.getParameter("price"));
        String manufacture = request.getParameter("manufacture");
        int id = (int) (Math.random() * 10000);
        Product product = new Product(id, name, price, manufacture);
        this.productService.save(product);
        request.setAttribute("message", "Created successful");
        request.getRequestDispatcher("Product/create.jsp").forward(request, response);
    }
    
    //Phương thức load trang edit.jsp
    private void formEditProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, IOException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Product product = this.productService.findById(id);
        if (product == null) {
            try {
                request.getRequestDispatcher("page404.jsp").forward(request, response);
            } catch (IOException ex) {
                Logger.getLogger(ProductServet.class.getName()).log(Level.SEVERE, null, ex);
            }
        } else {
            request.setAttribute("product", product);
            request.getRequestDispatcher("Product/edit.jsp").forward(request, response);
        }

    }

    //Phương thức edit 1 Product
    private void editProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, IOException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Product product = this.productService.findById(id);
        String name = request.getParameter("name");
        long price = Long.parseLong(request.getParameter("price"));
        String manufacture = request.getParameter("manufacture");
        if (product == null) {
            request.getRequestDispatcher("page404.jsp").forward(request, response);
        } else {
            product.setName(name);
            product.setPrice(price);
            product.setManufacture(manufacture);
            this.productService.save(product);
            request.setAttribute("product", product);
            request.setAttribute("message", "Edit succesful");
            request.getRequestDispatcher("Product/edit.jsp").forward(request, response);
        }
    }

    //Phương thức load trang delete.jsp
    private void formDeleteProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Product product = productService.findById(id);
        if (product == null) {
            request.getRequestDispatcher("page404.jsp").forward(request, response);
        } else {
            request.setAttribute("product", product);
            request.getRequestDispatcher("Product/delete.jsp").forward(request, response);
        }
    }

    //Phương thức delete 1 sản phẩm
    private void deleteProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Product product = productService.findById(id);
        if (product == null) {
            request.getRequestDispatcher("page404.jsp").forward(request, response);
        } else {
            this.productService.remove(id);
            response.sendRedirect("Product");
        }

    }
    
    //Phương thức load trang view.jsp
    private void formViewProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Product product = productService.findById(id);
        if (product == null) {
            request.getRequestDispatcher("page404.jsp").forward(request, response);
        } else {
            request.setAttribute("product", product);
            request.getRequestDispatcher("Product/view.jsp").forward(request, response);
        }
    }

}
