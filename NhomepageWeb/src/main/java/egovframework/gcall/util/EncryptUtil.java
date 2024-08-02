package egovframework.gcall.util;

import java.security.spec.AlgorithmParameterSpec;

import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

import org.apache.commons.codec.binary.Base64;

public class EncryptUtil {

	// 암호화 키
	final static String keyStr = "110CallCenterKey".substring(0, 16);
	
	// 암호화 초기벡터
	final static String ivStr = "110CallCenterIvv".substring(0, 16);

	/**
	 * AES128 CBC 암호화
	 */
	public static String encAES128CBC(String info) throws Exception {
		
		byte[] keyBytes = keyStr.getBytes("UTF-8");
		byte[] ivBytes = ivStr.getBytes("UTF-8");
		byte[] infoBytes = info.getBytes("UTF-8");
		
		SecretKeySpec keySpec = new SecretKeySpec(keyBytes, "AES");
		AlgorithmParameterSpec ivSpec = new IvParameterSpec(ivBytes);
		
		Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
		cipher.init(Cipher.ENCRYPT_MODE, keySpec, ivSpec);
		
		return Base64.encodeBase64String(cipher.doFinal(infoBytes));
	}

	/**
	 * AES128 CBC 복호화
	 */
	public static String decAES128CBC(String info) throws Exception {
		
		byte[] keyBytes = keyStr.getBytes("UTF-8");
		byte[] ivBytes = ivStr.getBytes("UTF-8");
		byte[] infoBytes = Base64.decodeBase64(info);
		
		SecretKeySpec keySpec = new SecretKeySpec(keyBytes, "AES");
	    IvParameterSpec ivSpec = new IvParameterSpec(ivBytes);
		
		Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
		cipher.init(Cipher.DECRYPT_MODE, keySpec, ivSpec);
		
		return new String(cipher.doFinal(infoBytes), "UTF-8");
	}

}
