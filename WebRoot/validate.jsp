<%@ page language="java"
	import="java.awt.*"
	import="java.awt.image.BufferedImage"
	import="java.util.*"
	import="javax.imageio.ImageIO"	
	pageEncoding="gb2312"%>
<% 
	response.setHeader("Cache-Control","no-cache"); 
	int width = 60, height = 20;
	BufferedImage image = new BufferedImage(width, height,
		BufferedImage.TYPE_INT_RGB);
	Graphics g = image.getGraphics();
	g.setColor(new Color(200, 200, 200));
	g.fillRect(0, 0, width, height);
	Random rnd = new Random();
	int randNum = rnd.nextInt(8999) + 1000;
	String randStr = String.valueOf(randNum);
	session.setAttribute("randStr", randStr);
	g.setColor(Color.black);
	g.setFont(new Font("", Font.PLAIN, 20));
	g.drawString(randStr, 10, 17);
	for (int i = 0; i < 100; i++){
		int x = rnd.nextInt(width);
		int y = rnd.nextInt(height);
		g.drawOval(x, y, 1, 1);
	}
	ImageIO.write(image, "JPEG", response.getOutputStream());
	out.clear();
	out = pageContext.pushBody();
%>
