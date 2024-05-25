trigger ContactTrigger on Contact (before insert, Before update) {
for(Contact cnt: Trigger.new){
    string  myMail          = cnt.Email;
    integer indexOfAt       = myMail.indexof('@');
    integer lastindexOfDot  = myMail.lastindexof('.');
    string  mailDomainName  = myMail.substring(indexOfAt+1,lastindexOfDot);
    cnt.Description = mailDomainName;
    }
}