果壳推书Demo
==================================================
按照最初的设计，果壳推书的目的在于让国科大研一新生能更好更快的找到课程学习方法以及适合自己的学习书籍。

开发采用敏捷开发方法，先快速构建原型上线，然后不断的迭代


        第一阶段，原型1 实现图书推荐功能

        第二阶段，迭代1 增加用户注册登录

        第三阶段，迭代2 增加用户评论功能

        第三阶段，迭代 3 增加用户喜欢推荐书籍的功能



分析需求可知，整个推书系统共有四个实体类：书籍、用户、评论、课程





        书籍（书籍ID，书名，作者，出版社，内容简介，图_url）

        Book(id,name,author,publish,abstract,picture_url)

        用户（用户ID，用户名，用户密码，性别）
        User(id,name,pwd,sex)

        评论（评论编号，评论人ID，评论书ID，评论内容，评论日期）
        Comment(id,u_id,b_id,content,date)

        课程（课程ID，课程编号，课程名称，课时，学分，教师）

        Course(id,cid,cname,chour,credit,tname,)




#####需求描述如下：

1.一进去就是个主页面index。主页面包括一个搜索框，一个登陆入口，一个注册入口，一个推荐书籍入口。<br>
2.当用户点击登陆，则进入登陆界面。<br>
3.当用户点击注册，则进入注册界面。<br>
4.当用户点击推荐书籍，则进入推荐书籍入口。<br>


5.搜索框课根据课程名，课程编号，课程所属学院条件搜索。当用户在搜索框内输入搜索内容按搜索按钮时，则会在当前页面产生搜索，结果显示在当前页面。选择某一条记录可以进入书籍详细页面。<br>

6.书籍详细页面包括，书籍信息，以及评论信息。此外该页面还有评论入口~<br>




#####由组长把Model统一搭建好

        书籍模型，CRUD 创建create，读取read，更新update，删除delete

        rails generate scaffold book name:string author:string publish:string abstract:text picture_url:string

        用户模型，CRUD 创建create，读取read，更新update，删除delete

        rails generate scaffold user name:string pwd:string sex:string 

        评论模型，CRUD 创建create，读取read，更新update，删除delete

        rails generate scaffold comment u_id:string b_id:string content:text date:datetime 

        课程模型，CRUD 创建create，读取read，更新update，删除delete

        rails generate scaffold course cid:string cname:string chour:text credit:string tname:string 

