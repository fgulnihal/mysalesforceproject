trigger AccountTrigger on Account (before insert,before update) {
   /* for(Account acc: Trigger.new){
        String psw		 = 	 acc.Description;
Boolean pswCheck = 	psw.length()>=8 &&
                    !psw.contains(' ')&&
					psw.replaceAll('[^A-Z]', '').length()>0 &&
					psw.replaceAll('[^a-z]', '').length()>0 &&
					psw.replaceAll('[^0-9]', '').length()>0 &&
					psw.replaceAll('[0-9A-Za-z]', '').length()>0;
        
        if(!pswCheck){
            acc.Description.addError('Pasword must contain at least one uppercase letter, one lower case letter, one number, one special characters');
        }
        
    }
*/
}