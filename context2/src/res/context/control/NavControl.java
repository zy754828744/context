package context.control;

import com.sun.deploy.net.HttpResponse;
import context.model.SetData;
import context.util.ForwardUrl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping(value = "/")
public class NavControl {

    @Autowired
    private ForwardUrl forwardUrl;

    private boolean isLogined(HttpSession session) {
        Boolean isLogined = (Boolean) session.getAttribute("islogined");
        if (isLogined == null || !isLogined) {
            return false;
        } else {
            return true;
        }
    }

    @RequestMapping(value = "/set",method = RequestMethod.GET)
    public String delSet(HttpSession session) {

        if (isLogined(session)) { //如果已经登录
            return "set";
        } else {                  //没有登录的话跳转到登录页面
            forwardUrl.setForwardUrl("set");
            return "login";
        }
    }

    @RequestMapping(value = "/set",method = RequestMethod.POST)
    public String delSet(SetData setData){
        System.out.println("职位："+setData.getPosition());
        return "set";
    }

    @RequestMapping(value = "/attention")
    public String delAttention(HttpSession session){
        System.out.println("attention控制器处理了请求");
        if (isLogined(session)) { //如果已经登录
            return "attention";
        } else {                  //没有登录的话跳转到登录页面
            forwardUrl.setForwardUrl("attention");
            return "login";
        }
    }

    @RequestMapping(value = "/share")
    public String delShare(HttpSession session){
        if (isLogined(session)) {    //如果已经登录

            //这里执行分享逻辑//
            return "home";      //执行分享逻辑后，返回主页，刷新主页
        } else {                  //没有登录的话跳转到登录页面
            return "login";
        }
    }

    @RequestMapping(value = "/usershare")
    public String delUserShare(HttpSession session){
        if (isLogined(session)) {    //如果已经登录

            //这里执行分享逻辑//
            return "usershare";      //执行分享逻辑后，返回主页，刷新主页
        } else {                  //没有登录的话跳转到登录页面
            forwardUrl.setForwardUrl("usershare");
            return "login";
        }
    }
    @RequestMapping(value = "/menu")
    public String delMenu(HttpSession session){
        if (isLogined(session)) {    //如果已经登录
            return "menu";
        } else {                  //没有登录的话跳转到登录页面
            forwardUrl.setForwardUrl("menu");
            return "login";
        }
    }

    @RequestMapping(value = "/userclass")
    public String delUserClass(HttpSession session){
        if (isLogined(session)) {    //如果已经登录
            return "class";
        } else {                  //没有登录的话跳转到登录页面
            forwardUrl.setForwardUrl("userclass");
            return "login";
        }
    }

    @RequestMapping(value = "/class")
    public String delClass(HttpSession session){
        return "class";
    }
}
