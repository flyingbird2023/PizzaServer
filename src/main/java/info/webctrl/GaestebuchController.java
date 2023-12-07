package info.webctrl;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 * @author Schulung
 */


import info.model.Gaestebuch;
import info.model.Eintrag;
import java.io.Serializable;
import java.util.List;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author Schulung
 */

public class GaestebuchController implements Serializable{
    
    private Eintrag currentEintrag;//当前条目
    
    public GaestebuchController() {
        currentEintrag=new Eintrag();
    }
    
    
    
    public void createEintrag() {
        this.currentEintrag = new Eintrag();
        
    }
   
    public void cancel() { //取消
        this.currentEintrag = null; 
       
    }

    public void save(HttpServletRequest req) {
        
        // remember sessionid 记住会话ID
        HttpSession session = req.getSession();
        if(session != null)
            this.currentEintrag.setSessionid(session.getId());
        else
            this.currentEintrag.setSessionid("unknown");
        // remember client ip 记住客户端ip
        
        this.currentEintrag.setInet(req.getRemoteAddr());
        // "BusinessLogik" “商业逻辑”
        this.currentEintrag.store();//店铺
        this.currentEintrag = null;
        
    }

    public Eintrag getCurrentEintrag() {
        return this.currentEintrag;
    }

    public void setCurrentEintrag(Eintrag e) {
        this.currentEintrag = e;
    }

    public List<Eintrag> getEintraege() {
        Gaestebuch g = new Gaestebuch();
        return g.getList();
    }
}
