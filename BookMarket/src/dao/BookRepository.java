package dao;
import java.util.ArrayList;
import dto.Book;
public class BookRepository {
	private ArrayList<Book> listOfBooks=new ArrayList<Book>();
	private static BookRepository instance = new BookRepository();
	public static BookRepository getInstance()
	{
		return instance;
	}
	public BookRepository()
	{
		Book book1=new Book("b1","HTML5+CSS",15000);
        book1.setDescription("���峪 PPT������ ����� �ֳ���? �׷��� ���� �����ϴ�. ���� �ٷ� ���������� �����ϼ���.���ϻ���");
        book1.setCategory("Hello Coding");
        book1.setPublisher("�Ѻ��̵��");
        book1.setAuthor("Ȳ��ȣ");
        book1.setTotalPages(268);
        book1.setUnitsInStock(1500);
        book1.setReleaseDate("2018/03/07");
        book1.setFilename("P1234.jpg");
        
        Book book2=new Book("b2","���� ���� �ڹ� ���α׷���",27000);
        book2.setDescription("��ü ������ �ٽɰ� �ڹ��� ������ ����� �ٷ�鼭 �ʺ��ڰ� ���� �н��� �� �ֽ��ϴ�.���ϻ���");
        book2.setCategory("IT�����");
        book2.setPublisher("�Ѻ���ī����");
        book2.setAuthor("������");
        book2.setTotalPages(308);
        book2.setUnitsInStock(2000);
        book2.setReleaseDate("2016/09/01");
        book2.setFilename("P1111.jpg");
        
        Book book3=new Book("b3","������4 �Թ�",27000);
        book3.setDescription("�������� �ܼ��� ��� ����� �����°ͺ��� ��Ű���ĸ� �����ϴ°� �߿��մϴ�!���ϻ���");
        book3.setCategory("IT�����");
        book3.setPublisher("�Ѻ��̵��");
        book3.setAuthor("�ϼ����� ����ġ,������ ��Ÿ��,��Ű ������(����ö,���μ�)");
        book3.setTotalPages(189);
        book3.setUnitsInStock(3000);
        book3.setReleaseDate("2019/05/03");
        book3.setFilename("P1234.jpg");
        
        listOfBooks.add(book1);
        listOfBooks.add(book2);
        listOfBooks.add(book3);
		
	}
	public ArrayList<Book> getAllBooks()
	{
		return listOfBooks;
	}
	public Book getBookById(String bookId)
	{
		Book bookById= null;
		for(int i=0; i<listOfBooks.size();i++)
		{
			Book book=listOfBooks.get(i);
			if(book!=null&&book.getBookId()!=null&&book.getBookId().equals(bookId))
			{
				bookById=book;
				break;
			}
		}
		return bookById;
	}
	public void addBook(Book book) {
		listOfBooks.add(book);
	}
}
