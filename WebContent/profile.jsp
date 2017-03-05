<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<jsp:directive.include file="header.jsp" />
<%
Statement st = null;
Class.forName("com.mysql.jdbc.Driver");

Connection con=DriverManager.getConnection("jdbc:mysql://localhost/auction", "root", "");
 st=con.createStatement();
ResultSet rs = null;

HttpSession sessionProfile = request.getSession(false);

if(sessionProfile.getAttribute("sold") == "1")
{
	%><script type="text/javascript">alert("Product sold successfully")</script> <%
	sessionProfile.setAttribute("sold", "0");
}

String loginStatus = (String)sessionProfile.getAttribute("user");
if(sessionProfile.getAttribute("user") == null || sessionProfile.getAttribute("user") == "0")
{
	sessionProfile.setAttribute("user", "0");
	response.sendRedirect("login.jsp");
//	response.setStatus(response.SC_MOVED_TEMPORARILY);
//	response.setHeader("Location", site); 
}

else
{
	
	if(sessionProfile.getAttribute("product") == null || sessionProfile.getAttribute("product") == "0")
	{
		sessionProfile.setAttribute("product", "0");
	}
	else
	{
		String product = (String)sessionProfile.getAttribute("product");
		if(product.equals("1"))
		{%>
			<script type="text/javascript">
			alert("Product Uploaded");
</script>
		<%
		
		}
		else if(product.equals("2"))
		{%>
			<script type="text/javascript">
			alert("Product details Updated");
</script>
		<%}
		sessionProfile.setAttribute("product", "0");
//		response.setStatus(response.SC_MOVED_TEMPORARILY);
//		response.setHeader("Location", site);
	}
	
	
rs = st.executeQuery("SELECT USER_ID as userId FROM auctionms_user_mst WHERE email = '"+loginStatus+"'");
rs.next();
int userId;
userId = rs.getInt("userId");
%>

<div class="tygh-content clearfix">
    <div class="container-fluid  content-grid">
                    


<div class="row-fluid ">    <div class="span16 breadcrumbs-grid">
                    <div id="breadcrumbs_1">

    <div class="ty-breadcrumbs clearfix">
        <a href="index.jsp" class="ty-breadcrumbs__a">Home</a><span class="ty-breadcrumbs__slash">/</span><span class="ty-breadcrumbs__current">Wish list content</span>
    </div>

<!--breadcrumbs_1--></div>
            </div>
</div>                


<div class="row-fluid ">    <div class="span16 main-content-grid">                  
<div class="mainbox-container clearfix">
    <h2 class="ty-mainbox-title">
        Products you Bid on
    </h2>
                <div class="ty-mainbox-body">
    <script type="text/javascript" src="./Wish list content_files/product_image_gallery.js"></script>

<div class="grid-list">

<%
		String query = "SELECT PRD.PRODUCT_ID AS prdId , PRD.PRODUCT_TITLE AS prdTitle,  PRD.IMAGE AS imagePath, BID.bid_amount AS bidAmt FROM auctionms_bid_mst BID INNER JOIN auctionms_product_mst PRD ON PRD.PRODUCT_ID = BID.product_id INNER JOIN auctionms_user_mst USERS ON BID.user_id = USERS.USER_ID where BID.user_id='"+userId+"' AND PRD.sell_status = 0";
		System.out.println(query);
		rs = st.executeQuery(query);
		int count = 0;
		int prdId;
		String prdTitle;
		float bidAmt;
		String imgPath;
		String firstname;
		while(rs.next())
		{
			count++;
			prdId = rs.getInt("prdId");
			prdTitle = rs.getString("prdTitle");
			bidAmt = rs.getFloat("bidAmt");
			imgPath = rs.getString("imagePath");		
		%>

<div class="ty-column4">    
<div class="ty-grid-list__item ty-quick-view-button__wrapper">

<div class="ty-grid-list__image">
                                            
<div class="ty-center-block">
    <div class="ty-thumbs-wrapper owl-carousel cm-image-gallery owl-one-theme" data-ca-items-count="1" data-ca-items-responsive="true" id="icons_230" style="opacity: 1; display: block; visibility: visible; position: relative;">
        <div class="owl-wrapper-outer">
		<div class="owl-wrapper" style="width: 1638px; left: 0px; display: block;">
			<div class="owl-item" style="width: 273px;">
				<div class="cm-gallery-item cm-item-gallery">
                    <a href="<%=request.getContextPath()%>/product.jsp?prdId=<%=prdId %>">
						<img class="ty-pict" id="det_img_230" src="<%=imgPath %>" alt="" title="" style="height:150px;width:150px;">
					</a>
				</div>
			</div>
		</div>
		</div>
	</div>
</div>
</div>
<table style="width:100%;">
<tr>
<td  class="ty-grid-list__item-name" style="max-width: none;width:43%;">
	<a href="<%=request.getContextPath()%>/product.jsp?prdId=<%=prdId %>" class="product-title" title="2011 Pit Boss"><%=prdTitle %></a>    
</td>
<td class="ty-grid-list__item-name" style="max-width: none;">
	<a href="<%=request.getContextPath()%>/product.jsp?prdId=<%=prdId %>" class="product-title" title="2011 Pit Boss" style="color:#009688;">Your Bid: <%=bidAmt %></a>    
</td>
</tr>
</table>

</div>
</div>
		<%}
		if(count == 0)
		{%>
			<div class="ty-wysiwyg-content content-description" style="display: block;margin-bottom: 20px;">
            
				<p>
					No products to display.
				</p>
			 </div>
		<%}
		else
		{
			count = 0;
		}
		%>


    </div>

    

</div>
    </div>
	<div class="mainbox-container clearfix">
    <h2 class="ty-mainbox-title">
        Your Products
    </h2>
                <div class="ty-mainbox-body">
    <script type="text/javascript" src="./Wish list content_files/product_image_gallery.js"></script>

<div class="grid-list">


<%
		String query2 = "SELECT PRD.PRODUCT_ID AS prdId , PRD.PRODUCT_TITLE AS prdTitle,  PRD.IMAGE AS imagePath FROM auctionms_product_mst PRD where PRD.SELLER_ID='"+userId+"' and PRD.sell_status = 0";
		System.out.println(query2);
		rs = st.executeQuery(query2);
		while(rs.next())
		{
			count++;
			prdId = rs.getInt("prdId");
			prdTitle = rs.getString("prdTitle");
			imgPath = rs.getString("imagePath");		
		%>

<div class="ty-column4">    
<div class="ty-grid-list__item ty-quick-view-button__wrapper">

<div class="ty-grid-list__image">
                                            
<div class="ty-center-block">
    <div class="ty-thumbs-wrapper owl-carousel cm-image-gallery owl-one-theme" data-ca-items-count="1" data-ca-items-responsive="true" id="icons_230" style="opacity: 1; display: block; visibility: visible; position: relative;">
        <div class="owl-wrapper-outer">
		<div class="owl-wrapper" style="width: 1638px; left: 0px; display: block;">
			<div class="owl-item" style="width: 273px;">
				<div class="cm-gallery-item cm-item-gallery">
                    <a href="<%=request.getContextPath()%>/product.jsp?prdId=<%=prdId %>">
						<img class="ty-pict" id="det_img_230" src="<%=imgPath %>" alt="" title="" style="height:150px;width:150px;">
					</a>
				</div>
			</div>
		</div>
		</div>
	</div>
</div>
</div>


<div class="ty-grid-list__item-name">
	<a href="<%=request.getContextPath()%>/product.jsp?prdId=<%=prdId %>" class="product-title" title="2011 Pit Boss"><%=prdTitle %></a>    
</div>

<div>
	<a href="<%=request.getContextPath()%>/edit_product.jsp?prdId=<%=prdId %>"><button  class="ty-btn__secondary ty-btn" style="width:100%">Edit product</button></a>
</div>
</div>
</div>
		<%}
		%>

<%
// *********************** sold products ******************************************
		query2 = "SELECT PRD.PRODUCT_ID AS prdId , PRD.PRODUCT_TITLE AS prdTitle, "+
						"PRD.IMAGE AS imagePath, user.first_name AS firstName, bid.bid_amount AS bidAmt FROM "+
						"auctionms_sell_mst SELL INNER JOIN auctionms_product_mst PRD ON "+
						"PRD.product_id = SELL.product_id INNER JOIN auctionms_bid_mst BID on "+
						"SELL.bid_id = BID.bid_id INNER JOIN auctionms_user_mst USER on "+
						"bid.user_id = user.user_id WHERE "+
						"PRD.SELLER_ID='"+userId+"' and PRD.sell_status = 1";
		System.out.println(query2);
		rs = st.executeQuery(query2);
		while(rs.next())
		{
			count++;
			prdId = rs.getInt("prdId");
			prdTitle = rs.getString("prdTitle");
			imgPath = rs.getString("imagePath");
			firstname = rs.getString("firstName");
			bidAmt = rs.getFloat("bidAmt");
		%>

<div class="ty-column4">    
<div class="ty-grid-list__item ty-quick-view-button__wrapper">

<div class="ty-grid-list__image">
                                            
<div class="ty-center-block">
    <div class="ty-thumbs-wrapper owl-carousel cm-image-gallery owl-one-theme" data-ca-items-count="1" data-ca-items-responsive="true" id="icons_230" style="opacity: 1; display: block; visibility: visible; position: relative;">
        <div class="owl-wrapper-outer">
		<div class="owl-wrapper" style="width: 1638px; left: 0px; display: block;">
			<div class="owl-item" style="width: 273px;">
				<div class="cm-gallery-item cm-item-gallery">
						<img class="ty-pict" id="det_img_230" src="<%=imgPath %>" alt="" title="" style="height:150px;width:150px;">
				</div>
			</div>
		</div>
		</div>
	</div>
</div>
</div>

<table style="width:100%;">
<tr>
<td  class="ty-grid-list__item-name" style="max-width: none;width:43%;">

	<lable class="product-title" title="2011 Pit Boss"><%=prdTitle %></lable>    

</td>
<td class="ty-grid-list__item-name" style="max-width: none;">
	<label class="product-title" title="2011 Pit Boss" style="color:#009688;">Selling Price: <%=bidAmt %></label> 
</td>
</tr>
</table>
<div>
	<p  style="color:#8c8c8c;text-align: center;padding-top: 0px;">Buyer : <%=firstname %></p>
</div>
</div>
</div>
		<%} 
		if(count == 0)
		{%>
			<div class="ty-wysiwyg-content content-description" style="display: block;margin-bottom: 20px;">
            
				<p>
					No products to display.
				</p>
			 </div>
		<%}
		else
		{
			count = 0;
		}
		%>


    </div>

    

</div>
    </div>

<div class="mainbox-container clearfix">
    <h2 class="ty-mainbox-title">
        Products you purchased
    </h2>
                <div class="ty-mainbox-body">
    <script type="text/javascript" src="./Wish list content_files/product_image_gallery.js"></script>

<div class="grid-list">

<%
// *********************** sold products ******************************************
		query2 = "SELECT PRD.PRODUCT_ID AS prdId , PRD.PRODUCT_TITLE AS prdTitle, "+
						"PRD.IMAGE AS imagePath, bid.bid_amount AS bidAmt, "+
						"(SELECT first_name FROM auctionms_product_mst PRD2 "+
						"INNER JOIN auctionms_user_mst USER2 ON PRD2.seller_id = USER2.user_id "+
						"WHERE PRD2.product_id = PRD.PRODUCT_ID) AS firstName FROM "+
						"auctionms_sell_mst SELL INNER JOIN auctionms_product_mst PRD ON "+
						"PRD.product_id = SELL.product_id INNER JOIN auctionms_bid_mst BID on "+
						"SELL.bid_id = BID.bid_id INNER JOIN auctionms_user_mst USER on "+
						"bid.user_id = user.user_id WHERE "+
						"BID.user_id='"+userId+"' and PRD.sell_status = 1";
		System.out.println(query2);
		rs = st.executeQuery(query2);
		while(rs.next())
		{
			count++;
			prdId = rs.getInt("prdId");
			prdTitle = rs.getString("prdTitle");
			imgPath = rs.getString("imagePath");
			firstname = rs.getString("firstName");
			bidAmt = rs.getFloat("bidAmt");
		%>

<div class="ty-column4">    
<div class="ty-grid-list__item ty-quick-view-button__wrapper">

<div class="ty-grid-list__image">
                                            
<div class="ty-center-block">
    <div class="ty-thumbs-wrapper owl-carousel cm-image-gallery owl-one-theme" data-ca-items-count="1" data-ca-items-responsive="true" id="icons_230" style="opacity: 1; display: block; visibility: visible; position: relative;">
        <div class="owl-wrapper-outer">
		<div class="owl-wrapper" style="width: 1638px; left: 0px; display: block;">
			<div class="owl-item" style="width: 273px;">
				<div class="cm-gallery-item cm-item-gallery">
						<img class="ty-pict" id="det_img_230" src="<%=imgPath %>" alt="" title="" style="height:150px;width:150px;">
				</div>
			</div>
		</div>
		</div>
	</div>
</div>
</div>

<table style="width:100%;">
<tr>
<td  class="ty-grid-list__item-name" style="max-width: none;width:37%;">

	<lable class="product-title" title="2011 Pit Boss"><%=prdTitle %></lable>    

</td>
<td class="ty-grid-list__item-name" style="max-width: none;">
	<label class="product-title" title="2011 Pit Boss" style="color:#009688;">Purchase Price: <%=bidAmt %></label> 
</td>
</tr>
</table>
<div>
	<p  style="color:#8c8c8c;text-align: center;padding-top: 0px;">Seller : <%=firstname %></p>
</div>
</div>
</div>
		<%} 
		if(count == 0)
		{%>
			<div class="ty-wysiwyg-content content-description" style="display: block;margin-bottom: 20px;">
            
				<p>
					No products to display.
				</p>
			 </div>
		<%}
		else
		{
			count = 0;
		}
		%>

    </div>

    

</div>
    </div>    
    
            </div>
</div>
</div>
</div>

<jsp:directive.include file="footer.jsp" />
<%} 
try { if (rs != null) rs.close(); } catch (Exception e) {};
try { if (st != null) st.close(); } catch (Exception e) {};
try { if (con != null) con.close(); } catch (Exception e) {};
%>