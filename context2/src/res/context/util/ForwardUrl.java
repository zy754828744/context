package context.util;

import org.springframework.stereotype.Component;

@Component
public class ForwardUrl {
    private String forwardUrl="";

    public String getForwardUrl() {
        String url=forwardUrl;
        forwardUrl="";  //清空
        return url;
    }

    public void setForwardUrl(String forwardUrl) {
        this.forwardUrl = forwardUrl;
    }
}
