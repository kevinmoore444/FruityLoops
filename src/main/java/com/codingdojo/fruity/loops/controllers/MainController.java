package com.codingdojo.fruity.loops.controllers;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.codingdojo.friuty.loops.models.Fruit;


@Controller
public class MainController {

    @RequestMapping("/")
    public String index(Model model) {
    	
    	//Instantiating an array of "Fruit" and I'm naming that array "fruits"
    	//To my list of "fruits" i'm adding new Fruit by invoking the constructor defined in the model
    	//Finally i'm passing "fruits" via the key "fruitsForMyModel" to fruits.jsp.
    	ArrayList<Fruit> fruits = new ArrayList<Fruit>();
        fruits.add(new Fruit("Kiwi", 1.5));
        fruits.add(new Fruit("Mango", 2.0));
        fruits.add(new Fruit("Goji Berries", 4.0));
        fruits.add(new Fruit("Orange", .75));
        fruits.add(new Fruit("Apple", .75));
        
        model.addAttribute("fruitsForMyModel", fruits);
        
        return "fruits.jsp";
    }
	
	
}
