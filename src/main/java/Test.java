import freemarker.template.Configuration;
import freemarker.template.Template;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.Writer;
import java.util.*;

public class Test {

    public static void main(String[] args) throws Exception {
        //1.创建配置类
        Configuration configuration=new Configuration(Configuration.getVersion());
        //2.设置模板所在的目录
        configuration.setDirectoryForTemplateLoading(new File("D:\\idea\\workspace\\freemarkerDemo\\src\\main\\resources"));
        //3.设置字符集
        configuration.setDefaultEncoding("utf-8");
        //4.加载模板
        Template template = configuration.getTemplate("test.ftl");
        //5.创建数据模型
        Map map=new HashMap();
        map.put("name", "张三 ");
        map.put("message", "欢迎来到神奇的优乐选世界！");
        map.put("success",true);

        List goodList = new ArrayList();
        Map goods1= new HashMap();
        goods1.put("name","苹果");
        goods1.put("price",5.8);
        Map goods2 = new HashMap();
        goods2.put("name","香蕉");
        goods2.put("price",2.5);
        Map goods3 = new HashMap();
        goods3.put("name","橘子");
        goods3.put("price",3.2);
        goodList.add(goods1);
        goodList.add(goods2);
        goodList.add(goods3);
        map.put("goodList",goodList);

        map.put("today", new Date());

        map.put("point",5765765);

        map.put("aaa",null);
        //6.创建Writer对象
        Writer out =new FileWriter(new File("d:\\test.html"));
        //7.输出
        template.process(map, out);
        //8.关闭Writer对象
        out.close();


    }

    /**
     * 新增分支方法
     *
     */
    public void fenzhi(){
        System.out.println("fenzhi新增方法");
    }
}
