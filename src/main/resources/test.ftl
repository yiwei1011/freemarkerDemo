<html>
    <head>
        <meta charset="UTF-8">
        <title>Freemarker入门小DEMO</title>
    </head>

    <body>
    <#include  "head.ftl">

        <#--我只是一注释，不会有任何输出-->
    ${name},你好。${message}
        <#--定义简单类型-->
    <#assign linkman="周先生">
    联系人：${linkman}
        <#--定义对象类型-->
    <#assign  info={"mobile":"13301231212",'address':'项城市老街'}>
    电话:${info.mobile} 地址：${info.address}
    <#-- if指令-->
    <#if success=true>
     你已通过实名认证
    <#else >
      你未通过实名认证
    </#if>
    <br><br>
    -----商品价格表-----<br>
    <#--list指令-->
    <#list goodList as goods>
        <#--如果想在循环中得到索引，使用 循环变量+_index-->
        ${goods_index+1}商品名称：${goods.name} 价格：${goods.price}<br>
    </#list>
    <#--内建函数    变量+?+函数名称-->
    共${goodList?size}条记录
    <br><br>
     <#--将json字符串转换为对象-->
    <#assign  text="{'bank':'工商银行','account':'13746865215394'}" />
    <#assign data=text?eval />
    开户行：${data.bank} 账号：${data.account}
    <br><br>
    <#--日期格式化-->
    当前日期：${today?date}<br>
    当前时间：${today?time}<br>
    当前日期+时间：${today?datetime}<br>
    日期格式化：${today?string("yyyy年MM月")}
    <br><br>
    <#--数字转换为字符串 使用内建函数c-->
    累计积分：${point?c}
    <br><br>
    <#--空值处理运算符-->
    <#if aaa??>
    aaa变量存在 ${aaa!'-'}
    <#else >
    aaa变量不存在${aaa!'-'}
    </#if>
    <br><br>
    <#-- 运算符-->

    </body>
</html>