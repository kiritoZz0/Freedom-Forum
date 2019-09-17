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
	    //�ô�������ͼƬ���ڴ棩 rgb��int����Ҳ����10���ƣ� 0-255
		BufferedImage buffImage=new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
		//��ȡ����
		Graphics  g= buffImage.getGraphics();
		//���û��ʵ���ɫ�ͻ��ʵ���䷶Χ
		g.setColor(getColor(200, 255));
		//����ԭ����ͼƬ�����Ͻ�
		g.fillRect(0, 0, width, height);
		//���Ʊ߿򣨿��п��ޣ�
		g.setColor(Color.green);
		g.drawRect(0, 0, width-1, height-1);
		
		
		//2�������������
		//������ݵ�ȡֵ��Χ��
		String  codes="0123456789abcdefghijklmnoprstuvwxyz";
		//����ȡ������֤������
	    StringBuffer  code=new StringBuffer();
	    Graphics2D g2=(Graphics2D) g;
	    g2.setFont(new Font("����", Font.BOLD, 30));
	    int x=15;
	    //������֤�������
		for(int i=0;i<4;i++){
			int index=rand.nextInt(codes.length());
			//����֤��������ȡһ��ֵ
			char c=codes.charAt(index);
			g.setColor(getColor(40, 160));
			//��ת�Ƕ�-30 ��45
			int degree= rand.nextInt(90)-30;
			double hudu=degree*Math.PI/180;
			code.append(c);
			//��ת�Ļ���,��������������ת����
			g2.rotate(hudu,x,20);
			//��������
			g2.drawString(String.valueOf(c), x, 20);
			//�ѻ��ʻָ����������
			g2.rotate(-hudu, x, 20);
			//�����ı�������ʼ��λ��
			x+=30;
			
		}
		//����֤�����ݴ���session�У�Ϊ����֤�û�����������Ƿ���ȷ
		req.getSession().setAttribute("checkCode", code.toString());
		//���Ƹ�����
		g.setColor(getColor(150, 200));
		int x1,x2,y1,y2,x3,y3;
		for(int i=0;i<50;i++){
			x1=rand.nextInt(width);
			x2=rand.nextInt(15);
			y1=rand.nextInt(height);
			y2=rand.nextInt(15);
			x3=x1+x2;
			y3=y1+y2;
			//��������߳�����Χ����ֻ�����߿�λ��
			if(x3>width){
				x3=width-1;
			}
			if(y3>height){
				y3=height-1;
			}
			g.drawLine(x1, y1, x3, y3);
		}
		//�ͷŻ���
		g.dispose();
	    try {
			ImageIO.write(buffImage, "jpg", resp.getOutputStream());
		} catch (IOException e) {
			
			e.printStackTrace();
		}
		
	}
	/* �����������ɫֵ��sc����ɫֵ����ʼֵ��ec�ǽ���ֵ
	 * ����200-255;
	 * random.nextInt(49) �������Χ [0,49��
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
		
		//����ɫֵ���趨�õķ�Χ��
		int r=sc+ rand.nextInt(ec-sc);
		int g=sc+ rand.nextInt(ec-sc);
		int b=sc+ rand.nextInt(ec-sc);
		
		return new Color(r, g, b);
	}
	
	
	
	

}
