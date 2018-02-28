package context.control;

import context.dao.UserRepository;
import context.model.SetData;
import context.model.User;
import context.util.ForwardUrl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.jws.WebParam;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping(value = "/")
public class UserControl {

    @Autowired
    private ForwardUrl forwardUrl;

    private UserRepository repository;

    @Autowired
    public void setRepository(UserRepository repository) {
        this.repository = repository;
    }

    private boolean isLogined(HttpSession session) {
        Boolean isLogined = (Boolean) session.getAttribute("islogined");
        if (isLogined == null || !isLogined) {
            return false;
        } else {
            return true;
        }
    }

    @RequestMapping(value = "/")
    public String home(){
        return "home";
    }

    @RequestMapping(value = "/home")
    public String getHome(){
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
        //System.out.print("性别"+user.getGender());
        System.out.println("用户名"+user.getUsername());
        System.out.println("密码"+user.getPassword());

        int id=repository.insertUser(user.getPassword(),user.getUsername(),"男","15051888552",18);
        //插入用户的账号密码到数据库中保存
        return  "redirect:/user/"+id;
    }

    @RequestMapping(value = "/login",method = RequestMethod.GET)
    public String loginin(){
        return "login";
    }

    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public String delLoginIn(@RequestParam("username") String username, @RequestParam("password") String password, HttpSession session){
        User user=repository.findUserByUsername(username);

        if(user==null){
            return "login";
        }
        session.setAttribute("islogined",true);
        session.setAttribute("username",username);
        session.setAttribute("attentionCount",20);
        session.setAttribute("fanCount",10);
        long id=user.getId();
        String url=forwardUrl.getForwardUrl();
        if(url.isEmpty())
            return  "redirect:/";
        else{
            return "redirect:/"+url;
        }
    }

    @RequestMapping(value = "/loginout")
    public String delLoginOut(HttpSession session){
        session.setAttribute("islogined",false);    //从会话中删除登录的用户信息
        session.removeAttribute("username");

        return "redirect:/login"; //用户退出后跳转到登录页
    }


    @RequestMapping(value = "/location")
    public String delLocation(){
        return "location";
    }

    @RequestMapping(value="/userpage")
    public String deluserpage(){
        return "userpage";
    }

    @RequestMapping(value="/userfans")
    public String delUserFans(Map model,HttpSession session){
        //处理完之后返回userfans
        if(!isLogined(session)){
            forwardUrl.setForwardUrl("userfans");
            return "login";
        }
        return "userfans";
    }

    @RequestMapping(value="/userattentions")
    public String delUserAttentions(Map model,HttpSession session){
        //处理完之后返回userfans
        if(!isLogined(session)){
            forwardUrl.setForwardUrl("userattentions");
            return "login";
        }
        List<User> attentions=new ArrayList<>();
        attentions.add(new User("张勇","帅哥一个"));
        attentions.add(new User("张广伟","小逗比加坑逼一个"));
        attentions.add(new User("土老比一个","他很懒，没有留下任何东西"));
        model.put("attentions",attentions);
        return "userattentions";
    }

    @RequestMapping(value = "/myclassstate")
    public String delUserClassState(HttpSession session){
        if(!isLogined(session)){
            forwardUrl.setForwardUrl("myclassstate");
            return "login";
        }
        return "myclassstate";
    }
}
