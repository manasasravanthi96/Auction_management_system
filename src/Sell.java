

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Sell
 */
@WebServlet("/Sell")
public class Sell extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Sell() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String prdId = request.getParameter("prdId");
		String bidId = request.getParameter("bidId");
		JDBC jdbc = new JDBC();
		Statement st = jdbc.getconn();
		ResultSet rs = null;
		HttpSession sess = request.getSession(false);
		if(sess.getAttribute("user")==null || sess.getAttribute("user")=="0")
		{	
			response.sendRedirect("login.jsp");
		}
		else
		{
			String user = sess.getAttribute("user").toString();
			try 
			{
				String query = "SELECT USER.user_id AS userId FROM `auctionms_product_mst` PRD, auctionms_user_mst USER "+
								"WHERE PRD.seller_id = USER.user_id AND PRD.product_id='"+prdId+"' AND PRD.sell_status=0 AND "+
								"USER.email='"+user+"'";
				rs = st.executeQuery(query);
				if(rs.first())
				{
					int user_id;
					user_id = rs.getInt("userId");
					DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
					Date date = new Date();
					query = "INSERT into `auctionms_sell_mst` (product_id, bid_id, sell_time) VALUES "+
							"('"+prdId+"', '"+bidId+"', '"+dateFormat.format(date)+"')";
					st.executeUpdate(query);
					
					query = "UPDATE `auctionms_product_mst` SET `sell_status`=1 WHERE "+
							"product_id='"+prdId+"' AND seller_id='"+user_id+"'";
					st.executeUpdate(query);
					sess.setAttribute("sold", "1");
					response.sendRedirect("profile.jsp");
				}
				else
				{
					sess.setAttribute("loginRequiredMust", "1");
					response.sendRedirect("login.jsp");
				}
			}
			catch (SQLException e) 
			{
				e.printStackTrace();
			}
		}
		try { if (rs != null) rs.close(); } catch (Exception e) {};
		  try { if (st != null) st.close(); } catch (Exception e) {};
		  jdbc.closeconn();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
