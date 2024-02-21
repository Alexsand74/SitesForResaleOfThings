package ru.skypro.sitesforresaleofthings.dto;

import lombok.Data;
import ru.skypro.sitesforresaleofthings.constant.Role;

/**
 * DTO регистрации
 */

/**
 * Свойства:
 * 1) username - логин,
 * 2) password - пароль,
 * 3) firstName - имя пользователя,
 * 4) lastName - фамилия пользователя,
 * 5) phone - телефон пользователя,
 * 6) role - роль пользователя (USER, ADMIN)
 */
@Data
public class Register {

    private String username;
    private String password;
    private String firstName;
    private String lastName;
    private String phone;
    private Role role;
}