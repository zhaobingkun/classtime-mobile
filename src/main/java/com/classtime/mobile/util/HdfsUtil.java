package com.classtime.mobile.util;

import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.fs.*;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;



/**
 * Created by Administrator on 2016/9/18.
 */

public class HdfsUtil {

    static FileSystem fs = null;

    public static void init() throws IOException, InterruptedException,
            URISyntaxException {

        Configuration conf = new Configuration();// 读取配置文件

        // 设置fs.defaultFS参数，如果没有设置，会出现java.lang.IllegalArgumentException:
        // Wrong FS:hdfs://master:9000/user,expected: file:///
        // 当然了，也可以将hadoop集群中的core-site.xml配置文件拷贝到该工程项目下,这样，在读取配置文件时就能够识别hdfs文件系统
        conf.set("fs.defaultFS", "hdfs://101.201.115.106:9000/");

        fs = FileSystem.get(new URI("hdfs://101.201.115.106:9000/"), conf, "hadoop");// 获取hdfs实例
    }


    public static void main(String[] args)throws Exception {
        init();

        listFiles();

    }

    // upload a loacl file to HDFS

/*    public void upload() throws IOException {

        Path dest = new Path("hdfs://master:9000/user/artifacts.xml");

        FSDataOutputStream fsOut = fs.create(dest);

        FileInputStream localIn = new FileInputStream(
                "D:\\eclipse\\artifacts.xml");

        IOUtils.copy(localIn, fsOut);
    }*/

 /*   @Test
    public void upload2() throws IllegalArgumentException, IOException {
        fs.copyFromLocalFile(new Path("D:\\eclipse\\artifacts.xml"), new Path(
                "hdfs://master:9000/user/artifacts2.xml"));
    }

    // download a file to local file
    @Test
    public void download() throws IllegalArgumentException, IOException {
        fs.copyToLocalFile(new Path("hdfs://master:9000/user/artifacts2.xml"),
                new Path("D:\\a.xml"));
    }*/

    // list HDFS file

    public static void listFiles() throws FileNotFoundException, IllegalArgumentException, IOException, URISyntaxException, InterruptedException {
        // listFiles列出的是文件信息，而且提供递归遍历





        RemoteIterator<LocatedFileStatus> files = fs.listFiles(new Path("/mnt/tk/segments/20160913134850/content"),  true);

        while (files.hasNext()) {

            LocatedFileStatus file = files.next();
            Path filePath = file.getPath();
            String fileName = filePath.getName();
            System.out.println(fileName);

        }

        System.out.println("---------------------------------");

        // listStatus 可以列出文件和文件夹的信息，但是不提供自带的递归遍历
        FileStatus[] listStatus = fs.listStatus(new Path("/mnt/tk/segments/20160913134850/content/"));
        for (FileStatus status : listStatus) {
            String name = status.getPath().getName();
            System.out.println(name
                    + (status.isDirectory() ? " is dir" : " is file"));

        }
    }

    // create HDFS folder
/*    @Test
    public void mkdir() throws IllegalArgumentException, IOException {
        fs.mkdirs(new Path("hdfs://master:9000/aaa/bbb/ccc"));
    }

    // remove HDFS folder or file
    @Test
    public void remove() throws IllegalArgumentException, IOException {
        fs.delete(new Path("hdfs://master:9000/aaa"), true);
    }*/
}
