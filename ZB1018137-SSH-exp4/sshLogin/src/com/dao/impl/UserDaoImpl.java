
package com.dao.impl;

import com.dao.UserDao;
import com.entity.User;
import java.util.List;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate5.HibernateTemplate;

public class UserDaoImpl implements UserDao {
    //ʵ����һ��HibernateTemplate��������ִ�г־û�����
    private  HibernateTemplate ht = null;
    //Hibernate�־û���������SessionFactory
    private SessionFactory sessionFactory = null;
    //��������ע���setter����
    public  void setSessionFactory(SessionFactory sessionFactory)
    {
        this.sessionFactory = sessionFactory;
    }
    //��ʼ��ibernateTemplate����
    private HibernateTemplate getHibernateTemplate()
    {
        if (ht == null) {
            ht = new HibernateTemplate(sessionFactory);
        }
        return ht;
    }
    
    @Override
    public User get(Integer id) {
        //��ȡ��Ӧ����idΪĳ��ֵ�����ݣ�id Ϊ��������
       return getHibernateTemplate().get(User.class, id);
    }

    @Override
    public Integer save(User user) {
       return  (Integer)getHibernateTemplate().save(user);
    }

    @Override
    public List<User> findByName(String name) {
        //�������Ʋ���ƥ���User
        return (List<User>)getHibernateTemplate().find("from User u where u.name = ? ",name);
    }
     
}
