package questoes;

/*  Tratamento de exceção é uma tarefa bastante importante no
    desenvolvimento de software. Você foi contratado pela SimplesMente Dados para construir
    um substituto ao Gmail. Sua tarefa é construir uma classe Email contendo um método que
    recebe como parâmetro uma String e verifica se a String recebida é um email válido ou não.
    Como é a primeira tarefa na companhia, você vai desenvolver apenas uma versão
    simplificada deste método: ele deve verificar se a String contém um caractere ‘@’ e se
    contém um “.com” ou “.com.br”. Caso a String possua essas características, deve ser
    apresentado no Console uma mensagem “Email válido”. Caso a String não possua essas
    características, deve ser lançada uma exceção “Email inválido”. Construa um programa que
    apresenta os diferentes resultados da execução deste método.
*/
public class Email {
    public Email(){
    }

    public void  validaEmail(String email) throws Exception{
        if(email.contains("@") && (email.contains(".com") || email.contains(".com.br"))){
            System.out.println(email + ": Email válido");
        }else{
            throw new Exception("Email inválido"); //optei por deixar isso aqui também pq assim aparece no console tanto os emails validos quanto os invalidos
        }
    }
}
