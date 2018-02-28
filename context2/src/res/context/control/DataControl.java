package context.control;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.ContextLoader;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;

@Controller
@RequestMapping(value = "/")
public class DataControl {

    @RequestMapping(value = "/createstate",method = RequestMethod.GET)
    public String forwardCreateStatePage(){
        return "createstate";
    }

    @RequestMapping(value = "/createstate",method = RequestMethod.POST)
    public String createState(@RequestParam String state_text, @RequestParam MultipartFile state_img[],@RequestParam MultipartFile state_video[]) throws IOException {

        String basePath = ContextLoader.getCurrentWebApplicationContext().getServletContext().getRealPath("/");
        System.out.println("当前应用上下文目录："+basePath);

        for(int i=0;i<state_img.length;++i){       //处理图片
            MultipartFile multipartFile=state_img[i];
            String filename=multipartFile.getOriginalFilename();
            System.out.println(filename);
            multipartFile.transferTo(new File(filename));
        }
        for(int i=0;i<state_video.length;++i){       //处理视频
            MultipartFile multipartFile=state_video[i];
            String filename=multipartFile.getOriginalFilename();
            System.out.println(filename);
            multipartFile.transferTo(new File(filename));
        }
        return "redirect:/home";
    }

    @RequestMapping(value = "/classdetail")
    /**
     * @Param classroomID 课堂ID
     * @Param classID 课堂中某一课程ID
     * */
    public String getClassDetail(String classrooomID,String classID){
        return "classdetail";
    }
}
