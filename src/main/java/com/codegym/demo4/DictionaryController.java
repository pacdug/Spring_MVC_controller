package com.codegym.demo4;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.HashMap;
import java.util.Map;

@Controller
public class DictionaryController {

    private static final Map<String, String> DICTIONARY = new HashMap<>();

    static {
        DICTIONARY.put("hello", "xin chào");
        DICTIONARY.put("world", "thế giới");
        DICTIONARY.put("computer", "máy tính");
        DICTIONARY.put("java", "ngôn ngữ lập trình Java");
    }

    @RequestMapping("/search")
    public String search(@RequestParam(name = "word", required = false) String word, Model model) {
        if (word != null && !word.trim().isEmpty()) {
            String meaning = DICTIONARY.get(word.toLowerCase());
            if (meaning != null) {
                model.addAttribute("result", "Meaning: " + meaning);
            } else {
                model.addAttribute("result", "Word not found in the dictionary.");
            }
        }
        return "index";
    }

    @RequestMapping("/add")
    public String addWord(@RequestParam(name = "word", required = false) String word,
                          @RequestParam(name = "meaning", required = false) String meaning,
                          Model model) {
        if (word != null && meaning != null && !word.trim().isEmpty() && !meaning.trim().isEmpty()) {
            DICTIONARY.put(word.toLowerCase(), meaning);
            model.addAttribute("message", "Word added successfully: " + word + " - " + meaning);
        } else {
            model.addAttribute("message", "Please provide both a word and its meaning.");
        }
        return "add";
    }
}