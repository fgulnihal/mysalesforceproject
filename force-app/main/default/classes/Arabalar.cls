public class Arabalar {
public string marka='AUDI';
public string model='RS6';
public integer yil=2024;
  

public Arabalar(String newModel){
    this.model = newModel;
}
    
public Arabalar(String newMarka,String newModel){
    this.marka = newMarka;
    this.model = newModel;
}  
   public Arabalar(String newMarka,String newModel,integer newYil){
    this.marka = newMarka;
    this.model = newModel;
     this.yil = newYil;  
}  
}