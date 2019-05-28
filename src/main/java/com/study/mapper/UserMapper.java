package com.study.mapper;

import com.study.dao.User;
import org.springframework.stereotype.Component;

@Component
public interface UserMapper {

     User selectOne(User user);
}
