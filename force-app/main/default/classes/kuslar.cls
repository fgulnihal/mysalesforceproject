public class kuslar extends hayvan{
  
    public void kanat(){
        system.debug('kuslar hanat var');
        }
        override
    public string yemek(string besin){
        system.debug('HAYVANLAR ' +besin+ 'yemekyapar');
         return besin;
    }
    
        
    
}