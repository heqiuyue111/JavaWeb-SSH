package PO;

import java.io.Serializable;

public class Company implements Serializable{
    private Integer id;//����ID
    private String companyname;//��λ����
    private String linkman;//��λ��ϵ��
    private String telephone;//��ϵ�绰
    private String email;//����
    private Login login;//������ϵ��Ҫ��Company���������һ���࣬��Login
    public Integer getId() {
        return id;
    }
    public void setId(Integer id) {
        this.id = id;
    }
    public String getCompanyname() {
        return companyname;
    }
    public void setCompanyname(String companyname) {
        this.companyname = companyname;
    }
    public String getLinkman() {
        return linkman;
    }
    public void setLinkman(String linkman) {
        this.linkman = linkman;
    }
    public String getTelephone() {
        return telephone;
    }
    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public Login getLogin() {
        return login;
    }
    public void setLogin(Login login) {
        this.login = login;
    }
}