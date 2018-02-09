package context.control;

import context.dao.UserRepository;
import context.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.jws.WebParam;
import java.util.Map;

@Controller
@RequestMapping(value = "/")
public class BaseControl {

    private UserRepository repository;

    @Autowired
    public void setRepository(UserRepository repository) {
        this.repository = repository;
    }

    @RequestMapping(value = "/")
    public String home(){
        return "home";
    }

    @RequestMapping(value = "/user/{id}")
    public String showUser(@PathVariable("id") long id, Map model){
        System.out.print("路径变量id:"+id);
        User user=repository.findUserByID(id);
        model.put("user",user);
        return "show";
    }

    @RequestMapping(value = "/regist",method = RequestMethod.GET)
    public String regist(){
        return "regist";
    }

    @RequestMapping(value = "/regist",method = RequestMethod.POST,produces="text/html;charset=UTF-8")
    public String delRegist(User user){
        System.out.print("性别"+user.getGender());
        int id=repository.insertUser(user.getPassword(),user.getUsername(),user.getGender(),"15051888552",18);
        return  "redirect:/user/"+id;
    }
}
