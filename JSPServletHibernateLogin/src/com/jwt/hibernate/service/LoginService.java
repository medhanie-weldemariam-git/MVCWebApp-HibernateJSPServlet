package com.jwt.hibernate.service;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.jwt.hibernate.model.User;
import com.jwt.hibernate.util.HibernateUtil;

public class LoginService {

	public boolean authenticateUser(String username, String password) {
		User user = getUserByUserUserName(username);
		if (user != null && user.getUserName().equals(username)
				&& user.getPassWord().equals(password)) {
			return true;
		} else {
			return false;
		}
	}

	public User getUserByUserUserName(String userName) {
		Session session = HibernateUtil.openSession();
		Transaction tx = null;
		User user = null;
		try {
			tx = session.getTransaction();
			tx.begin();
			Query query = session.createQuery("from User where username='"
					+ userName + "'");
			user = (User) query.uniqueResult();
			tx.commit();
		} catch (Exception e) {
			if (tx != null) {
				tx.rollback();
			}
			e.printStackTrace();
		} finally {
			session.close();
		}
		return user;
	}

	public List<User> getListOfUsers() {
		List<User> list = new ArrayList<User>();
		Session session = HibernateUtil.openSession();
		Transaction tx = null;
		try {
			tx = session.getTransaction();
			tx.begin();
			list = session.createQuery("from User").list();
			tx.commit();
		} catch (Exception e) {
			if (tx != null) {
				tx.rollback();
			}
			e.printStackTrace();
		} finally {
			session.close();
		}
		return list;
	}
}
