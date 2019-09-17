package com.zero.controller;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.font.GraphicAttribute;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CheckCodeController {
	
	Random rand=new Random();
	
	@RequestMapping("/checkImg")
	public void createCheckCode(HttpServletRequest req,HttpServletResponse resp){
		int width=150;
		int height=40;
	    //用代码生成图片（内存） rgb的int类型也就是10进制： 0-255
		BufferedImage buffImage=new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
		//获取画笔
		Graphics  g= buffImage.getGraphics();
		//设置画笔的颜色和画笔的填充范围
		g.setColor(getColor(200, 255));
		//坐标原点在图片的左上角
		g.fillRect(0, 0, width, height);
		//绘制边框（可有可无）
		g.setColor(Color.green);
		g.drawRect(0, 0, width-1, height-1);
		
		
		//2、生成随机内容
		//随机内容的取值范围库
		String  codes="0123456789abcdefghijklmnoprstuvwxyz";
		//最终取到的验证码内容
	    StringBuffer  code=new StringBuffer();
	    Graphics2D g2=(Graphics2D) g;
	    g2.setFont(new Font("宋体", Font.BOLD, 30));
	    int x=15;
	    //生成验证码的内容
		for(int i=0;i<4;i++){
			int index=rand.nextInt(codes.length());
			//从验证码库中随机取一个值
			char c=codes.charAt(index);
			g.setColor(getColor(40, 160));
			//旋转角度-30 到45
			int degree= rand.nextInt(90)-30;
			double hudu=degree*Math.PI/180;
			code.append(c);
			//旋转的画笔,后两个参数是旋转中心
			g2.rotate(hudu,x,20);
			//绘制文字
			g2.drawString(String.valueOf(c), x, 20);
			//把画笔恢复到正常情况
			g2.rotate(-hudu, x, 20);
			//用来改变文字起始的位置
			x+=30;
			
		}
		//将验证码内容存入session中，为了验证用户输入的内容是否正确
		req.getSession().setAttribute("checkCode", code.toString());
		//绘制干扰线
		g.setColor(getColor(150, 200));
		int x1,x2,y1,y2,x3,y3;
		for(int i=0;i<50;i++){
			x1=rand.nextInt(width);
			x2=rand.nextInt(15);
			y1=rand.nextInt(height);
			y2=rand.nextInt(15);
			x3=x1+x2;
			y3=y1+y2;
			//如果干扰线超出范围，就只画到边框位置
			if(x3>width){
				x3=width-1;
			}
			if(y3>height){
				y3=height-1;
			}
			g.drawLine(x1, y1, x3, y3);
		}
		//释放画笔
		g.dispose();
	    try {
			ImageIO.write(buffImage, "jpg", resp.getOutputStream());
		} catch (IOException e) {
			
			e.printStackTrace();
		}
		
	}
	/* 生成随机的颜色值，sc是颜色值的起始值，ec是结束值
	 * 比如200-255;
	 * random.nextInt(49) 随机数范围 [0,49）
	 * 0---55 +200
	 */
	public Color  getColor(int sc,int ec){
		if(sc<0){
			sc=0;
		}
		if(sc>255){
			sc=255;
		}
		
		if(ec<0){
			ec=0;
		}
		if(ec>255){
			ec=255;
		}
		
		//让颜色值在设定好的范围内
		int r=sc+ rand.nextInt(ec-sc);
		int g=sc+ rand.nextInt(ec-sc);
		int b=sc+ rand.nextInt(ec-sc);
		
		return new Color(r, g, b);
	}
	
	
	
	

}
