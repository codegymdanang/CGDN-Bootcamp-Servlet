
package Customer;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;


/**
 *
 * @author Trung
 */
public class Customer {
    private String name;
    private Date birthday;
    private String address;
    private String image;

    public Customer() {
    }
    
    DateFormat dateF = new SimpleDateFormat("DD/mm/yyyy");
    public Customer(String name, String Birthday, String Address, String Image) {
        this.name = name;
        try {
            this.birthday = dateF.parse(Birthday);
        } catch (ParseException ex) {
            Logger.getLogger(Customer.class.getName()).log(Level.SEVERE, null, ex);
        }
        this.address = Address;
        this.image = Image;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
    
    
}   
