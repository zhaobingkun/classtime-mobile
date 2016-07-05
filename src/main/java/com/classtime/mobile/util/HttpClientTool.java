package com.classtime.mobile.util;


import net.sf.json.JSONObject;
import net.sf.json.xml.XMLSerializer;
import org.apache.http.HttpEntity;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.conn.params.ConnRouteParams;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.CoreConnectionPNames;
import org.apache.http.protocol.HTTP;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Iterator;
import java.util.Map;

/**
 * Created by Administrator on 2014/11/24.
 */
public class HttpClientTool {
    protected static final Logger logger = LoggerFactory
            .getLogger(HttpClientTool.class);

    final static int BUFFER_SIZE = 4096;

/*    private HttpClientTool() {
    }*/

    /**
     * 发送HTTP_POST请求
     *
     * @see若发送的<code>params</code>中含有中文,记得按照双方约定的字符集将中文
     *      <code>URLEncoder.encode(string,encodeCharset)</code>
     * @see本方法默认的连接超时时间为30秒,默认的读取超时时间为30秒
     * @param reqURL
     *            请求地址
     * @paramparams
     *            发送到远程主机的正文数据,其数据类型为<code>java.util.Map<String, String></code>
     * @return 远程主机响应正文`HTTP状态码,如<code>"SUCCESS`200"</code><br>
     *         若通信过程中发生异常则返回"Failed`HTTP状态码",如<code>"Failed`500"</code>
     */
    public static String sendPostRequestByJava(String reqURL, String sendData) {
        HttpURLConnection httpURLConnection = null;
        OutputStream out = null; // 写
        InputStream in = null; // 读
        InputStream in_error = null; // 读
        int httpStatusCode = 0; // 远程主机响应的HTTP状态码
        try {
            URL sendUrl = new URL(reqURL);
            httpURLConnection = (HttpURLConnection) sendUrl.openConnection();
            httpURLConnection.setRequestMethod("POST");

            //httpURLConnection.setRequestProperty();
            httpURLConnection.setRequestProperty("Accept",
                    "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8");
            httpURLConnection.setRequestProperty("Accept-Language", "en-US,en;q=0.5");
            // post.setHeader("Cookie", getCookies());
            httpURLConnection.setRequestProperty("Connection", "keep-alive");
            // httpURLConnection.setRequestProperty("Referer", "https://accounts.google.com/ServiceLoginAuth");
            httpURLConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
            //httpURLConnection.setRequestProperty("Content-Type","text/xml;");
            //httpURLConnection.setRequestProperty("Accept-Language","zh-CN,zh;q=0.8,en;q=0.6");
            //httpURLConnection.setRequestProperty("Accept-Encoding","gzip,deflate");//加上后返回是乱码
            //httpURLConnection.setRequestProperty("Connection","keep-alive");
            httpURLConnection.setRequestProperty("Cache-Control","max-age=0");
            httpURLConnection.setRequestProperty("Charsert", "UTF-8");

            /*
Accept-Encoding:gzip,deflate
Accept-Language:zh-CN,zh;q=0.8,en;q=0.6
Cache-Control:max-age=0
Connection:keep-alive
Content-Length:1129
Content-Type:application/x-www-form-urlencoded

/*            httpURLConnection.setRequestProperty("connection", "Keep-Alive");
            httpURLConnection.setRequestProperty("user-agent", "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)");
            httpURLConnection.setRequestProperty("Charsert", "UTF-8");*/


            httpURLConnection.setDoOutput(true); // 指示应用程序要将数据写入URL连接,其值默认为false
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setConnectTimeout(30*1000); // 30秒连接超时
            httpURLConnection.setReadTimeout(30*1000); // 30秒读取超时

            out = httpURLConnection.getOutputStream();
            out.write(sendData.toString().getBytes());
            // 清空缓冲区,发送数据
            out.flush();
            // 获取HTTP状态码
            httpStatusCode = httpURLConnection.getResponseCode();
            Map hashmap = httpURLConnection.getHeaderFields();
            Iterator it = hashmap.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                Object key = entry.getKey();
                Object value = entry.getValue();
                System.out.println("key=" + key + " value=" + value);
            }
            System.out.println("httpURLConnection.getResponseMessage()============="+ httpURLConnection.getResponseMessage());
            System.out.println("httpStatusCode============="+httpStatusCode);

            in = httpURLConnection.getInputStream();

            //in = httpURLConnection.getErrorStream();

/*            System.out.println("------------------"+in.toString());
            if(in==null){
                System.out.println("nullnullnullnullnullnullnullnullnullnullnullnullnull");
            }*/
            byte[] byteDatas = new byte[in.available()];
            in.read(byteDatas);

            //in_error.read(byteDatas);
            // System.out.println(String(byteDatas)+ "`");
            return new String(byteDatas) + "`" + httpStatusCode;
        } catch (Exception e) {
            //logger.error(e.getMessage());

            System.out.println("getMessage========================="+e.getMessage());
            return "Failed`" + httpStatusCode;
        } finally {
            if (out != null) {
                try {
                    out.close();
                } catch (Exception e) {
                    logger.error("关闭输出流时发生异常,堆栈信息如下", e);
                }
            }
            if (in != null) {
                try {
                    in.close();
                } catch (Exception e) {
                    logger.error("关闭输入流时发生异常,堆栈信息如下", e);
                }
            }
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
                httpURLConnection = null;
            }
        }
    }


    public static String sendPostRequest(String reqURL, String sendData,
                                         boolean isEncoder) {
        //String responseContent = null;
        HttpClient httpClient = new DefaultHttpClient();
        //设置5秒超时

        ConstantUtil ConstantUtil = new ConstantUtil();
        //是否走代理，测试环境使用
        if("true".equals(ConstantUtil.getProperty("hotelbeds.call.proxy","false"))) {
            String ip = ConstantUtil.getProperty("hotelbeds.proxy.ip","");
            int port = Integer.parseInt(ConstantUtil.getProperty("hotelbeds.proxy.port","0"));
            // ip="182.92.214.72";
            // port=8070;
            System.out.println("ip..."+ip+"..port:::"+port);
            HttpHost proxy = new HttpHost(ip, port, null);
            httpClient.getParams().setParameter(ConnRouteParams.DEFAULT_PROXY, proxy);
        }
        InputStream in = null; // 读
        System.out.println("start call service .....");
        //byte[] byteDatas = null;
        httpClient.getParams().setParameter(CoreConnectionPNames.CONNECTION_TIMEOUT, 5000);
        httpClient.getParams().setParameter(CoreConnectionPNames.SO_TIMEOUT, 5000);
        HttpPost httpPost = new HttpPost(reqURL);
        // httpPost.setHeader(HTTP.CONTENT_TYPE,
        // "application/x-www-form-urlencoded; charset=UTF-8");
        httpPost.setHeader(HTTP.CONTENT_TYPE, "text/xml; charset=GBK");   //增加这个设置后，调试成功，主要是设置了xml属性
        // httpPost.setEntity(HTTP.CHUNK_CODING);
        String returnStr ="";
        try {
            /*if (isEncoder) {
                List<NameValuePair> formParams = new ArrayList<NameValuePair>();
                for (String str : sendData.split("&")) {
                    formParams.add(new BasicNameValuePair(str.substring(0,
                            str.indexOf("=")),
                            str.substring(str.indexOf("=") + 1)));
                }
                httpPost.setEntity(new StringEntity(URLEncodedUtils.format(
                        formParams,"UTF-8")));
            } else {
                httpPost.setEntity(new StringEntity(sendData));
            }*/
            httpPost.setEntity(new StringEntity(sendData));
            HttpResponse response = httpClient.execute(httpPost);
            HttpEntity entity = response.getEntity();


            StatusLine line = response.getStatusLine();
            System.out.println("getStatusCode=========="+line.getStatusCode());
            System.out.println("getReasonPhrase=========" + line.getReasonPhrase());

            //in = entity.getContent();

            if (null != entity) {
                //responseContent = EntityUtils.toString(entity,"UTF-8");
                //EntityUtils.consume(entity);
                in = entity.getContent();
            }
            returnStr = InputStreamTOString(in);

            //byte[] byteDatas = new byte[in.available()];
            // in.read(byteDatas);

            //System.out.println(returnStr);
            //response.getEntity().
/*            if (null != entity) {
                //responseContent = EntityUtils.toString(entity,"UTF-8");
                EntityUtils.consume(entity);
            }*/
        } catch (Exception e) {
            logger.error("与[" + reqURL + "]通信过程中发生异常,堆栈信息如下", e);
        } finally {
            httpClient.getConnectionManager().shutdown();
        }
        return returnStr;
    }


    public static String testWsHotelBeds(){

        String xml ="<HotelValuedAvailRQ echoToken=\"DummyEchoToken\"" +
                "sessionId=\"DummySessionId\" \n" +
                "xmlns=\"http://www.hotelbeds.com/schemas/2005/06/messages\" \n" +
                "xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xsi:schemaLocation=\"http://www.hotelbeds.com/schemas/2005/06/messages HotelValuedAvailRQ.xsd\"> \n" +
                "<Language>CHI</Language> \n" +
                "<Credentials> \n" +
                "<User>ETRIPWORLDCN93622</User> \n" +
                "<Password>ETRIPWORLDCN93622</Password> \n" +
                "</Credentials> \n" +
                "<PaginationData pageNumber=\"1\"/> \n" +
                "<CheckInDate date=\"20150610\"/> \n" +
                "<CheckOutDate date=\"20150615\"/> \n" +
                "<Destination code=\"SAD\" type=\"SIMPLE\"/> \n" +
                "<OccupancyList> \n" +
                "<HotelOccupancy> \n" +
                "<RoomCount>1</RoomCount> \n" +
                "<Occupancy> \n" +
                "<AdultCount>2</AdultCount> \n" +
                "<ChildCount>0</ChildCount> \n" +
                "</Occupancy> \n" +
                "</HotelOccupancy> \n" +
                "</OccupancyList> \n" +
                "</HotelValuedAvailRQ>";

        //String xml = "";


        try {
            //xml = BeanToXml.testHotelvaluedavail();
        } catch (Exception e) {
            e.printStackTrace();
            return "解析xml错误"+e.getMessage();
        }

        System.out.println("------------"+xml);
        String returnXmlStr = sendPostRequest("http://212.170.239.71/appservices/http/FrontendService", xml, false);


        return returnXmlStr;
    }


    public static void main(String[] args) {
        System.out.println("============");
        String xml ="<HotelValuedAvailRQ echoToken=\"DummyEchoToken\"" +
                "sessionId=\"DummySessionId\" \n" +
                "xmlns=\"http://www.hotelbeds.com/schemas/2005/06/messages\" \n" +
                "xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xsi:schemaLocation=\"http://www.hotelbeds.com/schemas/2005/06/messages HotelValuedAvailRQ.xsd\"> \n" +
                "<Language>CHI</Language> \n" +
                "<Credentials> \n" +
                "<User>ETRIPWORLDCN93622</User> \n" +
                "<Password>ETRIPWORLDCN93622</Password> \n" +
                "</Credentials> \n" +
                "<PaginationData pageNumber=\"1\"/> \n" +
                "<CheckInDate date=\"20150108\"/> \n" +
                "<CheckOutDate date=\"20150130\"/> \n" +
                "<Destination code=\"SAD\" type=\"SIMPLE\"/> \n" +
                "<OccupancyList> \n" +
                "<HotelOccupancy> \n" +
                "<RoomCount>1</RoomCount> \n" +
                "<Occupancy> \n" +
                "<AdultCount>2</AdultCount> \n" +
                "<ChildCount>0</ChildCount> \n" +
                "</Occupancy> \n" +
                "</HotelOccupancy> \n" +
                "</OccupancyList> \n" +
                "</HotelValuedAvailRQ>";


        xml ="<HotelValuedAvailRQ xsi:schemaLocation=\"http://www.hotelbeds.com/schemas/2005/06/messages HotelValuedAvailRQ.xsd\" " +
                "echoToken=\"DummyEchoToken\" sessionId=\"DummySessionId\" xmlns=\"http://www.hotelbeds.com/schemas/2005/06/messages\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" version=\"2013/12\">" +
                "<Language>CHI</Language><Credentials>" +
                "<User>ETRIPWORLDCN93622</User>" +
                "<Password>ETRIPWORLDCN93622</Password>" +
                "</Credentials><PaginationData pageNumber=\"1\"/>" +
                "<CheckInDate date=\"20150702\"/>" +
                "<CheckOutDate date=\"20150709\"/>" +
                "<Destination code=\"SAD\" type=\"SIMPLE\" />" +
                "<OccupancyList>" +
                "<HotelOccupancy>" +
                "<RoomCount>1</RoomCount>" +
                "<Occupancy>" +
                "<AdultCount>2</AdultCount>" +
                "<ChildCount>0</ChildCount>" +
                "</Occupancy></HotelOccupancy>" +
                "</OccupancyList>" +
                "</HotelvaluedAvailRQ>";

        long start = System.currentTimeMillis();
        try {
            //xml = BeanToXml.testHotelvaluedavail();
        } catch (Exception e) {
            e.printStackTrace();
        }

        System.out.println("xml----------"+xml);
        String returnXmlStr = sendPostRequest("http://212.170.239.71/appservices/http/FrontendService", xml, false);


        System.out.println(System.currentTimeMillis()-start);

        System.out.println("xml = "+returnXmlStr);

        String json = xml2JSON(returnXmlStr).replace("@","").replace("#", "");//.replace("}}}},{\"xsi:type","}}}]},{\"xsi:type").
        //replace("AvailableRoom\":{\"HotelOccupancy","AvailableRoom\":[{\"HotelOccupancy").replace("\"}}}}]}","\"}}}]}]}");

        System.out.println("json="+json);

        String json2 = xml2JSON(returnXmlStr).replace("@","").replace("#", "").replace("}}}},{\"xsi:type","}}}]},{\"xsi:type").
                replace("AvailableRoom\":{\"HotelOccupancy","AvailableRoom\":[{\"HotelOccupancy").replace("\"}}}}]}","\"}}}]}]}");

        System.out.println("json="+json2);


        System.out.println("============");
    }

    public static String xml2JSON(String xml){

        return new XMLSerializer().read(xml).toString();
    }

    public static String json2XML(String json){
        JSONObject jobj = JSONObject.fromObject(json);
        String xml =  new XMLSerializer().write(jobj);
        return xml;
    }

    public static String InputStreamTOString(InputStream in) throws Exception{

        ByteArrayOutputStream outStream = new ByteArrayOutputStream();
        byte[] data = new byte[BUFFER_SIZE];
        int count = -1;
        while((count = in.read(data,0,BUFFER_SIZE)) != -1)
            outStream.write(data, 0, count);

        data = null;
        return new String(outStream.toByteArray(),"utf-8");
    }
}