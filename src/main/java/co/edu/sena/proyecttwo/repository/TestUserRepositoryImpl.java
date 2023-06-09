package co.edu.sena.proyecttwo.repository;

import co.edu.sena.proyecttwo.model.User;

import java.sql.*;

public class TestUserRepositoryImpl {
    public static void main(String[] args) throws SQLException {
        repository<User> repository = new UserRepositoryImpl();

        System.out.println("========== saveObj Insert =========="); //insert
        User userInsert = new User();
        userInsert.setUser_firstname("Guillermo");
        userInsert.setUser_lastname("Villaraga");
        userInsert.setUser_email("maikitol123@gmail.com");
        userInsert.setUser_password("678901212qwerty");
        repository.saveObj(userInsert);
        userInsert.setUser_firstname("Ricardo");
        userInsert.setUser_lastname("Astrada");
        userInsert.setUser_email("elSagradoRostro@gmail.com");
        userInsert.setUser_password("asdfg12345");
        repository.saveObj(userInsert);

        System.out.println("========== listAllObj ==========");
        repository.listAllObj().forEach(System.out::println);
        System.out.println();

        System.out.println("========== byIdObj ==========");
        System.out.println(repository.byIdObj(1));
        System.out.println();

        System.out.println("========== saveObj ==========");
        User userUpdate = new User();
        userUpdate.setUser_id(2);
        userUpdate.setUser_firstname("Jorge ");
        userUpdate.setUser_lastname("el curioso");
        userUpdate.setUser_email("elcuriosete@gmail.com");
        userUpdate.setUser_password("12345assas");
        repository.saveObj(userInsert);
        repository.listAllObj().forEach(System.out::println);
        System.out.println();

        System.out.println("========== deleteObj ==========");
        repository.deleteObj(2);
        repository.listAllObj().forEach(System.out::println);

    }
}
