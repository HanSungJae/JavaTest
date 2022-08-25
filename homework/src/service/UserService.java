package service;

import dto.User;
import  mappers.UserMapper;
import org.apache.ibatis.annotations.Param;

public class UserService {
    private final UserMapper userMapper;

    public UserService(UserMapper userMapper){
        this.userMapper = userMapper;
    }

    public User getUser(String userId, String userPw){
        return userMapper.findUser(userId, userPw);
    }

    public void createUser(User user){
        userMapper.createUser(user);
    }

}
