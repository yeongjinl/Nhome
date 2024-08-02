package egovframework.gcall.util;

import java.io.Reader;
import java.text.NumberFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.regex.Pattern;

import org.apache.log4j.Logger;

public class StringUtil {
	public static Logger logger = Logger.getLogger(StringUtil.class);
	
    public StringUtil()
    {
    }

    public static String null2String(String s)
    {
        if(s == null)
            s = "";
        return s;
    }

    public static String null2Zero(String s)
    {
        if(s == null || "".equals(s.trim()))
            s = "0";
        return s;
    }

    public static short parseShort(String s)
    {
        short result = 0;
        try
        {
            if(s != null && !s.trim().equals(""))
                result = Short.parseShort(s.trim());
        }
        catch(NumberFormatException numberformatexception) {
        	logger.error("Exception:"+numberformatexception.getMessage());
        }
        return result;
    }

    public static int parseInt(String s)
    {
        int result = 0;
        try
        {
            if(s != null && !s.trim().equals(""))
                result = Integer.parseInt(s.trim());
        }
        catch(NumberFormatException numberformatexception) {
        	logger.error("Exception:"+numberformatexception.getMessage());
        }
        return result;
    }

    public static String replaceAll(String text, int start, String src, String dest)
    {
        if(text == null)
            return null;
        if(src == null || dest == null)
            return text;
        int textlen = text.length();
        int srclen = src.length();
        int diff = dest.length() - srclen;
        int d = 0;
        StringBuffer t = new StringBuffer(text);
        while(start < textlen) 
        {
            start = text.indexOf(src, start);
            if(start < 0)
                break;
            t.replace(start + d, start + d + srclen, dest);
            start += srclen;
            d += diff;
        }
        return t.toString();
    }

    public static String dFormat(String str)
    {
        if(str == null)
            return "";
        if(str.length() == 0)
            return "";
        NumberFormat nf = NumberFormat.getInstance(Locale.KOREA);
        Number num = null;
        String ret = "";
        try
        {
            num = nf.parse(str);
        }
        catch(ParseException parseexception) { 
        	logger.error("Exception:"+parseexception.getMessage());
        }
        //Null Pointer 역참조 조치
        if(num == null || "".equals(num))  return "";
        
        ret = dFormat(num.longValue());    
        return ret;
    }

    public static String dFormat(int num)
    {
        NumberFormat nf = NumberFormat.getInstance(Locale.KOREA);
        String tempStr = nf.format(num);
        return tempStr;
    }

    public static String dFormat(long num)
    {
        NumberFormat nf = NumberFormat.getInstance(Locale.KOREA);
        String tempStr = nf.format(num);
        return tempStr;
    }

    public static String dFormat(double num)
    {
        NumberFormat nf = NumberFormat.getInstance(Locale.KOREA);
        String tempStr = nf.format(num);
        return tempStr;
    }

    /**
     * @deprecated Method getProductName is deprecated
     */

    /*public static String getProductName(String str, int length)
    {
        if(str == null)
            return "";
        if(str.trim().length() <= length)
            return str;
        byte bytes[] = str.trim().getBytes();
        if(length * 2 > bytes.length - 3)
            return new String(bytes);
        else
            return new String(bytes, 0, length * 2) + "...";
    }*/

    /**
     * @deprecated Method substring is deprecated
     */

    /*public static String substring(String str, int length)
    {
        return getProductName(str, length);
    }*/

    /*public static String getSplitDate(String strDate)
    {
        return getSplitDate(strDate, "-");
    }*/

    public static String getDate(String deliminator, int month)
    {
        Calendar cal = Calendar.getInstance();
        cal.add(2, month);
        SimpleDateFormat df = new SimpleDateFormat("yyyyMMdd");
        String strDate = df.format(cal.getTime());
        String delim = "-";
        if(deliminator != null && deliminator.length() > 0)
            delim = deliminator;
        if(strDate.length() == 8)
            return strDate.substring(0, 4) + delim + strDate.substring(4, 6) + delim + strDate.substring(6);
        else
            return "";
    }

