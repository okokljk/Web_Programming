package dto;
import java.io.Serializable;
public class Book implements Serializable{
	
	private static final long serialVersionUID=-427470057203867700L;
	
	private String bookId; //상품id
	private String name; //상품명
	private Integer unitPrice; //상품 가격
	private String author; //저자
	private String description; //상세 설명
	private String publisher; //출판사
	private String category; //분류
	private long unitsInStock; //재고 수
	private long totalPages; //총페이지 수
	private String releaseDate; //출판일
	private String condition;//신상 중고 이북
	private String filename; //이미지파일명
	private int quantity;		 //장바구니에 담은 개수
	
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
