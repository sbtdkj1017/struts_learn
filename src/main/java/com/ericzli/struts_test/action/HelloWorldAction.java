package com.ericzli.struts_test.action;

import com.ericzli.struts_test.model.MessageStore;
import com.opensymphony.xwork2.ActionSupport;
 
public class HelloWorldAction extends ActionSupport {
 
    private static final long serialVersionUID = 1L;
 
    private MessageStore messageStore;
     
    public String execute() throws Exception {
         
        messageStore = new MessageStore() ;
        if (userName != null) {
            
            messageStore.setMessage( messageStore.getMessage() + " " + userName);
                     
        }
        return SUCCESS;
    }
 
    public MessageStore getMessageStore() {
        return messageStore;
    }
 
    public void setMessageStore(MessageStore messageStore) {
        this.messageStore = messageStore;
    }
    
    private String userName;
    
    public String getUserName() {
        return userName;
    }
     
    public void setUserName(String userName) {
        this.userName = userName;
    }
}