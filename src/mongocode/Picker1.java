package mongocode;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextField;

public class Picker1 {
	public static void main(String[] args) {
		JLabel label = new JLabel("Selected Start Date:");
		final JTextField text = new JTextField(20);
		JButton b = new JButton("Date");
		JPanel p = new JPanel();
		p.add(label);
		p.add(text);
		p.add(b);
		final JFrame f = new JFrame();
		f.getContentPane().add(p);
		f.pack();
		f.setVisible(true);
		b.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent ae) {
				text.setText(new DatePicker(f).setPickedDate());
			}
		});
		
		
		JLabel label1 = new JLabel("Selected End Date:");
		final JTextField text1 = new JTextField(10);
		JButton b1 = new JButton("Date");
		JPanel p1 = new JPanel();
		p1.add(label1);
		p1.add(text1);
		p1.add(b1);
		final JFrame f1 = new JFrame();
		f1.getContentPane().add(p1);
		f1.pack();
		f1.setVisible(true);
		b1.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent ae) {
				text1.setText(new DatePicker(f1).setPickedDate());
				System.out.println("Date"+text1);
			}
		});
	}
}
