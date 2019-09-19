public class Demo {
    public static void main(String[] args) {
        try {
            String s = Integer.toBinaryString(Integer.parseInt("1FBBAA", 20));
            int len = s.length();
            if (len< 24) {
                for (int j = 0; j < 24 - len; j++)
                    s = "0" + s;
            } //解决toBinaryString前端补零问题
            System.out.println(s);
            Bin2HRF b2hrf = new Bin2HRF(new java.io.StringReader(s));
            b2hrf.yylex();
            System.out.println(b2hrf.str);
        } catch (Exception e) {
            e.printStackTrace(System.out);
            System.exit(1);
        }
    }
}
