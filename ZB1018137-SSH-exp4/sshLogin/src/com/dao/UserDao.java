package com.dao;

import com.entity.User;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public interface UserDao {
    /**
	 * ����Userʵ��
	 * @param id ����idָ����Ҫ���ص�Userʵ��������ֵ
	 * @return ���ؼ��ص�Userʵ��
	 */ 
	User get(Integer id);
	 
	/**
	 * ����Userʵ��
	 * @param user ����Userָ����Ҫ�����Userʵ��
	 * @return ���ظոձ����Userʵ���ı�ʶ����ֵ
	 */	
	Integer save(User user);
	/**
	 * �����û�������User
	 * @param name ����name ָ����ѯ���û���
	 * @return �����û�����Ӧ��ȫ��User
	 */
	List<User> findByName(String name);
}
