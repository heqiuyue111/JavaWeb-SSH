
package PO;

import java.io.Serializable;
import java.util.*;

public class Items implements Serializable{
    private Integer id;
    private String itemno;//��Ʒ��
    private String itemname;//��Ʒ����  
    private Set orders = new HashSet();
    public Integer getId() {
        return id;
    }
    public void setId(Integer id) {
        this.id = id;
    }
    public String getItemno() {
        return itemno;
    }
    public void setItemno(String itemno) {
        this.itemno = itemno;
    }
    public String getItemname() {
        return itemname;
    }
    public void setItemname(String itemname) {
        this.itemname = itemname;
    }
    public Set getOrders() {
        return orders;
    }
    public void setOrders(Set orders) {
        this.orders = orders;
    }
}