    public static String getDate(String deliminator)
    {
        Calendar cal = Calendar.getInstance();
        SimpleDateFormat df = new SimpleDateFormat("yyyyMMdd");
        String strDate = df.format(cal.getTime());
        String delim = "-";
        if(deliminator != null && deliminator.length() > 0)
            delim = deliminator;
        if(strDate.length() == 8)
            return strDate.substring(0, 4) + delim + strDate.substring(4, 6) + delim + strDate.substring(6);
        else
            return "";
    }

    public static String getDate()
    {
        Calendar cal = Calendar.getInstance();
        SimpleDateFormat df = new SimpleDateFormat("yyyyMMdd");
        String strDate = df.format(cal.getTime());
        if(strDate == null)
            return "";
        if(strDate.length() == 8)
            return strDate.substring(0, 4) + strDate.substring(4, 6) + strDate.substring(6);
        else
            return "";
    }

    public static String getSplitDate(String strDate, String deliminator)
    {
        String delim = "-";
        if(strDate == null)
            return "";
        if(deliminator != null && deliminator.length() > 0)
            delim = deliminator;
        if(strDate.length() == 8)
            return strDate.substring(0, 4) + delim + strDate.substring(4, 6) + delim + strDate.substring(6);
        if(strDate.length() == 6)
            return strDate.substring(0, 4) + delim + strDate.substring(4, 6);
        else
            return strDate;
    }

    public static String getSplitTime(String strTime)
    {
        String tempString = strTime;
        int idx = 0;
        if(strTime == null)
            return "";
        if(strTime.length() < 2)
            return strTime;
        if(strTime.length() >= 2)
        {
            tempString = strTime.substring(0, 2);
            idx = 2;
        }
        if(strTime.length() >= 4)
        {
            tempString = tempString + ":" + strTime.substring(2, 4);
            idx = 4;
        }
        if(strTime.length() > idx)
            tempString = tempString + ":" + strTime.substring(idx);
        return tempString;
    }

    /*public static String getSocialid2Birthday(String socialid)
    {
        String result = "";
        if(socialid == null)
            return "";
        if(socialid.length() >= 13)
        {
            result = socialid.substring(0, 6);
            if(socialid.charAt(6) == '1' || socialid.charAt(6) == '2')
                result = "19" + result;
            else
                result = "20" + result;
            return getSplitDate(result);
        } else
        {
            return result;
        }
    }*/

    public static String pad(String str, int width)
    {
        return pad(str, width, " ");
    }

    public static String pad(String str, int width, String specChar)
    {
        if(str == null)
            str = "";
        StringBuffer buf = new StringBuffer();
        for(int space = width - str.length(); space-- > 0;)
            buf.append(specChar);

        buf.append(str);
        return buf.toString();
    }

    public static String getSocialId(String socialId)
    {
        if(socialId == null)
            return "";
        if(socialId.length() < 6)
            return socialId;
        if(socialId.charAt(6) == '-')
            return socialId;
        else
            return (new StringBuffer(socialId)).insert(6, '-').toString();
    }

    public static String getSocialId(String socialId, boolean isFirst)
    {
        if(isFirst)
            return socialId.substring(0, 6);
        else
            return socialId.substring(6);
    }

    public static String ltrim(String src, String key)
    {
        if(src == null)
            return src;
        if(key == null || "".equals(key))
            return src;
        int len = key.length();
        int idx;
        for(idx = 0; src.startsWith(key, idx); idx += len);
        return src.substring(idx);
    }

    public static String removeTag(String value)
    {
        if(value == null)
        {
            return "";
        } else
        {
            value = value.replaceAll("<(/)?([a-zA-Z]*)(\\s[a-zA-Z]*=[^>]*)?(\\s)*(/)?>", "");
            value = value.replaceAll("<!--StartFragment-->", "");
            value = value.replaceAll(">", "&gt;");
            value = value.replaceAll("<", "&lt;");
            return value;
        }
    }
    
    public static String removeSimpleTag(String value)
    {
        if(value == null)
        {
            return "";
        } else
        {
            value = value.replaceAll(">", "&gt;");
            value = value.replaceAll("<", "&lt;");
            return value;
        }
    }
    
    public static String removeSimpleTagBack(String value)
    {
        if(value == null)
        {
            return "";
        } else
        {
            value = value.replaceAll("&gt;",">");
            value = value.replaceAll("&lt;","<");
            return value;
        }
    }

