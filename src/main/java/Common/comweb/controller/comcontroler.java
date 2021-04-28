package Common.comweb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import static java.lang.Math.sqrt;

@Controller
public class comcontroler {

    @GetMapping("com")
    public String Factorization(@RequestParam("input") int input , Model model)
    {


        for(int i=2;i<=sqrt(input);i++)
        {
            while(input%i==0)
            {
                input = input/i;
            }
        }





        model.addAttribute("output",input);

        return "comtemplate";

    }


}
