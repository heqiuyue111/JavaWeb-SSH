package com.dao;

import com.entity.User;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public interface UserDao {
    /**
	 * 加载User实例
	 * @param id 参数id指定需要加载的User实例的主键值
	 * @return 返回加载的User实例
	 */ 
	User get(Integer id);
	 
	/**
	 * 保存User实例
	 * @param user 参数User指定需要保存的User实例
	 * @return 返回刚刚保存的User实例的标识属性值
	 */	
	Integer save(User user);
	/**
	 * 根据用户名查找User
	 * @param name 参数name 指定查询的用户名
	 * @return 返回用户名对应的全部User
	 */
	List<User> findByName(String name);
}
