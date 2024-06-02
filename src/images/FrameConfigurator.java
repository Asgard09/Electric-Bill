package images;

import javax.swing.JFrame;
import java.awt.Toolkit;

public class FrameConfigurator {

    public static void configureFrame(JFrame frame) {
        frame.setIconImage(Toolkit.getDefaultToolkit().getImage(FrameConfigurator.class.getResource("/images/energy-icon.png")));
        frame.setTitle("Quản lý tiền điện");
    }
}
