package egovframework.gcall.util;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class StrUtil {
	public static String tagHtml(String oldStr) throws Exception {
		String newStr = oldStr;
		newStr = newStr.replaceAll("&lt;", "<");
		newStr = newStr.replaceAll("&gt;", ">");
		newStr = newStr.replaceAll("&quot;", "\"");
		newStr = newStr.replaceAll("&amp;", "&");
		newStr = newStr.replaceAll("&#039;", "\'");
		newStr = newStr.replaceAll("&apos;", "\'");
		return newStr;
	}

	public static String brHtml(String oldStr) throws Exception {
		String newStr = oldStr;
		newStr = newStr.replaceAll("<br>", "<br />");
		return newStr;
	}

	public static List<String> getImgSrc(String str) {
		Pattern nonValidPattern = Pattern.compile("<img[^>]*src=[\"']?([^>\"']+)[\"']?[^>]*>");

		List<String> result = new ArrayList<>();

		Matcher matcher = nonValidPattern.matcher(str);
		while (matcher.find()) {
			result.add(matcher.group(1).replace("https://www.110.go.kr", ""));
		}
		return result;
	}

	public static List<String> getVideoSrc(String str) {
		Pattern nonValidPattern = Pattern.compile("<video[^>]*src=[\"']?([^>\"']+)[\"']?[^>]*>");

		List<String> result = new ArrayList<>();
		Matcher matcher = nonValidPattern.matcher(str);
		while (matcher.find()) {
			result.add(matcher.group(1).replace("https://www.110.go.kr", ""));
		}
		return result;
	}

	public static List<String> getEmbedSrc(String str) {
		Pattern nonValidPattern = Pattern.compile("<embed[^>]*src=[\"']?([^>\"']+)[\"']?[^>]*>");

		List<String> result = new ArrayList<>();
		Matcher matcher = nonValidPattern.matcher(str);
		while (matcher.find()) {
			result.add(matcher.group(1).replace("https://www.110.go.kr", ""));
		}
		return result;
	}

	public static <E> List<Object> getObjectAraaylist(Collection<? extends Object> qustResImage) {
		List<Object> resultList = new ArrayList<>();

		resultList.addAll(qustResImage);

		return resultList;
	}

	/**
	 * str 파라미터에 정규식을 적용해서 length 파라미터 값과 비교하는 함수
	 * 
	 * @since 2020-03-02
	 * @author: winter 
	 * @param str, length
	 */
	public static boolean checkImgLength(String str, int length) throws Exception {
		
		boolean result = true;
		
		Matcher matcher = Pattern.compile("<img[^>]*>", Pattern.CASE_INSENSITIVE).matcher(str);
		while(matcher.find()) {
			String temp = matcher.group();
			
			if(temp.length() > length) result = false;
		}
		
		return result;
	}

	/**
	 * str 파라미터에 정규식을 적용해서 길이를 줄이는 함수
	 * 
	 * @since 2020-02-28
	 * @author: winter
	 * @param: str
			0.	특수문자 변환
		 	c.	\n 제거				\n
		 	c.	주석제거				<!--(.*?)-->
		 	
			s.	style제거1			[^(;|"|>)]*(mso-|font-)[^:]*:[^;]*;
			s.	style제거2			(\s|\u00a0|\u3000)*(letter-spacing|text-indent|-ms-word-break|line-height|box-sizing|text-decoration-line)(\s)*:[^;]*;
			s.	style제거3			(\s|\u00a0|\u3000)*(border-image)(\s|\u00a0|\u3000)*:(\s|\u00a0|\u3000)*(none)(\s|\u00a0|\u3000)*;
			s.	style제거4			(\s|\u00a0|\u3000)*(border)(\s|\u00a0|\u3000)*:(\s|\u00a0|\u3000)*(currentColor)(\s|\u00a0|\u3000)*;
			s.	style제거5			(\s|\u00a0|\u3000)*(table-layout)(\s|\u00a0|\u3000)*:(\s|\u00a0|\u3000)*(fixed)(\s|\u00a0|\u3000)*;
			
			e.	속성제거1				(\s|\u00a0|\u3000)+(valign|lang|class|align|data-|id)="[^"]*"
			e.	속성제거2				(\s|\u00a0|\u3000)+style="(\s|\u00a0|\u3000)*"
			
			r.	공백변환1(:)			(\s|\u00a0|\u3000)*:(\s|\u00a0|\u3000)*
			r.	공백변환2(;)			(\s|\u00a0|\u3000)*;(\s|\u00a0|\u3000)*
			r.	공백변환3(style=")		style="(\s|\u00a0|\u3000)+
			r.	공백변환4($1$2)		(</?\w+[^>]*>)[\s\u00a0\u3000]+(</?\w+[^>]*>)
	*/
	public static String dietString(String str) throws Exception {

		String result = str;

		// 0. 특수문자 변환
		result = result.replaceAll("&nbsp;", " ");
		result = result.replaceAll("&quot;", "\"");
		result = result.replaceAll("&lt;", "<");
		result = result.replaceAll("&gt;", ">");
		result = result.replaceAll("&amp;", "&");
		result = result.replaceAll("&#035;", "#");
		result = result.replaceAll("&#039;", "'");

		// c ~ e. 제거
		String[] patterns = { "\\n", "<!--(.*?)-->",

				"[^(;|\"|>)]*(mso-|font-)[^:]*:[^;]*;",
				"(\\s|\\u00a0|\\u3000)*(letter-spacing|text-indent|-ms-word-break|line-height|box-sizing|text-decoration-line)(\\s|\\u00a0|\\u3000)*:[^(;|\")]*;",
				"(\\s|\\u00a0|\\u3000)*(border-image)(\\s|\\u00a0|\\u3000)*:(\\s|\\u00a0|\\u3000)*(none)(\\s|\\u00a0|\\u3000)*;",
				"(\\s|\\u00a0|\\u3000)*(border)(\\s|\\u00a0|\\u3000)*:(\\s|\\u00a0|\\u3000)*(currentColor)(\\s|\\u00a0|\\u3000)*;",
				"(\\s|\\u00a0|\\u3000)*(table-layout)(\\s|\\u00a0|\\u3000)*:(\\s|\\u00a0|\\u3000)*(fixed)(\\s|\\u00a0|\\u3000)*;",

				"(\\s|\\u00a0|\\u3000)+(valign|lang|class|align|data-|id)[^=]*=\"[^\"]*\"",
				"(\\s|\\u00a0|\\u3000)+style=\"(\\s|\\u00a0|\\u3000)*\"" };
		for (String pattern : patterns) {
			result = result.replaceAll(pattern, "");
			// System.out.println(result);
		}

		// r. 공백 변환
		result = result.replaceAll("(\\s|\\u00a0|\\u3000)*:(\\s|\\u00a0|\\u3000)*", ":");
		result = result.replaceAll("(\\s|\\u00a0|\\u3000)*;(\\s|\\u00a0|\\u3000)*", ";");
		result = result.replaceAll("style=\"(\\s|\\u00a0|\\u3000)+", "style=\"");
		result = result.replaceAll("(</?\\w+[^>]*>)[\\s\\u00a0\\u3000]+(</?\\w+[^>]*>)", "$1$2");
		return result;
	}
	
//	public static void main(String[] args) {
//		String title="제목 글123";
//		System.out.println("님, 코로나19자녀돌봄 게시판에 \""+ title +"\" 글이 등록되었습니다.");
//	}
}