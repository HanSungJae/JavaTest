package mappers;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import dto.User;
@Mapper
public interface UserMapper {
    User findUser(@Param("userId") String userId, @Param("userPw") String userPw);
    void createUser(User user);
}
