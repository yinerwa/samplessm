package com.study.service;

import com.study.dao.User;
import com.study.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    UserMapper userMapper;

    @Override
    public User selectOne(User user) {
        return userMapper.selectOne(user);
    }
}
