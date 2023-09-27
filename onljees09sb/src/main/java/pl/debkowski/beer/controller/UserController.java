package pl.debkowski.beer.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.debkowski.beer.model.User;
import pl.debkowski.beer.repositories.UserRepository;

import javax.validation.Valid;

@Controller
@RequestMapping("/users")
public class UserController {

    @Autowired
    private UserRepository userRepository;

    @GetMapping("/register")
    public String showRegistrationForm(Model model) {
        model.addAttribute("user", new User());
        return "user/register";
    }

    @PostMapping("/register")
    public String registerUser(@ModelAttribute("user") @Valid User user, BindingResult bindingResult, Model model) {
        // Sprawdź, czy użytkownik o podanym loginie już istnieje
        User existingUser = userRepository.findByUsername(user.getUsername());
        if (existingUser != null) {
            bindingResult.rejectValue("username", "error.user", "Użytkownik o tym loginie już istnieje");
        }
        if (bindingResult.hasErrors()) {
            return "user/register";
        }
        userRepository.save(user); // Zapis użytkownika
        return "redirect:/users/login";
    }

    @GetMapping("/login")
    public String showLoginForm(Model model) {
        model.addAttribute("user", new User());
        return "user/login"; // Wskazuje na widok formularza logowania
    }

    @PostMapping("/login")
    public String loginUser(@ModelAttribute("user") @Valid User user, BindingResult bindingResult, Model model) {
        // Sprawdzanie, czy użytkownik istnieje w bazie danych
        User existingUser = userRepository.findByUsername(user.getUsername());

        if (existingUser == null || !existingUser.getPassword().equals(user.getPassword())) {
            bindingResult.rejectValue("password", "error.user", "Nieprawidłowy login lub hasło");
            return "user/login";
        }

        return "redirect:/users/dashboard";
    }

    @GetMapping("/dashboard")
    public String showDashboard() {
        return "user/dashboard";
    }
}


