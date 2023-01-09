package main.MsgPrompts;

public class invalidDateInput extends mainPrompt{
    
    public String messagePrompt(){

        return super.messagePrompt() + " INVALID DATE FORMAT OR PAST DATE NOT ALLOWED!";

    }

}
