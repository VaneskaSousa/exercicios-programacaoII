import questoes.*;

public class App {
    public static void main(String[] args) throws Exception {
        // JOptionPane jpane = new JOptionPane();
        System.out.println("Aluna: Vaneska Sousa\nMatricula: 476389");

        Listas.diferenciaArrays("Vaneska", "Larissa", "Sousa", "Souza");
        
        Email email = new Email();
        String[] emails = new String[6];
        emails[0] = "vaneskakaren15@gmail";
        emails[1] = "vaneskakaren15.com";
        emails[2] = "vaneskakaren15.com.br";
        emails[3] = "vaneskakaren15";
        emails[4] = "vaneskakaren15@gmail.com";
        emails[5] = "vaneskakaren15@gmail.com.br";

        for(int i =0; i < emails.length;i++){
            try{
                email.validaEmail(emails[i]);
            }catch(Exception e){
                System.out.println("Email inválido.");
            }
        }

        Pessoa p1 = new Pessoa();
        p1.setNome("Vaneska");
        p1.setIdade(21);

        Pessoa p2 = new Pessoa();
        p2.setNome("Larissa");
        p2.setIdade(19);

        Pessoa descobre = new Pessoa();
        try{
            descobre = descobre.maisNovo(p1, p2);
            String nome = descobre.getNome();
            System.out.println(nome);
        }catch(Exception e){
            System.out.println(p1.getNome()+" e "+p2.getNome()+" possuem idades iguais");
        }

        UserInterface ui = new UserInterface();
        ui.addFrame();
    }
}
