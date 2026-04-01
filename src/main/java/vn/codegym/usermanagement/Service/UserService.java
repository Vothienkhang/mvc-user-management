package vn.codegym.usermanagement.Service;

import vn.codegym.usermanagement.DAO.IUserDAO;
import vn.codegym.usermanagement.DAO.UserDAO;
import vn.codegym.usermanagement.Model.User;

import java.sql.SQLException;
import java.util.List;

public class UserService implements IUserService {
    private IUserDAO userDAO = new UserDAO();

    @Override
    public List<User> findAll() {
        return userDAO.selectAllUsers();
    }

    @Override
    public User findById(int id) {
        return userDAO.selectUser(id);
    }

    @Override
    public void save(User user) {
        try {
            userDAO.insertUser(user);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public boolean update(User user) {
        try {
            return userDAO.updateUser(user);
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public boolean remove(int id) {
        try {
            return userDAO.deleteUser(id);
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public List<User> searchByCountry(String country) {
        return userDAO.searchUsersByCountry(country);
    }

    @Override
    public List<User> sortByName() {
        return userDAO.sortByName();
    }
}
