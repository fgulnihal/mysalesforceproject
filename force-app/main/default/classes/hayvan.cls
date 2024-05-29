public VIRTUAL class hayvan {
    
   
  public void solunum(){
        system.debug('HAYVANLAR solunum yapar');
    }
     public void hareket(){
        system.debug('HAYVANLAR  hareket yapar');
    }
      public virtual string yemek(string besin){
        system.debug('HAYVANLAR ' +besin+ 'yemekyapar');
         return besin;
    }
    
    
}