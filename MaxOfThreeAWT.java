import java.awt.*;
import java.awt.event.*;

public class MaxOfThreeAWT extends Frame implements ActionListener {

    Label l1, l2, l3, result;
    TextField t1, t2, t3;
    Button b;

    MaxOfThreeAWT() {
        
        l1 = new Label("Enter First Number:");
        l2 = new Label("Enter Second Number:");
        l3 = new Label("Enter Third Number:");
        result = new Label("");
        t1 = new TextField();
        t2 = new TextField();
        t1= new TextField();
        b = new Button("Find Maximum");
        setLayout(new GridLayout(5, 2));  
        add(l1); add(t1);
        add(l2); add(t2);
        add(l3); add(t3);
        add(b); add(result);
        b.addActionListener(this);
        setTitle("Maximum of Three Numbers");
        setSize(300, 200);
        setVisible(true);  
        addWindowListener(new WindowAdapter() {
            public void windowClosing(WindowEvent we) {
                dispose();
            }
        });
    }

    public void actionPerformed(ActionEvent e) {
        try {
        int a = Integer.parseInt(t1.getText());
        int b = Integer.parseInt(t2.getText());
        int c = Integer.parseInt(t3.getText());
    int max = a;
     if (b > max) max = b;
     if (c > max) max = c;
        result.setText("Maximum: " + max);
        } catch (NumberFormatException ex) {
            result.setText("Please enter valid numbers");
        }
    }

    public static void main(String[] args) {
        new MaxOfThreeAWT();
    }
}