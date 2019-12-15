
package PO;

import java.io.Serializable;
import java.util.*;

public class Customer implements Serializable {
    private Integer id;
    private String cname;//�ͻ�����
    private String bank;//�����ʺ�
    private String phone;//�绰����
    private Set orders = new HashSet();//��������һ����
    public Customer() {
    }
    public Integer getId() {
        return id;
    }
    public void setId(Integer id) {
        this.id = id;
    }
    public String getCname() {
        return cname;
    }
    public void setCname(String cname) {
        this.cname = cname;
    }
    public String getBank() {
        return bank;
    }
    public void setBank(String bank) {
        this.bank = bank;
    }
    public String getPhone() {
        return phone;
    }
    public void setPhone(String phone) {
        this.phone = phone;
    }
    public Set getOrders() {
        return orders;
    }
    public void setOrders(Set orders) {
        this.orders = orders;
    }
}