    public static String substringb(String str, int limit)
    {
        if(str == null || limit < 4)
            return str;
        int len = str.length();
        int cnt = 0;
        int index;
        for(index = 0; index < len && cnt < limit;)
            if(str.charAt(index++) < '\u0100')
                cnt++;
            else
                cnt += 2;

        if(index < len)
            str = str.substring(0, index);
        return str;
    }

    public static String splitHead(String str, int limit)
    {
    	if(str == null || limit < 4)
            return str;
        if(isKorean(str)){
        	int len = str.length();
            int cnt = 0;
            int index;
            for(index = 0; index < len && cnt < limit;)
                if(str.charAt(index++) < '\u0100')
                    cnt++;
                else
                    cnt += 2;

            if(index < len)
                str = str.substring(0, index) + "...";
            return str;
        } else {
        	return str;
        }
    }

    public static String correctCharConvert(String txt)
    {
        String res = "";
        res = replace(txt, "\\", "\\\\");
        res = replace(res, "\"", "\\\"");
        res = replace(res, "<", "&lt;");
        res = replace(res, ">", "&gt;");
        return res;
    }

    public static String crTo0a0d(String txt)
    {
        StringBuffer result = new StringBuffer();
        for(int i = 0; i < fixNull(txt).length(); i++)
        {
            char ch;
            switch(ch = txt.charAt(i))
            {
            case 13: // '\r'
                result.append("\\n");
                break;

            default:
                result.append(ch);
                break;
            }
        }

        return result.toString();
    }

    public static String replace(String source, String target, String replace)
    {
        if(source == null)
            return "";
        int iTargetLen = target.length();
        StringBuffer sbfReplace = new StringBuffer();
        int i = 0;
        for(int j = 0; j > -1;)
        {
            j = source.indexOf(target, i);
            if(j > -1)
            {
                sbfReplace.append(source.substring(i, j)).append(replace);
                i = j + iTargetLen;
            }
        }

        sbfReplace.append(source.substring(i, source.length()));
        return sbfReplace.toString();
    }

    public static String fixNull(String str)
    {
        String value = null;
        if(str == null)
            value = "";
        else
            value = trim(str);
        return value;
    }

    public static String trim(String str)
    {
        int idx = 0;
        char val[] = str.toCharArray();
        int count = val.length;
        int len;
        for(len = count; idx < len && val[idx] <= ' '; idx++);
        for(; idx < len && val[len - 1] <= ' '; len--);
        return idx > 0 || len < count ? str.substring(idx, len) : str;
    }

    public static String formatHTMLCode(String text)
    {
        if(text == null || text.equals(""))
            return "";
        StringBuffer sb = new StringBuffer(text);
        for(int i = 0; i < sb.length(); i++)
        {
            char ch = sb.charAt(i);
            if(ch == '&')
            {
                sb.replace(i, i + 1, "&amp;");
                i += 4;
            }
        }

        for(int i = 0; i < sb.length(); i++)
        {
            char ch = sb.charAt(i);
            if(ch == '<')
            {
                sb.replace(i, i + 1, "&lt;");
                i += 3;
            } else
            if(ch == '>')
            {
                sb.replace(i, i + 1, "&gt;");
                i += 3;
            } else
            if(ch == '\'')
            {
                sb.replace(i, i + 1, "&#39;");
                i += 4;
            } else
            if(ch == '"')
            {
                sb.replace(i, i + 1, "&quot;");
                i += 5;
            } else
            if(ch == ' ')
            {
                sb.replace(i, i + 1, "&nbsp;");
                i += 5;
            } else
            if(ch == '\r' && sb.charAt(i + 1) == '\n')
            {
                sb.replace(i, i + 2, "<BR>");
                i += 3;
            }
        }

        return sb.toString();
    }

    public static String getCLOBToString(Reader inputValue)
        throws Exception
    {
        StringBuffer sb = new StringBuffer();
        //Null Pointer 역참조 조치
        if(inputValue == null || "".equals(inputValue)) return "";
        else
        {
            char buffer[] = new char[1024];
            int index;
            while((index = inputValue.read(buffer, 0, 1024)) != -1) 
                sb.append(buffer, 0, index);
        }
        inputValue.close();
        return sb.toString();
    }

    public boolean isEng(String input)
    {
        char charArray[] = input.toCharArray();
        for(int i = 0; i < charArray.length; i++)
            if(charArray[i] > '\177')
                return false;

        charArray.clone();
        return true;
    }

