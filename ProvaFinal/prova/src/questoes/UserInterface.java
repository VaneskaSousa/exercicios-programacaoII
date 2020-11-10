package questoes;

import java.awt.event.ActionListener;
import java.util.ArrayList;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JTextField;

/*
 * Utilizando a classe construída na questão anterior, desenvolva um
projeto Java com uma GUI composta de dois JTextField e um botão. O usuário vai digitar o
nome da pessoa em um dos text fields e a idade em outro. A partir desses dados e quando
ele clicar o botão, você vai instanciar uma Pessoa e armazená-la em um ArrayList. Caso o
usuário não digite nada e clique o botão, você vai apresentar os dados da Pessoa mais
velha e os dados da Pessoa mais nova presentes no ArrayList.
 */
public class UserInterface extends JFrame {
    private static final long serialVersionUID = 1L;
    private static final int GAP = 20; // borda
    private static final int HEIGHT = 40;
    private static final int LBL_WIDTH = 100;

    private int idade;
    private String nome;
    ArrayList<Pessoa> pessoas = new ArrayList<Pessoa>();

    public UserInterface() {
        this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        this.setSize(600, 480);
        this.setLayout(null);
    }

    public void addFrame(){

        JLabel lblnome = new JLabel("Nome:");
        lblnome.setBounds(GAP, GAP, LBL_WIDTH, HEIGHT);

        JTextField editnome = new JTextField();
        editnome.setBounds(lblnome.getWidth(), GAP, this.getHeight() - GAP, HEIGHT);

        JLabel lblidade = new JLabel("Idade:");
        lblidade.setBounds(GAP, (GAP * 2) + editnome.getHeight(), LBL_WIDTH, HEIGHT);

        JTextField editidade = new JTextField();
        editidade.setBounds(lblidade.getWidth(), (GAP * 2) + editnome.getHeight(), this.getHeight() - GAP, HEIGHT);

        JButton btn = new JButton("Cadastrar Pessoa");
        btn.setBounds(GAP, this.getHeight() / 2, 540, HEIGHT);
        btn.addActionListener((ActionListener) e -> {

            if (editnome.getText().equals("") && editidade.getText().equals("")) {
                apresentaDados();
            } else if(editnome.getText().equals("")){
                JOptionPane.showMessageDialog(null, "Preencha todos os campos", "Erro",
                JOptionPane.ERROR_MESSAGE);
            }else{
                try { //Caso deixem o nome vazio e idade preenchida ou preencham a idade com letras
                    nome = editnome.getText();
                    idade = Integer.parseInt(editidade.getText());
                    
                    Pessoa p = new Pessoa();
                    p.setNome(nome);
                    p.setIdade(idade);
                    pessoas.add(p);
                    JOptionPane.showMessageDialog(null, "Pessoa cadastrada com sucesso", "Sucesso",
                            JOptionPane.INFORMATION_MESSAGE);
                    editnome.setText("");
                    editidade.setText("");
                } catch (Exception error) {
                    JOptionPane.showMessageDialog(null, "Insira a idade corretamente", "Erro",
                            JOptionPane.ERROR_MESSAGE);
                    // System.out.println(error);
                }
            }
        });

        // add componentes a tela
        this.getContentPane().add(editnome);
        this.getContentPane().add(lblnome);
        this.getContentPane().add(lblidade);
        this.getContentPane().add(editidade);
        this.getContentPane().add(btn);
        this.setVisible(true);
    }

    private void apresentaDados() {
        if (pessoas.size() < 2) {
            JOptionPane.showMessageDialog(null, "Não há cadastros o suficiente", "Erro", JOptionPane.ERROR_MESSAGE);
        } else {
            Pessoa older = new Pessoa();
            Pessoa younger = new Pessoa();
            int x = 0;
            do {
                try {
                    older = older.maisVelho(pessoas.get(x), pessoas.get(x + 1));
                    younger = younger.maisNovo(pessoas.get(x), pessoas.get(x + 1));
                    //System.out.println(older.getNome() + " " + older.getIdade());
                } catch (Exception e) {
                    // TODO Auto-generated catch block
                    JOptionPane.showMessageDialog(null, "Como houveram pessoas de idades iguais cadastradas é possivel que os dados sejam imprecisos", 
                    "Erro", JOptionPane.WARNING_MESSAGE);
                    e.printStackTrace();
                }
                x++;
            }while(x < pessoas.size()-1);
            JOptionPane.showMessageDialog(null, "Pessoa mais velha: "+older.getNome()+", idade "+older.getIdade()+
                "Pessoa mais nova: "+younger.getNome()+", idade "+younger.getIdade(), "Dados das Pessoas", 
                JOptionPane.INFORMATION_MESSAGE);
        }
    }
}
