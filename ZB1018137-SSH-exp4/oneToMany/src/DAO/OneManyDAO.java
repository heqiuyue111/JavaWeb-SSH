package DAO;

import addHibFile.HibernateSessionFactory;
import org.hibernate.*;
import PO.*;

public class OneManyDAO {

	public void addCustomer(Customer customer) {
		Session session = HibernateSessionFactory.currentSession();
		Transaction ts = null;
		try{
			ts = session.beginTransaction();
			session.save(customer);
			ts.commit();
		}catch(Exception ex){
			ts.rollback();
			System.out.println("��ӿͻ�ʧ��!");
			ex.printStackTrace();			
		}finally{
			HibernateSessionFactory.closeSession();
		}
	}

	public Customer loadCustomer(Integer id) {
		Session session = HibernateSessionFactory.currentSession();
		Transaction ts = null;
		Customer customer = null;
		try{
			ts = session.beginTransaction();
			customer = (Customer)session.get(Customer.class,id);
			ts.commit();
		}catch(Exception ex){
			ts.rollback();
			System.out.println("��ȡ�ͻ�ʧ�ܣ�");
			ex.printStackTrace();			
		}finally{
			HibernateSessionFactory.closeSession();
		}
		return customer;
	}

//	public void updateCustomer(Customer customer) {
//		Session session = MySessionFactory.currentSession();
//		Transaction ts = null;
//		try{
//			ts = session.beginTransaction();
//			session.update(customer);
//			ts.commit();
//		}catch(Exception ex){
//			ts.rollback();
//			System.out.println("�޸Ŀͻ���Ϣʧ�ܣ�");
//			ex.printStackTrace();			
//		}finally{
//			MySessionFactory.closeSession();
//		}
//	}

	public void addOrders(Orders order) {
		Session session = HibernateSessionFactory.currentSession();
		Transaction ts = null;
		try{
			ts = session.beginTransaction();
			session.save(order);
			ts.commit();
		}catch(Exception ex){
			ts.rollback();
			System.out.println("��Ӷ���ʧ�ܣ�");
			ex.printStackTrace();			
		}finally{
			HibernateSessionFactory.closeSession();
		}
	}

	public Orders loadOrders(Integer id) {
		Session session = HibernateSessionFactory.currentSession();
		Transaction ts = null;
		Orders order = null;
		try{
			ts = session.beginTransaction();
			order = (Orders)session.get(Orders.class,id);
			ts.commit();
		}catch(Exception ex){
			ts.rollback();
			System.out.println("��ȡ����ʧ�ܣ�");
			ex.printStackTrace();			
		}finally{
			HibernateSessionFactory.closeSession();
		}
		return order;
	}
//
//	public void updateOrders(Orders order) {
//		Session session = MySessionFactory.currentSession();
//		Transaction ts = null;
//		try{
//			ts = session.beginTransaction();
//			session.update(order);
//			ts.commit();
//		}catch(Exception ex){
//			ts.rollback();
//			System.out.println("���¶���ʧ�ܣ�");
//			ex.printStackTrace();			
//		}finally{
//			MySessionFactory.closeSession();
//		}
//	}
}