    public String getFullTime()
    {
        Date date = new Date();
        SimpleDateFormat sd = new SimpleDateFormat("yyMMddHHmmssSSS");
        String num = sd.format(date);
        return num;
    }

//    public String getUniqeKey()
//    {
//        //System.out.println("\n\n\n::::afasdfasdf" + (int)Math.random() * 10000);
//        Date date = new Date();
//        SimpleDateFormat sd = new SimpleDateFormat("yyMMddHHmmss");
//        String rd = Integer.toString((int)Math.random() * 10000);
//        String addStr = "";
//        for(int i = 0; i < 4 - rd.length(); i++)
//            addStr = addStr + "0";
//
//        rd = addStr + rd;
//        String num = sd.format(date) + System.currentTimeMillis();
//        return num;
//    }
    
    /**
     * 암호화 하는 함수
     * @param val
     * @return
     */
//    public String hasing(String val){
//    	byte [] byteArray = val.getBytes();
//    	
//    	MessageDigest md = null;
//    	try{
//    		md = MessageDigest.getInstance("SHA1");
//    	} catch (NoSuchAlgorithmException e){
//    		e.printStackTrace();
//    	}
//    	
//    	if(md==null)
//    		return null;
//    	
//    	md.reset();
//    	md.update(byteArray);
//    	
//    	byte digest[] = md.digest();
//    	
//    	StringBuffer buffer = new StringBuffer();
//    	
//    	for(int i=0;i<digest.length;i++){
//    		buffer.append(Integer.toHexString(0xFF & digest[i]));
//    	}
//    	
//    	return buffer.toString();
//    }
    /**
     * 한글이 포함되어 있는지 체크
     * @param src
     * @return
     */
    public static boolean isKorean(String src) {
        //한글 정규표현식
    	String regEx = ".*[ㄱ-ㅎㅏ-ㅣ가-히]+.*";
        return Pattern.matches(regEx, src);
    } 
    
    public static String cleanXSS(String value) {
        //You'll need to remove the spaces from the html entities below
		value = value.replaceAll("<", "&lt;").replaceAll(">", "&gt;")
		 .replaceAll("%3C", "&lt;").replaceAll("%3E", "&gt;")
		 .replaceAll("\\(", "&#40;").replaceAll("\\)", "&#41;")
		 .replaceAll("'","&apos;")
		 .replaceAll("eval\\((.*)\\)", "")
		 .replaceAll("[\\\"\\\'][\\s]*javascript:(.*)[\\\"\\\']", "\"\"")
		 .replaceAll("script", "")
		
		 .replaceAll("&","&amp;")
         .replaceAll("#","&#35;")
         .replaceAll(";","&#59;")
         .replaceAll("\\\\","&#92;")
         .replaceAll("<","&lt;")
         .replaceAll(">","&gt;")
         .replaceAll("\\(","&#40;")
         .replaceAll("\\)","&#41;")
         .replaceAll("'","&#39;")
         .replaceAll("\"","&quot;")
         .replaceAll("[$]","&#36;")
         .replaceAll("[*]","&#42;")
         .replaceAll("[+]","&#43;")
         .replaceAll("[|]","&#124;")
         .replaceAll("\\.","&#46;")
         .replaceAll("\\?","&#63;")
         .replaceAll("\\[","&#91;")
         .replaceAll("\\]","&#93;")
         .replaceAll("\\^","&#94;")
         .replaceAll("\\{","&#123;")
         .replaceAll("\\}","&#125;")
         .replaceAll("!","&#33;")
         .replaceAll("%","&#37;")
         .replaceAll(",","&#44;")
         .replaceAll("-","&#45;")
         .replaceAll("/","&#47;")
         .replaceAll(":","&#58;")
         .replaceAll("=","&#61;")
         .replaceAll("@","&#64;")
         .replaceAll("_","&#95;")
         .replaceAll("`","&#96;")
         .replaceAll("~","&#126;");
		          
		 // allow tag
		value = value.replaceAll("&lt;p&gt;","<p>")
		          .replaceAll("&lt;br&gt;","<br>")
		          .replaceAll("&lt;h5&gt;","<h5>");
		
		return value;
    }
}
