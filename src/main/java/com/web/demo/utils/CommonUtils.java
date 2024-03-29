package com.web.demo.utils;

import com.google.common.io.Resources;
import com.web.demo.constants.ApplicationConstants;

import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;

public class CommonUtils {

    public static String getOsName() {
        return System.getProperty("os.name");
    }

    public static boolean isWindows() {
        return getOsName().startsWith("Windows");
    }

    public static boolean isLinux() {
        return getOsName().startsWith("Linux");
    }

    public static boolean isMac() {
        return getOsName().startsWith("Mac");
    }

    public static String fileLocation(){
        if (CommonUtils.isWindows()) {
            return ApplicationConstants.DOWNLOAD_LOCATION;
        } else if (CommonUtils.isLinux()) {
            return ApplicationConstants.DOWNLOAD_LOCATION;
        } else if(CommonUtils.isMac()){
            return ApplicationConstants.DOWNLOAD_MAC;
        }
        return null;
    }

    public static String readResource(final String fileName, Charset charset) throws IOException {
        return Resources.toString(Resources.getResource(fileName), charset);
    }

}
