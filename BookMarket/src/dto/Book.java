package dto;
import java.io.Serializable;
public class Book implements Serializable{
	
	private static final long serialVersionUID=-427470057203867700L;
	
	private String bookId; //��ǰid
	private String name; //��ǰ��
	private Integer unitPrice; //��ǰ ����
	private String author; //����
	private String description; //�� ����
	private String publisher; //���ǻ�
	private String category; //�з�
	private long unitsInStock; //��� ��
	private long totalPages; //�������� ��
	private String releaseDate; //������
	private String condition;//�Ż� �߰� �̺�
	private String filename; //�̹������ϸ�
	private int quantity;		 //��ٱ��Ͽ� ���� ����
	
	public Book()
	{
		super();
	}
	public Book(String bookId, String name, Integer unitPrice)
	{
		this.bookId=bookId;
		this.name=name;
		this.unitPrice=unitPrice;
	}
	
	public String getBookId()
	{
		return bookId;
	}
	public void setBookId(String bookId)
	{
		this.bookId=bookId;
	}
	public String getName()
	{
		return name;
	}
	public void setName(String name)
	{
		this.name=name;
	}
	public Integer getUnitPrice()
	{
		return unitPrice;
	}
	public void setUnitPrice(Integer unitPrice)
	{
		this.unitPrice=unitPrice;
	}
	public String getAuthor()
	{
		return author;
	}
	public void setAuthor(String author)
	{
		this.author=author;
	}
	public String getDescription()
	{
		return description;
	}
	public void setDescription(String description)
	{
		this.description=description;
	}
	public String getCategory()
	{
		return category;
	}
	public void setCategory(String category)
	{
		this.category=category;
	}
	public Long getUnitsInStock()
	{
		return unitsInStock;
	}
	public void setUnitsInStock(long unitsInStock)
	{
		this.unitsInStock=unitsInStock;
	}
	public Long getTotalPages()
	{
		return totalPages;
	}
	public void setTotalPages(long totalPages)
	{
		this.totalPages=totalPages;
	}
	public String getPublisher()
	{
		return publisher;
	}
	public void setPublisher(String publisher)
	{
		this.publisher=publisher;
	}
	public String getReleaseDate()
	{
		return releaseDate;
	}
	public void setReleaseDate(String releaseDate)
	{
		this.releaseDate=releaseDate;
	}
	public String getCondition()
	{
		return condition;
	}
	public void setCondition(String condition)
	{
		this.condition=condition;
	}
	public String getFilename()
	{
		return filename;
	}
	public void setFilename(String filename)
	{
		this.filename=filename;
	}
	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
}
