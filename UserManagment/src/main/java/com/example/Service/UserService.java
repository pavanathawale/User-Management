package com.example.Service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.Model.User;
import com.example.Repository.UserRepository;

@Service
public class UserService {

	@Autowired
	UserRepository userRepository;

	public void SaveUser(User user) {
		userRepository.save(user);
	}

	public List<User> getList() {

		List<User> findAllUser = userRepository.findAll();
		return findAllUser;
	}

	public User getUser(int id) {
		Optional<User> uOptional = userRepository.findById(id);
		if (uOptional.isPresent()) {
			return uOptional.get();
		}
		return null;
	}

//	
	public void deleteUser(User user) {
		userRepository.delete(user);

	}
//	public User updateUser(User user) {
//		User existedUser=userRepository.findById(user.getId()).orElse(null);
//		existedUser.setName(user.getName());
//		existedUser.setEmail(user.getEmail());
//		existedUser.setLastname(user.getLastname());
//		return userRepository.save(existedUser);
//	}
}
