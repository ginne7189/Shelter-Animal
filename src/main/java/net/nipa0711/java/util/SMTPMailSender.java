package net.nipa0711.java.util;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class SMTPMailSender extends Thread {
	private String protocol = "smtp";
	private String type = "text/html; charset=UTF-8";
	private String userName = "animalhouse@nipa0711.net"; // 구글메일계정
	private String password = "@nima1h0use"; // 구글메일계정
	private String host = "smtp.gmail.com";
	private int port = 587; // 25
	private boolean starttlsEnable = true;
	private String subject = "";
	private String contents = "";
	private String fromEmail = "";
	private String fromName = "";
	HashMap<String, String> map = null;

	public SMTPMailSender(String subject, String contents, String fromEmail, String fromName,
			HashMap<String, String> map) {
		this.subject = subject;
		this.contents = contents;
		this.fromEmail = fromEmail;
		this.fromName = fromName;
		this.map = map;
	}

	public void run() {
		try {
			Thread.sleep(100);
			send(map.get("email"), map.get("name"), fromEmail, fromName, subject, contents);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void send(String toEmail, String toName, String fromEmail, String fromName, String subject, String content)
			throws Exception {
		try {
			Properties props = new Properties();
			props.put("mail.transport.protocol", protocol);
			props.put("mail.smtp.host", host);
			props.put("mail.smtp.port", String.valueOf(port));
			props.put("mail.smtp.auth", "true");
			props.put("mail.smtp.starttls.enable", Boolean.toString(starttlsEnable));
			Authenticator authenticator = new SMTPAuthenticator(userName, password);
			Session session = Session.getInstance(props, authenticator);
			MimeMessage message = new MimeMessage(session);
			message.setFrom(new InternetAddress(fromEmail, fromName));
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(toEmail, toName));
			message.setSubject(subject);
			message.setContent(content, type);
			Transport.send(message);
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} catch (MessagingException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	class SMTPAuthenticator extends Authenticator {
		PasswordAuthentication passwordAuthentication;

		SMTPAuthenticator(String userName, String password) {
			passwordAuthentication = new PasswordAuthentication(userName, password);
		}

		public PasswordAuthentication getPasswordAuthentication() {
			return passwordAuthentication;
		}
	}
}
