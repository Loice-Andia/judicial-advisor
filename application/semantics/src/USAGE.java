import semantics.Compare;
public class USAGE {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		
String a = args[0];
String b = args[1];


Compare c = new Compare(a,b);
System.out.println(c.getResult());

	}

}
