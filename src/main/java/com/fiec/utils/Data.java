package com.fiec.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Data {
	
	public static Date strToDate(String s) {
		Date d = null;
		try {
			d = new SimpleDateFormat("dd/mm/yyyy").parse(s);
		}
		catch(ParseException erro) {
			
		}
		return d;
	}
	
}
