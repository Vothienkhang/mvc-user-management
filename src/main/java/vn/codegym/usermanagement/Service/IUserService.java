package vn.codegym.usermanagement.Service;

import vn.codegym.usermanagement.Model.User;

import java.util.List;

public interface IUserService {
    List<User> findAll();

    User findById(int id);

    void save(User user);

    boolean update(User user);

    boolean remove(int id);

    List<User> searchByCountry(String country);

    List<User> sortByName();
}
