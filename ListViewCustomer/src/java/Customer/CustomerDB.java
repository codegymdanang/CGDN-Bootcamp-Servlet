
package Customer;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Trung
 */
public class CustomerDB {
    //Khai Báo Collection List để làm nơi chứa dữ liệu
    private static final List<Customer> customers = new ArrayList<Customer>();
    
    //Dùng Khối static để khởi tạo giá trị cho List
    static {
        Customer c1 = new  Customer("Đoàn Phước Trung", "17/07/1985", "Đà Nẵng","https://picsum.photos/70/90");
        Customer c2 = new  Customer("Trần Thanh Phương", "10/03/1997", "Hà Nội", "https://picsum.photos/70/90");
        Customer c3 = new  Customer("Ngô Bá Khá", "01/09/1994", "Hồ Chí Minh", "https://picsum.photos/70/90");

        customers.add(c1);
        customers.add(c2);
        customers.add(c3);
    }
    
     public static List<Customer> queryCustomer() {
        return customers;
    }
}
