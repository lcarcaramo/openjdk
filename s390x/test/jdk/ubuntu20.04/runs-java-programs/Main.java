public class Main
{
        public static final String ANSI_GREEN = "\u001B[32m";
        public static final String ANSI_RESET = "\u001B[0m";

        public static void main (String[] args) {
                System.out.println(ANSI_GREEN + "Success! This Java program is running on the quay.io/ibmz/openjdk image!" + ANSI_RESET);
                System.out.println(ANSI_GREEN + "Test Complete. Terminating program..." + ANSI_RESET);
        }
}
