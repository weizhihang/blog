-- CLTPHP SQL Backup
-- Time:2018-09-26 17:27:21
-- http://www.cltphp.com 

--
-- 表的结构 `clt_ad`
-- 
DROP TABLE IF EXISTS `clt_ad`;
CREATE TABLE `clt_ad` (
  `ad_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '广告名称',
  `type_id` tinyint(5) NOT NULL COMMENT '所属位置',
  `pic` varchar(200) NOT NULL DEFAULT '' COMMENT '广告图片URL',
  `url` varchar(200) NOT NULL DEFAULT '' COMMENT '广告链接',
  `addtime` int(11) NOT NULL COMMENT '添加时间',
  `sort` int(11) NOT NULL COMMENT '排序',
  `open` tinyint(2) NOT NULL COMMENT '1=审核  0=未审核',
  `content` varchar(225) DEFAULT '' COMMENT '广告内容',
  PRIMARY KEY (`ad_id`),
  KEY `plug_ad_adtypeid` (`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COMMENT='广告表';

-- 
-- 导出`clt_ad`表中的数据 `clt_ad`
--
INSERT INTO `clt_ad` VALUES (15,'CLTPHP的目的是 让所有人都能 高效 简洁 的建立网站',1,'/uploads/20170911/d6efb1bcdf1c588a0da7eddf170d33c7.png','http://demo.cltphp.com',1480909037,1,1,'虽然世界上有成千上万的建站系统，但CLTPHP会告诉你，真正高效的建站系统是什么样的。');
INSERT INTO `clt_ad` VALUES (17,'即使是后台我们也极力追求尽善尽美',1,'/uploads/20170911/6d5d9f04d79aaf813d3d8ef9e5475218.png','http://demo.cltphp.com',1481788850,2,1,'CLTPHP采用了优美的layui框架，一面极简，一面丰盈。加上angular Js，让数据交互变得更为简洁直白。用最基础的代码，实现最强大的效果，让你欲罢不能！');
INSERT INTO `clt_ad` VALUES (18,'ThinkPHP5极大的提高了CLTPHP的可拓展性',1,'/uploads/20170911/f83ecfd46c3473192708c0042378a18d.png','http://demo.cltphp.com',1481788869,3,1,'CLTPHP采用的ThinkPHP5为基础框架，从而使得CLTPHP的拓展性变的极为强大。从模型构造到栏目建立，再到前台展示，一气呵成，网站后台一条龙式操作，让小白用户能快速掌握CLTPHP管理系统的核心操作，让小白开发者能更好的理解CLTPHP的核心构建价值。');
--
-- 表的结构 `clt_ad_type`
-- 
DROP TABLE IF EXISTS `clt_ad_type`;
CREATE TABLE `clt_ad_type` (
  `type_id` tinyint(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '广告位名称',
  `sort` int(11) NOT NULL COMMENT '广告位排序',
  PRIMARY KEY (`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='广告分类';

-- 
-- 导出`clt_ad_type`表中的数据 `clt_ad_type`
--
INSERT INTO `clt_ad_type` VALUES (1,'【首页】顶部轮播',1);
INSERT INTO `clt_ad_type` VALUES (5,'【内页】横幅',2);
--
-- 表的结构 `clt_admin`
-- 
DROP TABLE IF EXISTS `clt_admin`;
CREATE TABLE `clt_admin` (
  `admin_id` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT '管理员ID',
  `username` varchar(20) NOT NULL COMMENT '管理员用户名',
  `pwd` varchar(70) NOT NULL COMMENT '管理员密码',
  `group_id` mediumint(8) DEFAULT NULL COMMENT '分组ID',
  `email` varchar(30) DEFAULT NULL COMMENT '邮箱',
  `realname` varchar(10) DEFAULT NULL COMMENT '真实姓名',
  `tel` varchar(30) DEFAULT NULL COMMENT '电话号码',
  `ip` varchar(20) DEFAULT NULL COMMENT 'IP地址',
  `add_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `mdemail` varchar(50) DEFAULT '0' COMMENT '传递修改密码参数加密',
  `is_open` tinyint(2) DEFAULT '0' COMMENT '审核状态',
  `avatar` varchar(120) DEFAULT '' COMMENT '头像',
  PRIMARY KEY (`admin_id`),
  KEY `admin_username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='后台管理员';

-- 
-- 导出`clt_admin`表中的数据 `clt_admin`
--
INSERT INTO `clt_admin` VALUES (1,'admin','e10adc3949ba59abbe56e057f20f883e',1,'1109305987@qq.com','','18792402229','127.0.0.1',1482132862,'0',1,'/uploads/20180119/50fa71996b7a82f2d3e609e6564fdf43.jpg');
INSERT INTO `clt_admin` VALUES (10,'tests','e10adc3949ba59abbe56e057f20f883e',2,'15617774662@163.com',0,'15574074752','0.0.0.0',1532919605,'0',0,'');
INSERT INTO `clt_admin` VALUES (11,'admin1','96e79218965eb72c92a549dd5a330112',1,'15617774662@163.com',0,'15574074754','0.0.0.0',1532936186,'0',0,'');
--
-- 表的结构 `clt_article`
-- 
DROP TABLE IF EXISTS `clt_article`;
CREATE TABLE `clt_article` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userid` int(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(40) NOT NULL DEFAULT '',
  `title` varchar(120) NOT NULL DEFAULT '',
  `title_style` varchar(225) NOT NULL DEFAULT '',
  `thumb` varchar(225) NOT NULL DEFAULT '',
  `keywords` varchar(120) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `content` text NOT NULL,
  `template` varchar(40) NOT NULL DEFAULT '',
  `posid` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `recommend` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `readgroup` varchar(100) NOT NULL DEFAULT '',
  `readpoint` smallint(5) NOT NULL DEFAULT '0',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0',
  `copyfrom` varchar(255) NOT NULL DEFAULT 'CLTPHP',
  `fromlink` varchar(255) NOT NULL DEFAULT 'http://www.cltphp.com/',
  `address` varchar(80) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `status` (`id`,`status`,`listorder`),
  KEY `catid` (`id`,`catid`,`status`),
  KEY `listorder` (`id`,`catid`,`status`,`listorder`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

-- 
-- 导出`clt_article`表中的数据 `clt_article`
--
INSERT INTO `clt_article` VALUES (1,3,1,'admin','你可能忽略掉的后台小功能（一）','color:rgb(247, 184, 36);font-weight:normal;','','你可能忽略掉的后台小功能（一）','你可能忽略掉的后台小功能（一）','<p>刷新：刷新当前标签页</p><p>关闭当前：关闭当前标签页</p><p>关闭其他：除选中的标签页外，关闭其他全部标签页</p><p>关闭所有：关闭全部标签页</p><p><img src=\"/public/uploads/ueditor/image/20170907/1504764868495338.png\" title=\"1504764868495338.png\" alt=\"ac (1).png\"/></p>','0',2,1,0,'',0,0,803,1499760262,1504764870,'CLTPHP','http://www.cltphp.com/','');
INSERT INTO `clt_article` VALUES (2,3,1,'admin','CLTPHP开放式模型设计','color:rgb(255, 87, 34);font-weight:bold;','','CLTPHP开放式模型设计','CLTPHP内容管理系统采用了区别于传统cms的开放式模型设计，让网站的栏目及内容随这站长的想法而设计、改变。','<p>　　CLTPHP内容管理系统采用了区别于传统cms的开放式模型设计，让网站的栏目及内容随这站长的想法而设计、改变。</p><p>　　在网站建设中，我们会把不同的内容以不同的方式展示，传统网站得手动建立不同的数据表，然后通过编码，建立不同的后台栏目，在针对不同的栏目添加各自对应的内容，这期间，还得写不同的添加页面来适应各个分类，最后，再把不同的栏目展示到前台。</p><p>　　CLTPHP的解决方式是，通过后台添加模型，建立不同的表，</p><p><img src=\"/public/uploads/ueditor/image/20170907/1504764406381046.png\" title=\"1504764406381046.png\" alt=\"m (1).png\"/></p><p>模型是要和栏目绑定的，不同的栏目就会有不同的内容模型，或者是同一类栏目内容，会归纳到同一模型下。这里产品模型绑定为文章模型。</p><p><img src=\"/public/uploads/ueditor/image/20170907/1504764538131048.png\" title=\"1504764538131048.png\" alt=\"cm (1).png\"/></p><p>一个模型可以理解为一张表，模型字段即使这张表的字段。</p><p><img src=\"/public/uploads/ueditor/image/20170907/1504764618106985.png\" title=\"1504764618106985.png\" alt=\"mf (1).png\"/></p><p>每一个字段最终呈现的方式可能会不一样，所以，字段属性就应用而生了，</p><p><img src=\"/public/uploads/ueditor/image/20170907/1504764686677148.png\" title=\"1504764686677148.png\" alt=\"ef (1).png\"/></p><p>以标题举例，标题会对应自己显示颜色，及是否加粗显示，还有，是否对应一个缩略图。这些通过模型字段的设置，就可以在添加栏目里体现出来，参考下图</p><p><img src=\"/public/uploads/ueditor/image/20170907/1504764760851814.png\" title=\"1504764760851814.png\" alt=\"en (1).png\"/></p><p>通过上图，我们能很清楚知道，这个栏目对应的模型里，标题字段一定设置了标题图片和标题样式。最后，栏目或者某一篇内容可以绑定一个模版，用来前台展示。不同的模版有不同的展示风格，这里，开发者可以扩延出无限的前台展示模版。其规则是，列表页 &nbsp;<strong>表名-list-自定义&nbsp;</strong>&nbsp;内容页 &nbsp;<strong>表名-show-自定义</strong></p>','0',2,1,0,'',0,0,1298,1499760655,1504764762,'CLTPHP','http://www.cltphp.com/','');
INSERT INTO `clt_article` VALUES (24,5,1,'admin','CLTPHP5.1更新','color:rgb(0, 153, 102);font-weight:bold;','','CLTPHP5.1更新','CLTPHP5.1更新','<p>更新内容：</p><p>1.优化双编辑器（编辑器切换不兼容问题，layedit上传不了图片问题，layedit无法编辑问题）</p><p>2.添加自定义标签（参考首页）</p><p>3.修复前台手机兼容问题</p><p><br/></p><p>下载地址：<a target=\"_self\" href=\"http://o95ehky7c.bkt.clouddn.com/cltphp5.1.zip\">点击下载CLTPHP5.1</a></p><p>升级补丁：<a target=\"_self\" href=\"http://o95ehky7c.bkt.clouddn.com/CLTPHP5.0s%E5%8D%87%E7%BA%A75.1%E5%8C%85.zip\">CLTPHP5.0升级5.1</a></p>','0',0,1,0,'',0,0,287,1503307064,1505264247,'CLTPHP','http://www.cltphp.com/','');
INSERT INTO `clt_article` VALUES (3,5,1,'admin','关于CLTPHP你错过了什么？','color:rgb(247, 184, 36);font-weight:normal;','','关于CLTPHP你错过了什么？','关于CLTPHP你错过了什么？','<p><a target=\"_blank\" href=\"http://www.cltphp.com\">CLTPHP</a>官方QQ群<a target=\"_blank\" title=\"点击加入\" href=\"http://shang.qq.com/wpa/qunwpa?idkey=003995f61e8bdf5e79e0241b3136b9803ea498833535bbb3aa14004966858349\">229455880</a>，来这里和大家一起讨论更多<a target=\"_blank\" href=\"http://www.cltphp.com\">CLTPHP</a>相关的问题和操作方法，同时可以掌握<a target=\"_self\" href=\"http://www.cltphp.com/home/news/index/catId/49.html\">CLTPHP的最新动态</a>。</p><p>另外，站长会在群里随时更新一些好玩的，或者好用的资源。</p>','0',1,1,0,'',0,0,355,1498035408,1499834839,'CLTPHP','http://www.cltphp.com/','');
INSERT INTO `clt_article` VALUES (4,5,1,'admin','CLTPHP4.0正式发布','color:rgb(95, 184, 120);font-weight:bold;','/uploads/20170905/14d6955eda9e9019ba28f49cb02856b3.jpg','CLTPHP4.0正式发布','CLTPHP4.0正式发布','<p><a target=\"_self\" href=\"http://www.cltphp.com/\">CLTPHP4.0</a>正式发布，<a target=\"_self\" href=\"http://www.cltphp.com/\">CLTPHP4.0</a>采用ThinkPHP+Layui+AngularJS实现完成。</p>','0',2,1,0,'',0,0,1025,1497949408,1504597814,'CLTPHP','http://www.cltphp.com/','');
INSERT INTO `clt_article` VALUES (5,5,1,'admin','CLTPHP4.2版本更新','color:rgb(95, 184, 120);font-weight:bold;','','CLTPHP4.2版本更新,CLTPHP,CLTPHP内容管理系统','CLTPHP4.2版本更新','<p>更新内容</p><p>1.升级ThinkPHP框架到5.0.10</p><p>2.后台栏目添加/编辑文章，点击返回按钮定位到当前栏目</p><p>3.后台增加主站捐献功能</p><p>4.微信管理调整，添加“生成菜单”功能</p><p><br></p><p>推荐环境：apache2.4+php5.5(以上)+mysql5.0(以上)</p><p>开发环境：phpStudy 2016 &nbsp;php5.5.38</p><div><br></div>','0',2,1,0,'',0,0,620,1499159138,1499916031,'CLTPHP','http://www.cltphp.com/','');
INSERT INTO `clt_article` VALUES (6,5,1,'admin','CLTPHP操作文档不断更新中','color:rgb(30, 159, 255);font-weight:bold;','/uploads/20170905/6e9055437e213226c29c590ca82c9978.png','CLTPHP操作文档不断更新中','CLTPHP操作文档不断更新中','<p>　　新版<a target=\"_self\" href=\"http://www.cltphp.com/\">CLTPHP</a>操作及开发手册不断更新中，欢迎大家购买学习。<img src=\"file:///C:/Users/ADMINI~1/AppData/Local/Temp/%W@GJ$ACOF(TYDYECOKVDYB.png\">https://www.kancloud.cn/chichu/cltphp。</p><p>　　文档的延迟更新，给各位爱好者带来的不便，我们深感抱歉，但也请大家理解我们的难处。</p><p>　　开发团队向大家保证，会尽快完善文档，尽量解决大家在开发过程中遇到的种种问题。</p><p>　　文档是收费的，开发的继续开发，骂娘的继续骂娘，收费的或许会越来越贵。</p><div><br></div>','0',2,1,0,'',0,0,801,1499677661,1504597769,'CLTPHP','http://www.cltphp.com/','');
INSERT INTO `clt_article` VALUES (7,6,1,'admin','ThinkPHP隐藏index.php','color:rgb(57, 61, 73);font-weight:bold;','','ThinkPHP隐藏index.php,CLTPHP,CLTPHP内容管理系统,thinkphp,thinkphp内容管理系统','ThinkPHP隐藏index.php,CLTPHP,CLTPHP内容管理系统,thinkphp,thinkphp内容管理系统','<p>可以通过URL重写隐藏应用的入口文件<code>index.php</code>,下面是相关服务器的配置参考：</p><h2 data-line=\"2\" class=\"line\"><a id=\"_Apache__2\"></a>[ Apache ]</h2><ol><li>httpd.conf配置文件中加载了mod_rewrite.so模块</li><li>AllowOverride None 将None改为 All</li><li>把下面的内容保存为.htaccess文件放到应用入口文件的同级目录下</li></ol><pre><code><span class=\"hljs-section\">&lt;IfModule mod_rewrite.c&gt;</span>\n<span class=\"hljs-attribute\"><span class=\"hljs-nomarkup\">Options</span></span> +FollowSymlinks -Multiviews\n<span class=\"hljs-attribute\"><span class=\"hljs-nomarkup\">RewriteEngine</span></span> <span class=\"hljs-literal\">on</span>\n\n<span class=\"hljs-attribute\"><span class=\"hljs-nomarkup\">RewriteCond</span></span> <span class=\"hljs-variable\">%{REQUEST_FILENAME}</span> !-d\n<span class=\"hljs-attribute\"><span class=\"hljs-nomarkup\">RewriteCond</span></span> <span class=\"hljs-variable\">%{REQUEST_FILENAME}</span> !-f\n<span class=\"hljs-attribute\"><span class=\"hljs-nomarkup\">RewriteRule</span></span> ^(.*)$ index.php?/<span class=\"hljs-number\">$1</span><span class=\"hljs-meta\"> [QSA,PT,L]</span>\n<span class=\"hljs-section\">&lt;/IfModule&gt;</span>\n</code></pre><h2 data-line=\"18\" class=\"line\"><a id=\"_IIS__18\"></a>[ IIS ]</h2><p>如果你的服务器环境支持ISAPI_Rewrite的话，可以配置httpd.ini文件，添加下面的内容：</p><pre><code><span class=\"hljs-attribute\"><span class=\"hljs-nomarkup\">RewriteRule</span></span> (.*)$ /index\\.php\\?s=<span class=\"hljs-number\">$1</span><span class=\"hljs-meta\"> [I]</span>\n</code></pre><p>在IIS的高版本下面可以配置web.Config，在中间添加rewrite节点：</p><pre><code><span class=\"xml\"><span class=\"hljs-tag\">&lt;<span class=\"hljs-name\">rewrite</span>&gt;</span>\n <span class=\"hljs-tag\">&lt;<span class=\"hljs-name\">rules</span>&gt;</span>\n <span class=\"hljs-tag\">&lt;<span class=\"hljs-name\">rule</span> <span class=\"hljs-attr\">name</span>=<span class=\"hljs-string\">\"OrgPage\"</span> <span class=\"hljs-attr\">stopProcessing</span>=<span class=\"hljs-string\">\"true\"</span>&gt;</span>\n <span class=\"hljs-tag\">&lt;<span class=\"hljs-name\">match</span> <span class=\"hljs-attr\">url</span>=<span class=\"hljs-string\">\"^(.*)$\"</span> /&gt;</span>\n <span class=\"hljs-tag\">&lt;<span class=\"hljs-name\">conditions</span> <span class=\"hljs-attr\">logicalGrouping</span>=<span class=\"hljs-string\">\"MatchAll\"</span>&gt;</span>\n <span class=\"hljs-tag\">&lt;<span class=\"hljs-name\">add</span> <span class=\"hljs-attr\">input</span>=<span class=\"hljs-string\">\"</span></span></span><span class=\"hljs-template-variable\">{HTTP_HOST}</span><span class=\"xml\"><span class=\"hljs-tag\"><span class=\"hljs-string\">\"</span> <span class=\"hljs-attr\">pattern</span>=<span class=\"hljs-string\">\"^(.*)$\"</span> /&gt;</span>\n <span class=\"hljs-tag\">&lt;<span class=\"hljs-name\">add</span> <span class=\"hljs-attr\">input</span>=<span class=\"hljs-string\">\"</span></span></span><span class=\"hljs-template-variable\">{REQUEST_FILENAME}</span><span class=\"xml\"><span class=\"hljs-tag\"><span class=\"hljs-string\">\"</span> <span class=\"hljs-attr\">matchType</span>=<span class=\"hljs-string\">\"IsFile\"</span> <span class=\"hljs-attr\">negate</span>=<span class=\"hljs-string\">\"true\"</span> /&gt;</span>\n <span class=\"hljs-tag\">&lt;<span class=\"hljs-name\">add</span> <span class=\"hljs-attr\">input</span>=<span class=\"hljs-string\">\"</span></span></span><span class=\"hljs-template-variable\">{REQUEST_FILENAME}</span><span class=\"xml\"><span class=\"hljs-tag\"><span class=\"hljs-string\">\"</span> <span class=\"hljs-attr\">matchType</span>=<span class=\"hljs-string\">\"IsDirectory\"</span> <span class=\"hljs-attr\">negate</span>=<span class=\"hljs-string\">\"true\"</span> /&gt;</span>\n <span class=\"hljs-tag\">&lt;/<span class=\"hljs-name\">conditions</span>&gt;</span>\n <span class=\"hljs-tag\">&lt;<span class=\"hljs-name\">action</span> <span class=\"hljs-attr\">type</span>=<span class=\"hljs-string\">\"Rewrite\"</span> <span class=\"hljs-attr\">url</span>=<span class=\"hljs-string\">\"index.php/</span></span></span><span class=\"hljs-template-variable\">{R:1}</span><span class=\"xml\"><span class=\"hljs-tag\"><span class=\"hljs-string\">\"</span> /&gt;</span>\n <span class=\"hljs-tag\">&lt;/<span class=\"hljs-name\">rule</span>&gt;</span>\n <span class=\"hljs-tag\">&lt;/<span class=\"hljs-name\">rules</span>&gt;</span>\n <span class=\"hljs-tag\">&lt;/<span class=\"hljs-name\">rewrite</span>&gt;</span>\n</span></code></pre><h2 data-line=\"42\" class=\"line\"><a id=\"_Nginx__42\"></a>[ Nginx ]</h2><p>在Nginx低版本中，是不支持PATHINFO的，但是可以通过在Nginx.conf中配置转发规则实现：</p><pre><code>  location / { // …..省略部分代码\n   <span class=\"hljs-keyword\">if</span> (!<span class=\"hljs-_\">-e</span> <span class=\"hljs-variable\">$request_filename</span>) {\n   rewrite  ^(.*)$  /index.php?s=/<span class=\"hljs-variable\">$1</span>  last;\n   <span class=\"hljs-built_in\">break</span>;\n    }\n }\n</code></pre><blockquote class=\"default\"><p>其实内部是转发到了ThinkPHP提供的兼容URL，利用这种方式，可以解决其他不支持PATHINFO的WEB服务器环境。</p></blockquote><p>如果你的应用安装在二级目录，<code>Nginx</code>的伪静态方法设置如下，其中<code>youdomain</code>是所在的目录名称。</p><pre><code><span class=\"hljs-attribute\">location</span> /youdomain/ {\n    <span class=\"hljs-attribute\">if</span> (!-e <span class=\"hljs-variable\">$request_filename</span>){\n        <span class=\"hljs-attribute\">rewrite</span> <span class=\"hljs-regexp\"> ^/youdomain/(.*)$</span>  /youdomain/index.php?s=/<span class=\"hljs-variable\">$1</span>  <span class=\"hljs-literal\">last</span>;\n    }\n}\n</code></pre><p>原来的访问URL：</p><pre><code><span class=\"hljs-link\">http://serverName/index.php/模块/控制器/操作/</span>[<span class=\"hljs-string\">参数名/参数值...</span>]\n</code></pre><p>设置后，我们可以采用下面的方式访问：</p><pre><code><span class=\"hljs-link\">http://serverName/模块/控制器/操作/</span>[<span class=\"hljs-string\">参数名/参数值...</span>]\n</code></pre><p>如果你没有修改服务器的权限，可以在index.php入口文件做修改，这不是正确的做法，并且不一定成功，视服务器而定，只是在框架执行前补全$_SERVER[‘PATH_INFO’]参数</p><pre><code><span class=\"hljs-meta\">$</span><span class=\"bash\">_SERVER[<span class=\"hljs-string\">\'PATH_INFO\'</span>] = <span class=\"hljs-variable\">$_SERVER</span>[<span class=\"hljs-string\">\'REQUEST_URI\'</span> ];</span></code></pre>','0',2,1,0,'',0,0,869,1499764536,1500368732,'《ThinkPHP5.0路由完全指南》','','');
INSERT INTO `clt_article` VALUES (8,6,1,'admin','position属性absolute与relative','color:rgb(47, 64, 86);font-weight:bold;','','position属性absolute与relative,CLTPHP,CLTPHP内容管理系统,thinkphp,thinkphp内容管理系统','很多程序猿不清楚absolute与relative怎么区分，怎么用？我们都知道absolute是绝对定位，relative是相对定位，但是这个绝对 与相对是什么意思呢？','<p>很多朋友问过我absolute与relative怎么区分，怎么用？我们都知道absolute是绝对定位，relative是相对定位，但是这个绝对 与相对是什么意思呢？绝对是什么地方的绝对，相对又是相对于什么地方而言的呢？那他们又有什么样的特性，可以做出什么样的效果呢？关于两者之间又有什么样 的技巧呢？下面我们就来一一解读。<br></p><p></p><p>Absolute，CSS中的写法是：position:absolute; 他的意思是绝对定位，他是参照浏览器的左上角，配合TOP、RIGHT、BOTTOM、LEFT(下面简称TRBL)进行定位，在没有设定TRBL，默认 依据父级的做标原始点为原始点。如果设定TRBL并且父级没有设定position属性，那么当前的absolute则以浏览器左上角为原始点进行定位， 位置将由TRBL决定。</p><p><img src=\"http://www.blueidea.com/articleimg/2006/11/4249/absolute.gif\" alt=\"\"></p><p>一般来讲，网页居中的话用Absolute就容易出错，因为网页一直是随着分辨率的大小自动适应的，而Absolute则会以浏览器的左上角为原始 点，不会应为分辨率的变化而变化位置。很多人出错就在于这点上出错。而网页居左其特性与Relative很相似，但是还是有本质的区别的。</p><p>Relative，CSS中的写法是：position:relative;&nbsp; 他的意思是绝对相对定位，他是参照父级的原始点为原始点，无父级则以BODY的原始点为原始点，配合TRBL进行定位，当父级内有padding等CSS属性时，当前级的原始点则参照父级内容区的原始点进行定位。</p><p><img src=\"http://www.blueidea.com/articleimg/2006/11/4249/relative.gif\" alt=\"\"></p><p>有时我们还需要依靠z-index来设定容器的上下关系，数值越大越在最上面，数值范围是自然数。当然有一点要注意，父子关系是无法用z-index来设定上下关系的，一定是子级在上父级在下。</p><p>二 详解定位与定位应用&nbsp;<a href=\"http://blog.sina.com.cn/u/4bcf4a5e010008o0\">http://blog.sina.com.cn/u/4bcf4a5e010008o0</a></p><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"ke-zeroborder layui-table\"><tbody><tr><td id=\"labeltag\" align=\"center\" valign=\"top\" width=\"60\"></td><td><a href=\"http://search.blog.sina.com.cn/blog/search?q=css&amp;tag=n&amp;t=tag\" target=\"_blank\">css</a>&nbsp;<a href=\"http://search.blog.sina.com.cn/blog/search?q=%BE%F8%B6%D4%B6%A8%CE%BB&amp;tag=n&amp;t=tag\" target=\"_blank\">绝对定位</a>&nbsp;<a href=\"http://search.blog.sina.com.cn/blog/search?q=%CF%E0%B6%D4%B6%A8%CE%BB&amp;tag=n&amp;t=tag\" target=\"_blank\">相对定位</a></td></tr></tbody></table><div>&nbsp;&nbsp;&nbsp; 定位一直是WEB标准应用中的难点，如果理不清楚定位那么可能应实现的效果实现不了，实现了的效果可能会走样。如果理清了定位的原理，那定位会让网页实现的更加完美。</div><div><strong>&nbsp;&nbsp;&nbsp; 定位的定义：</strong><p>在CSS中关于定位的内容是：</p></div><div align=\"center\"><strong>position:relative | absolute | static | fixed</strong></div><div align=\"left\"><strong>&nbsp;&nbsp;&nbsp; static(静态)</strong>&nbsp;没有特别的设定，遵循基本的定位规定，不能通过z-index进行层次分级。<br><strong>&nbsp;&nbsp;&nbsp; relative(相对定位)</strong>&nbsp;对象不可层叠、不脱离文档流，参考自身静态位置通过 top,bottom,left,right 定位，并且可以通过z-index进行层次分级。<br><strong>absolute(绝对定位)</strong>&nbsp;脱离文档流，通过 top,bottom,left,right 定位。选取其最近一个最有定位设置的父级对象进行绝对定位，如果对象的父级没有设置定位属性，absolute元素将以body坐标原点进行定位，可以通过z-index进行层次分级。<br><strong>&nbsp;&nbsp;&nbsp; fixed（固定定位）</strong>&nbsp;这里所固定的参照对像是<strong>可视窗口</strong>而并非是body或是父级元素。可通过z-index进行层次分级。<br><strong>注</strong>：<br>CSS中定位的层叠分级：<strong>z-index: auto | namber;</strong><p><strong>auto</strong>&nbsp;遵从其父对象的定位<br><strong>namber</strong>&nbsp;&nbsp;无单位的整数值。可为负数</p></div><div align=\"left\"><strong>定位的原理：</strong><p>1.可以位移的元素 （相对定位）</p><p>在本文流中，任何一个元素都被文本流所限制了自身的位置，但是通过CSS我们依然使得这些元素可以改变自己的位置，我们可以通过float来让元素浮 动，也可以通过margin来让元素产生位置移动。但事实上那并非是真实的位移，因为，那只是通过加大margin值来实现的障眼法。而真正意义上的位移 是通过top,right,bottom,left（下称TRBL，TRBL可以折分使用。）针对一个相对定位的元素所产生的。我们看下面的图：</p></div><div align=\"left\">我们看图中是一个相对定位的元素</div><pre class=\"prettyprint lang-css\"><span class=\"com\">#first {</span><span class=\"pln\">\nwidth</span><span class=\"pun\">:</span><span class=\"lit\">200px</span><span class=\"pun\">;</span><span class=\"pln\">\nheight</span><span class=\"pun\">:</span><span class=\"pln\"> </span><span class=\"lit\">50px</span><span class=\"pun\">;</span><span class=\"pln\">\nmargin</span><span class=\"pun\">:</span><span class=\"lit\">25px</span><span class=\"pun\">;</span><span class=\"pln\">\nborder</span><span class=\"pun\">:</span><span class=\"lit\">25px</span><span class=\"pln\"> solid </span><span class=\"com\">#333;</span><span class=\"pln\">\npadding</span><span class=\"pun\">:</span><span class=\"lit\">25px</span><span class=\"pun\">;</span><span class=\"pln\">\nposition</span><span class=\"pun\">:</span><span class=\"pln\">relative</span><span class=\"pun\">;</span><span class=\"pln\">\ntop</span><span class=\"pun\">:</span><span class=\"pln\"> </span><span class=\"lit\">50px</span><span class=\"pun\">;</span><span class=\"pln\">\nleft</span><span class=\"pun\">:</span><span class=\"pln\"> </span><span class=\"lit\">50px</span><span class=\"pun\">;</span><span class=\"pln\">\n</span><span class=\"pun\">}</span></pre><p>而下方是一块默认定位的黑色区块<br></p><pre class=\"prettyprint lang-css\"><span class=\"com\">#second {</span><span class=\"pln\">\nwidth</span><span class=\"pun\">:</span><span class=\"lit\">400px</span><span class=\"pun\">;</span><span class=\"pln\">\nheight</span><span class=\"pun\">:</span><span class=\"lit\">75px</span><span class=\"pun\">;</span><span class=\"pln\">\nmargin</span><span class=\"pun\">:</span><span class=\"lit\">0</span><span class=\"pun\">;</span><span class=\"pln\">\nborder</span><span class=\"pun\">:</span><span class=\"lit\">0</span><span class=\"pun\">;</span><span class=\"pln\">\npadding</span><span class=\"pun\">:</span><span class=\"lit\">0</span><span class=\"pun\">;</span><span class=\"pln\">\nbackgroud</span><span class=\"pun\">-</span><span class=\"pln\">color</span><span class=\"pun\">:</span><span class=\"com\">#333;</span><span class=\"pln\">\n</span><span class=\"pun\">}</span></pre><div align=\"left\">我们看到这个处在文本流的区块被上面的相对定位挡住了一部分，这说明：“当元素被设置相对定位或是绝对定位后，将自动产生层叠，他们的层叠级别自然的高于 文本流”。除非设置其z-index值为负值。并且我们发现当相对定位元素进行位移后，表现内容已经脱离了文本流，只是在本文流中还为原来的相对对定位留 下了原有的总宽与总高（内容的高度或是宽度加上 margin\\border\\padding的数值）。这说明在相对定位中，虽然表现区脱离了原来的文本流，但是在文本流中还还有此相对定位的老窩。这点 要特别注意，因为在实际应用中如果相对定位的位移数值过大，那么原有的区域就会形成一块空白。</div><div align=\"left\">&nbsp;&nbsp;&nbsp; 并且我们注意，定位元素的坐标点是在margin值的左上边缘点，即图中的B点。那么所有的位移的计算将以这个点为基础进行元素的推动。</div><p>2.可以在任意一个位置的元素（绝对定位）</p><p>如上所述：相对定位只可以在文本流中进行位置的上下左右的移动，同样存在一定的局限性，虽然他的表现区脱离了文本流，但是在文本流却依然为其保留了一席之 地，这就好比一个打工的人他到了外地，但是在老家依然有一个专属于他的位置，这个位置不随他的移动而改变。但是这样很明显就会空出一块空白来，如果希望文 本流抛弃这个部分就需要用到绝对定位。绝对定位不光脱离了文本流，而且在文本流中也不会给这个绝对定位元素留下专属空位。这就好比是一个工厂里的职位，如 果有一个工人走了自然会要有别的工人来填充这个位置。而移动出去的部分自然也就成为了自由体。绝对定位将可以通过TRBL来设置元素，使之处在任何一个位 置。在父层position属性为默认值时，TRBL的坐标原点以body的坐标原点为起始。</p><div align=\"left\">3.被关联的绝对定位<p>上面说的是单一的绝对定位，而在实际的应用中我们常常会需要用到一种特别的形式。即希望定位元素要有绝对定位的特性，但是又希望绝对定位的坐标原点可以固 定在网页中的某一个点，当这个点被移动时绝对位定元素能保证相对于这个原坐标的相对位置。也就是说需要这个绝对定位要跟着网页移动，而并且是因定在网页的 某一个固定位置。通常当网页是居中形式的时候这种效果就会显得特别的重要。要实现这种效果基本方式就是为这个绝对定位的父级设置为相对定位或是绝对定位。 那么绝对定位的坐标就会以父级为坐标起始点。</p><p>虽然是如此，但是这个坐标原点却并不是父级的坐标原点，这是一个很奇怪的坐标位置。我们看一下模型图示：</p></div><div align=\"left\"><p align=\"left\">我们看到，这个图中父级为黑灰色区块，子级为青色区块。父级是相对定位，子级是绝对定位。子级 设置了顶部位移50个像素，左倾位移50个像素。那么我们看，子级的坐标原点并不是从父级的坐标原点位移50个像素，而是从父级块的padding左上边 缘点为坐标起始点（即A 点）。而父级这里如果要产生位置移动，或是浏览器窗口大小有所变动都不会影响到这个绝对定位元素与父级的相对定位元素之间的位置关系。这个子级也不用调整 数值。</p><p>这是一种很特别并且也是非常实用的应用方式。如果你之前对于定位的控制并不自如的话，相信看完对这里对定位的解释一定可以把定位使用得随心所欲。</p><p>4.总在视线里的元素 （固定定位）</p><p><strong>&nbsp;&nbsp;&nbsp; position:fixed</strong>; 他的含义就是：固定定位。这个固定与绝对定位很像，唯一不同的是绝对定位是被固定在网页中的某一个位置，而固定定位则是固定在浏览器的视框位置。</p></div>','0',2,1,0,'',0,0,286,1499764652,1499916156,'够过瘾——挨踢男的葵花宝典','','');
INSERT INTO `clt_article` VALUES (9,6,1,'admin','PHP实现长文章分页','color:rgb(57, 61, 73);font-weight:bold;','','PHP实现长文章分页,CLTPHP,CLTPHP内容管理系统,thinkphp,thinkphp内容管理系统','cltphp,当文章内容特长时，为了方便阅读和页面展示我们一般将内容分页来显示，如织梦CMS。而一般分页处理是在后台发布文章的时候就将提交的内容生成多个分页后的静态文件。本文我们结合实例来讲解采用PHP动态将长文章内容进行分页处理。','<h4>如何分页</h4><p>手动分页：一般在编辑内容时加入特殊分页标记，如{pages}，提交后，PHP程序会根据分页符处理分页，生成不同的静态页面。这种分页方法分页准确，但是需要人工手动添加分页符，工作量大。</p><p>自动分页：PHP程序会根据设置好的分页符将内容进行分页，然后生成不同的静态页面。该方法效率高，对处理不同的html代码标签要求高。</p><p>前端JS分页：使用Javascript将长文章内容截取分段，根据请求展示不同的分段内容，达到分页效果。这种方法一次将内容读取，由前端js处理分页，体验好。</p><p>本文实例代码讲解的是采用PHP将长文章内容分页，可以自动和手动分页。至于生成静态html页面不在本文讲解范围内，后面我们会专门讲解生成静态方面的文章介绍。</p><h4>分页类</h4><pre class=\"prettyprint lang-php\"><span class=\"pun\"><span class=\"pln\">php     \n</span><span class=\"com\">/*   \n*  长文章分页类      \n*/</span><span class=\"pln\">   \n    </span><span class=\"kwd\">class</span><span class=\"pln\"> cutpage</span><span class=\"pun\">{</span><span class=\"pln\">     \n        </span><span class=\"kwd\">private</span><span class=\"pln\"> $pagestr</span><span class=\"pun\">;</span><span class=\"pln\">       </span><span class=\"com\">//被切分的内容     </span><span class=\"pln\">\n        </span><span class=\"kwd\">private</span><span class=\"pln\"> $pagearr</span><span class=\"pun\">;</span><span class=\"pln\">       </span><span class=\"com\">//被切分文字的数组格式     </span><span class=\"pln\">\n        </span><span class=\"kwd\">private</span><span class=\"pln\"> $sum_word</span><span class=\"pun\">;</span><span class=\"pln\">      </span><span class=\"com\">//总字数(UTF-8格式的中文字符也包括)     </span><span class=\"pln\">\n        </span><span class=\"kwd\">private</span><span class=\"pln\"> $sum_page</span><span class=\"pun\">;</span><span class=\"pln\">      </span><span class=\"com\">//总页数     </span><span class=\"pln\">\n        </span><span class=\"kwd\">private</span><span class=\"pln\"> $page_word</span><span class=\"pun\">;</span><span class=\"pln\">     </span><span class=\"com\">//一页多少字     </span><span class=\"pln\">\n        </span><span class=\"kwd\">private</span><span class=\"pln\"> $cut_tag</span><span class=\"pun\">;</span><span class=\"pln\">       </span><span class=\"com\">//自动分页符     </span><span class=\"pln\">\n        </span><span class=\"kwd\">private</span><span class=\"pln\"> $cut_custom</span><span class=\"pun\">;</span><span class=\"pln\">    </span><span class=\"com\">//手动分页符     </span><span class=\"pln\">\n        </span><span class=\"kwd\">private</span><span class=\"pln\"> $ipage</span><span class=\"pun\">;</span><span class=\"pln\">         </span><span class=\"com\">//当前切分的页数，第几页     </span><span class=\"pln\">\n        </span><span class=\"kwd\">private</span><span class=\"pln\"> $url</span><span class=\"pun\">;</span><span class=\"pln\">     \n         \n        </span><span class=\"kwd\">function</span><span class=\"pln\"> __construct</span><span class=\"pun\">(</span><span class=\"pln\">$pagestr</span><span class=\"pun\">,</span><span class=\"pln\">$page_word</span><span class=\"pun\">=</span><span class=\"lit\">1000</span><span class=\"pun\">){</span><span class=\"pln\">     \n            $this</span><span class=\"pun\">-&gt;</span><span class=\"pln\">page_word </span><span class=\"pun\">=</span><span class=\"pln\"> $page_word</span><span class=\"pun\">;</span><span class=\"pln\">     \n            $this</span><span class=\"pun\">-&gt;</span><span class=\"pln\">cut_tag </span><span class=\"pun\">=</span><span class=\"pln\"> array</span><span class=\"pun\">(</span><span class=\"str\">\"\"</span><span class=\"pun\">,</span><span class=\"pln\"> </span><span class=\"str\">\"\"</span><span class=\"pun\">,</span><span class=\"pln\"> </span><span class=\"str\">\"<p></p>\"</span><span class=\"pun\">,</span><span class=\"pln\"> </span><span class=\"str\">\"<br>\"</span><span class=\"pun\">,</span><span class=\"pln\"> </span><span class=\"str\">\"”。\"</span><span class=\"pun\">,</span><span class=\"pln\"> </span><span class=\"str\">\"。\"</span><span class=\"pun\">,</span><span class=\"pln\"> </span><span class=\"str\">\".\"</span><span class=\"pun\">,</span><span class=\"pln\"> </span><span class=\"str\">\"！\"</span><span class=\"pun\">,</span><span class=\"pln\"> </span><span class=\"str\">\"……\"</span><span class=\"pun\">,</span><span class=\"pln\"> </span><span class=\"str\">\"？\"</span><span class=\"pun\">,</span><span class=\"pln\"> </span><span class=\"str\">\",\"</span><span class=\"pun\">);</span><span class=\"pln\">     \n            $this</span><span class=\"pun\">-&gt;</span><span class=\"pln\">cut_custom </span><span class=\"pun\">=</span><span class=\"pln\"> </span><span class=\"str\">\"{nextpage}\"</span><span class=\"pun\">;</span><span class=\"pln\">     \n            $tmp_page </span><span class=\"pun\">=</span><span class=\"pln\"> intval</span><span class=\"pun\">(</span><span class=\"pln\">trim</span><span class=\"pun\">(</span><span class=\"pln\">$_GET</span><span class=\"pun\">[</span><span class=\"str\">\"ipage\"</span><span class=\"pun\">]));</span><span class=\"pln\">     \n            $this</span><span class=\"pun\">-&gt;</span><span class=\"pln\">ipage </span><span class=\"pun\">=</span><span class=\"pln\"> $tmp_page</span><span class=\"pun\">&gt;</span><span class=\"lit\">1</span><span class=\"pun\">?</span><span class=\"pln\">$tmp_page</span><span class=\"pun\">:</span><span class=\"lit\">1</span><span class=\"pun\">;</span><span class=\"pln\">  \n            $this</span><span class=\"pun\">-&gt;</span><span class=\"pln\">pagestr </span><span class=\"pun\">=</span><span class=\"pln\"> $pagestr</span><span class=\"pun\">;</span><span class=\"pln\"> \n        </span><span class=\"pun\">}</span><span class=\"pln\">     \n         \n        </span><span class=\"kwd\">function</span><span class=\"pln\"> cut_str</span><span class=\"pun\">(){</span><span class=\"pln\">     \n            $str_len_word </span><span class=\"pun\">=</span><span class=\"pln\"> strlen</span><span class=\"pun\">(</span><span class=\"pln\">$this</span><span class=\"pun\">-&gt;</span><span class=\"pln\">pagestr</span><span class=\"pun\">);</span><span class=\"pln\">     </span><span class=\"com\">//获取使用strlen得到的字符总数     </span><span class=\"pln\">\n            $i </span><span class=\"pun\">=</span><span class=\"pln\"> </span><span class=\"lit\">0</span><span class=\"pun\">;</span><span class=\"pln\">     \n            </span><span class=\"kwd\">if</span><span class=\"pln\"> </span><span class=\"pun\">(</span><span class=\"pln\">$str_len_word</span><span class=\"pun\">&lt;=</span><span class=\"pln\">$this</span><span class=\"pun\">-&gt;</span><span class=\"pln\">page_word</span><span class=\"pun\">){</span><span class=\"pln\">   </span><span class=\"com\">//如果总字数小于一页显示字数     </span><span class=\"pln\">\n                $page_arr</span><span class=\"pun\">[</span><span class=\"pln\">$i</span><span class=\"pun\">]</span><span class=\"pln\"> </span><span class=\"pun\">=</span><span class=\"pln\"> $this</span><span class=\"pun\">-&gt;</span><span class=\"pln\">pagestr</span><span class=\"pun\">;</span><span class=\"pln\">     \n            </span><span class=\"pun\">}</span><span class=\"kwd\">else</span><span class=\"pun\">{</span><span class=\"pln\">     \n                </span><span class=\"kwd\">if</span><span class=\"pln\"> </span><span class=\"pun\">(</span><span class=\"pln\">strpos</span><span class=\"pun\">(</span><span class=\"pln\">$this</span><span class=\"pun\">-&gt;</span><span class=\"pln\">pagestr</span><span class=\"pun\">,</span><span class=\"pln\"> $this</span><span class=\"pun\">-&gt;</span><span class=\"pln\">cut_custom</span><span class=\"pun\">)){</span><span class=\"pln\">     \n                    $page_arr </span><span class=\"pun\">=</span><span class=\"pln\"> explode</span><span class=\"pun\">(</span><span class=\"pln\">$this</span><span class=\"pun\">-&gt;</span><span class=\"pln\">cut_custom</span><span class=\"pun\">,</span><span class=\"pln\"> $this</span><span class=\"pun\">-&gt;</span><span class=\"pln\">pagestr</span><span class=\"pun\">);</span><span class=\"pln\">     \n                </span><span class=\"pun\">}</span><span class=\"kwd\">else</span><span class=\"pun\">{</span><span class=\"pln\">     \n                    $str_first </span><span class=\"pun\">=</span><span class=\"pln\"> substr</span><span class=\"pun\">(</span><span class=\"pln\">$this</span><span class=\"pun\">-&gt;</span><span class=\"pln\">pagestr</span><span class=\"pun\">,</span><span class=\"pln\"> </span><span class=\"lit\">0</span><span class=\"pun\">,</span><span class=\"pln\"> $this</span><span class=\"pun\">-&gt;</span><span class=\"pln\">page_word</span><span class=\"pun\">);</span><span class=\"pln\">   </span><span class=\"com\">//0-page_word个文字    cutStr为func.global中的函数     </span><span class=\"pln\">\n                    </span><span class=\"kwd\">foreach</span><span class=\"pln\"> </span><span class=\"pun\">(</span><span class=\"pln\">$this</span><span class=\"pun\">-&gt;</span><span class=\"pln\">cut_tag </span><span class=\"kwd\">as</span><span class=\"pln\"> $v</span><span class=\"pun\">){</span><span class=\"pln\">     \n                        $cut_start </span><span class=\"pun\">=</span><span class=\"pln\"> strrpos</span><span class=\"pun\">(</span><span class=\"pln\">$str_first</span><span class=\"pun\">,</span><span class=\"pln\"> $v</span><span class=\"pun\">);</span><span class=\"pln\">       </span><span class=\"com\">//逆向查找第一个分页符的位置     </span><span class=\"pln\">\n                        </span><span class=\"kwd\">if</span><span class=\"pln\"> </span><span class=\"pun\">(</span><span class=\"pln\">$cut_start</span><span class=\"pun\">){</span><span class=\"pln\">     \n                            $page_arr</span><span class=\"pun\">[</span><span class=\"pln\">$i</span><span class=\"pun\">++]</span><span class=\"pln\"> </span><span class=\"pun\">=</span><span class=\"pln\"> substr</span><span class=\"pun\">(</span><span class=\"pln\">$this</span><span class=\"pun\">-&gt;</span><span class=\"pln\">pagestr</span><span class=\"pun\">,</span><span class=\"pln\"> </span><span class=\"lit\">0</span><span class=\"pun\">,</span><span class=\"pln\"> $cut_start</span><span class=\"pun\">).</span><span class=\"pln\">$v</span><span class=\"pun\">;</span><span class=\"pln\">     \n                            $cut_start </span><span class=\"pun\">=</span><span class=\"pln\"> $cut_start </span><span class=\"pun\">+</span><span class=\"pln\"> strlen</span><span class=\"pun\">(</span><span class=\"pln\">$v</span><span class=\"pun\">);</span><span class=\"pln\">     \n                            </span><span class=\"kwd\">break</span><span class=\"pun\">;</span><span class=\"pln\">     \n                        </span><span class=\"pun\">}</span><span class=\"pln\">     \n                    </span><span class=\"pun\">}</span><span class=\"pln\">     \n                    </span><span class=\"kwd\">if</span><span class=\"pln\"> </span><span class=\"pun\">((</span><span class=\"pln\">$cut_start</span><span class=\"pun\">+</span><span class=\"pln\">$this</span><span class=\"pun\">-&gt;</span><span class=\"pln\">page_word</span><span class=\"pun\">)&gt;=</span><span class=\"pln\">$str_len_word</span><span class=\"pun\">){</span><span class=\"pln\">  </span><span class=\"com\">//如果超过总字数     </span><span class=\"pln\">\n                        $page_arr</span><span class=\"pun\">[</span><span class=\"pln\">$i</span><span class=\"pun\">++]</span><span class=\"pln\"> </span><span class=\"pun\">=</span><span class=\"pln\"> substr</span><span class=\"pun\">(</span><span class=\"pln\">$this</span><span class=\"pun\">-&gt;</span><span class=\"pln\">pagestr</span><span class=\"pun\">,</span><span class=\"pln\"> $cut_start</span><span class=\"pun\">,</span><span class=\"pln\"> $this</span><span class=\"pun\">-&gt;</span><span class=\"pln\">page_word</span><span class=\"pun\">);</span><span class=\"pln\">     \n                    </span><span class=\"pun\">}</span><span class=\"kwd\">else</span><span class=\"pun\">{</span><span class=\"pln\">     \n                        </span><span class=\"kwd\">while</span><span class=\"pln\"> </span><span class=\"pun\">((</span><span class=\"pln\">$cut_start</span><span class=\"pun\">+</span><span class=\"pln\">$this</span><span class=\"pun\">-&gt;</span><span class=\"pln\">page_word</span><span class=\"pun\">)&lt;</span><span class=\"pln\">$str_len_word</span><span class=\"pun\">){</span><span class=\"pln\">     \n                            </span><span class=\"kwd\">foreach</span><span class=\"pln\"> </span><span class=\"pun\">(</span><span class=\"pln\">$this</span><span class=\"pun\">-&gt;</span><span class=\"pln\">cut_tag </span><span class=\"kwd\">as</span><span class=\"pln\"> $v</span><span class=\"pun\">){</span><span class=\"pln\">     \n                                $str_tmp </span><span class=\"pun\">=</span><span class=\"pln\"> substr</span><span class=\"pun\">(</span><span class=\"pln\">$this</span><span class=\"pun\">-&gt;</span><span class=\"pln\">pagestr</span><span class=\"pun\">,</span><span class=\"pln\"> $cut_start</span><span class=\"pun\">,</span><span class=\"pln\"> $this</span><span class=\"pun\">-&gt;</span><span class=\"pln\">page_word</span><span class=\"pun\">);</span><span class=\"pln\">        </span><span class=\"com\">//取第cut_start个字后的page_word个字符     </span><span class=\"pln\">\n                                $cut_tmp </span><span class=\"pun\">=</span><span class=\"pln\"> strrpos</span><span class=\"pun\">(</span><span class=\"pln\">$str_tmp</span><span class=\"pun\">,</span><span class=\"pln\"> $v</span><span class=\"pun\">);</span><span class=\"pln\">       </span><span class=\"com\">//找出从第cut_start个字之后，page_word个字之间，逆向查找第一个分页符的位置     </span><span class=\"pln\">\n                                </span><span class=\"kwd\">if</span><span class=\"pln\"> </span><span class=\"pun\">(</span><span class=\"pln\">$cut_tmp</span><span class=\"pun\">){</span><span class=\"pln\">     \n                                    $page_arr</span><span class=\"pun\">[</span><span class=\"pln\">$i</span><span class=\"pun\">++]</span><span class=\"pln\"> </span><span class=\"pun\">=</span><span class=\"pln\"> substr</span><span class=\"pun\">(</span><span class=\"pln\">$str_tmp</span><span class=\"pun\">,</span><span class=\"pln\"> </span><span class=\"lit\">0</span><span class=\"pun\">,</span><span class=\"pln\"> $cut_tmp</span><span class=\"pun\">).</span><span class=\"pln\">$v</span><span class=\"pun\">;</span><span class=\"pln\">     \n                                    $cut_start </span><span class=\"pun\">=</span><span class=\"pln\"> $cut_start </span><span class=\"pun\">+</span><span class=\"pln\"> $cut_tmp </span><span class=\"pun\">+</span><span class=\"pln\"> strlen</span><span class=\"pun\">(</span><span class=\"pln\">$v</span><span class=\"pun\">);</span><span class=\"pln\">     \n                                    </span><span class=\"kwd\">break</span><span class=\"pun\">;</span><span class=\"pln\">     \n                                </span><span class=\"pun\">}</span><span class=\"pln\">     \n                            </span><span class=\"pun\">}</span><span class=\"pln\">       \n                        </span><span class=\"pun\">}</span><span class=\"pln\">     \n                        </span><span class=\"kwd\">if</span><span class=\"pln\"> </span><span class=\"pun\">((</span><span class=\"pln\">$cut_start</span><span class=\"pun\">+</span><span class=\"pln\">$this</span><span class=\"pun\">-&gt;</span><span class=\"pln\">page_word</span><span class=\"pun\">)&gt;</span><span class=\"pln\">$str_len_word</span><span class=\"pun\">){</span><span class=\"pln\">     \n                            $page_arr</span><span class=\"pun\">[</span><span class=\"pln\">$i</span><span class=\"pun\">++]</span><span class=\"pln\"> </span><span class=\"pun\">=</span><span class=\"pln\"> substr</span><span class=\"pun\">(</span><span class=\"pln\">$this</span><span class=\"pun\">-&gt;</span><span class=\"pln\">pagestr</span><span class=\"pun\">,</span><span class=\"pln\"> $cut_start</span><span class=\"pun\">,</span><span class=\"pln\"> $this</span><span class=\"pun\">-&gt;</span><span class=\"pln\">page_word</span><span class=\"pun\">);</span><span class=\"pln\">     \n                        </span><span class=\"pun\">}</span><span class=\"pln\">     \n                    </span><span class=\"pun\">}</span><span class=\"pln\">     \n                </span><span class=\"pun\">}</span><span class=\"pln\">     \n            </span><span class=\"pun\">}</span><span class=\"pln\">     \n            $this</span><span class=\"pun\">-&gt;</span><span class=\"pln\">sum_page </span><span class=\"pun\">=</span><span class=\"pln\"> count</span><span class=\"pun\">(</span><span class=\"pln\">$page_arr</span><span class=\"pun\">);</span><span class=\"pln\">     </span><span class=\"com\">//总页数     </span><span class=\"pln\">\n            $this</span><span class=\"pun\">-&gt;</span><span class=\"pln\">pagearr </span><span class=\"pun\">=</span><span class=\"pln\"> $page_arr</span><span class=\"pun\">;</span><span class=\"pln\">   \n            </span><span class=\"kwd\">return</span><span class=\"pln\"> $page_arr</span><span class=\"pun\">;</span><span class=\"pln\"> \n        </span><span class=\"pun\">}</span><span class=\"pln\">     \n        </span><span class=\"com\">//显示上一条，下一条     </span><span class=\"pln\">\n        </span><span class=\"kwd\">function</span><span class=\"pln\"> pagenav</span><span class=\"pun\">(){</span><span class=\"pln\">     \n            $this</span><span class=\"pun\">-&gt;</span><span class=\"pln\">set_url</span><span class=\"pun\">();</span><span class=\"pln\">     \n            $str </span><span class=\"pun\">=</span><span class=\"pln\"> </span><span class=\"str\">\'\'</span><span class=\"pun\">;</span><span class=\"pln\"> \n             \n            </span><span class=\"com\">//$str .= $this-&gt;ipage.\'/\'.$this-&gt;sum_page; </span><span class=\"pln\">\n             \n            </span><span class=\"kwd\">for</span><span class=\"pun\">(</span><span class=\"pln\">$i</span><span class=\"pun\">=</span><span class=\"lit\">1</span><span class=\"pun\">;</span><span class=\"pln\">$i</span><span class=\"pun\">&lt;=</span><span class=\"pln\">$this</span><span class=\"pun\">-&gt;</span><span class=\"pln\">sum_page</span><span class=\"pun\">;</span><span class=\"pln\">$i</span><span class=\"pun\">++){</span><span class=\"pln\"> \n                </span><span class=\"kwd\">if</span><span class=\"pun\">(</span><span class=\"pln\">$i</span><span class=\"pun\">==</span><span class=\"pln\">$this</span><span class=\"pun\">-&gt;</span><span class=\"pln\">ipage</span><span class=\"pun\">)</span><span class=\"pln\"> </span><span class=\"pun\">{</span><span class=\"pln\"> \n                    $str</span><span class=\"pun\">.=</span><span class=\"pln\"> </span><span class=\"str\">\"<a href=\"http://cltphp.com/admin/article/edit.html?id=23&amp;catid=50#\" class=\"cur\">\"</a></span><a href=\"http://cltphp.com/admin/article/edit.html?id=23&amp;catid=50#\" class=\"cur\"><span class=\"pun\">.</span><span class=\"pln\">$i</span><span class=\"pun\">.</span><span class=\"str\">\"</span></a> \"</span><span class=\"pun\">;</span><span class=\"pln\"> \n                </span><span class=\"pun\">}</span><span class=\"kwd\">else</span><span class=\"pun\">{</span><span class=\"pln\"> \n                    $str</span><span class=\"pun\">.=</span><span class=\"pln\"> </span><span class=\"str\">\"<a href=\"http://cltphp.com/admin/article/edit.html?id=23&amp;catid=50\" <=\"\" span=\"\"><span class=\"pun\">.</span><span class=\"pln\">$this</span><span class=\"pun\">-&gt;</span><span class=\"pln\">url</span><span class=\"pun\">.</span><span class=\"pln\">$i</span><span class=\"pun\">.</span><span class=\"str\">\"\"&gt;\"</span></a></span><a href=\"http://cltphp.com/admin/article/edit.html?id=23&amp;catid=50\" <=\"\" span=\"\"><span class=\"pun\">.</span><span class=\"pln\">$this</span><span class=\"pun\">-&gt;</span><span class=\"pln\">url</span><span class=\"pun\">.</span><span class=\"pln\">$i</span><span class=\"pun\">.</span><span class=\"str\">\"\"&gt;<span class=\"pun\">.</span><span class=\"pln\">$i</span><span class=\"pun\">.</span><span class=\"str\">\"</span></span></a> \"<span class=\"pun\">;</span><span class=\"pln\"> \n                </span><span class=\"pun\">}</span><span class=\"pln\"> \n            </span><span class=\"pun\">}</span><span class=\"pln\"> \n             \n                    \n            </span><span class=\"kwd\">return</span><span class=\"pln\"> $str</span><span class=\"pun\">;</span><span class=\"pln\">     \n        </span><span class=\"pun\">}</span><span class=\"pln\">     \n           \n        </span><span class=\"kwd\">function</span><span class=\"pln\"> set_url</span><span class=\"pun\">(){</span><span class=\"pln\">     \n            parse_str</span><span class=\"pun\">(</span><span class=\"pln\">$_SERVER</span><span class=\"pun\">[</span><span class=\"str\">\"QUERY_STRING\"</span><span class=\"pun\">],</span><span class=\"pln\"> $arr_url</span><span class=\"pun\">);</span><span class=\"pln\">     \n            unset</span><span class=\"pun\">(</span><span class=\"pln\">$arr_url</span><span class=\"pun\">[</span><span class=\"str\">\"ipage\"</span><span class=\"pun\">]);</span><span class=\"pln\">     \n            </span><span class=\"kwd\">if</span><span class=\"pln\"> </span><span class=\"pun\">(</span><span class=\"pln\">empty</span><span class=\"pun\">(</span><span class=\"pln\">$arr_url</span><span class=\"pun\">)){</span><span class=\"pln\">     \n                $str </span><span class=\"pun\">=</span><span class=\"pln\"> </span><span class=\"str\">\"ipage=\"</span><span class=\"pun\">;</span><span class=\"pln\">     \n            </span><span class=\"pun\">}</span><span class=\"kwd\">else</span><span class=\"pun\">{</span><span class=\"pln\">     \n                $str </span><span class=\"pun\">=</span><span class=\"pln\"> http_build_query</span><span class=\"pun\">(</span><span class=\"pln\">$arr_url</span><span class=\"pun\">).</span><span class=\"str\">\"&amp;ipage=\"</span><span class=\"pun\">;</span><span class=\"pln\">     \n            </span><span class=\"pun\">}</span><span class=\"pln\">     \n            $this</span><span class=\"pun\">-&gt;</span><span class=\"pln\">url </span><span class=\"pun\">=</span><span class=\"pln\"> </span><span class=\"str\">\"http://\"</span><span class=\"pun\">.</span><span class=\"pln\">$_SERVER</span><span class=\"pun\">[</span><span class=\"str\">\"HTTP_HOST\"</span><span class=\"pun\">].</span><span class=\"pln\">$_SERVER</span><span class=\"pun\">[</span><span class=\"str\">\"PHP_SELF\"</span><span class=\"pun\">].</span><span class=\"str\">\"?\"</span><span class=\"pun\">.</span><span class=\"pln\">$str</span><span class=\"pun\">;</span><span class=\"pln\">     \n        </span><span class=\"pun\">}</span><span class=\"pln\">     \n    </span><span class=\"pun\">}</span><span class=\"pln\">     \n</span><span class=\"pun\">?&gt;</span><span class=\"pln\"> </span></pre><p>以上cutpage类可以非常好的处理内容分页，能处理不同html标签给分页带来的麻烦。如果内容设置了分页符{nextpage}，则会优先自动将内容按分页符分页。</p><h4>调用分页类</h4><p>我们假设读取了文件text.txt的文章内容，实际项目中应该是表单提交长内容或者读取数据库相关表的内容。然后实例化分页类，然后根据当前页调用对应分页的内容并输出，以及输出分页条。</p><pre class=\"prettyprint lang-php\"><span class=\"pun\"><span class=\"pln\">php \n$content </span><span class=\"pun\">=</span><span class=\"pln\"> file_get_contents</span><span class=\"pun\">(</span><span class=\"str\">\'text.txt\'</span><span class=\"pun\">);</span><span class=\"pln\">     \n    $ipage </span><span class=\"pun\">=</span><span class=\"pln\"> $_GET</span><span class=\"pun\">[</span><span class=\"str\">\"ipage\"</span><span class=\"pun\">]?</span><span class=\"pln\"> intval</span><span class=\"pun\">(</span><span class=\"pln\">$_GET</span><span class=\"pun\">[</span><span class=\"str\">\"ipage\"</span><span class=\"pun\">]):</span><span class=\"lit\">1</span><span class=\"pun\">;</span><span class=\"pln\">     \n    $CP </span><span class=\"pun\">=</span><span class=\"pln\"> </span><span class=\"kwd\">new</span><span class=\"pln\"> cutpage</span><span class=\"pun\">(</span><span class=\"pln\">$content</span><span class=\"pun\">);</span><span class=\"pln\">     \n    $page </span><span class=\"pun\">=</span><span class=\"pln\"> $CP</span><span class=\"pun\">-&gt;</span><span class=\"pln\">cut_str</span><span class=\"pun\">();</span><span class=\"pln\">   \n    echo $page</span><span class=\"pun\">[</span><span class=\"pln\">$ipage</span><span class=\"pun\">-</span><span class=\"lit\">1</span><span class=\"pun\">];</span><span class=\"pln\">    \n    echo $CP</span><span class=\"pun\">-&gt;</span><span class=\"pln\">pagenav</span><span class=\"pun\">();</span><span class=\"pln\"> \n</span><span class=\"pun\">?&gt;</span><span class=\"pln\"> </span></span></pre><p>值得注意的是，使用统一UTF-8的文件编码，会让你的编码工作更加顺畅。</p>','0',2,1,0,'',0,0,310,1499764826,1499916131,'够过瘾——挨踢男的葵花宝典','','');
INSERT INTO `clt_article` VALUES (10,6,1,'admin','PHP 汉字转拼音函数','color:rgb(0, 150, 136);font-weight:bold;','','PHP 汉字转拼音函数,CLTPHP,CLTPHP内容管理系统,thinkphp,thinkphp内容管理系统','PHP 汉字转拼音函数,CLTPHP,CLTPHP内容管理系统,thinkphp,thinkphp内容管理系统','<p><pre><span>function </span><span>Pinyin</span><span>(</span><span>$_String</span><span>, </span><span>$_Code</span><span>=</span><span>\'UTF8\'</span><span>){ </span><span>//GBK页面可改为gb2312，其他随意填写为UTF8<br></span><span>    </span><span>$_DataKey </span><span>= </span><span>\"a|ai|an|ang|ao|ba|bai|ban|bang|bao|bei|ben|beng|bi|bian|biao|bie|bin|bing|bo|bu|ca|cai|can|cang|cao|ce|ceng|cha\"</span><span>.<br></span><span>        </span><span>\"|chai|chan|chang|chao|che|chen|cheng|chi|chong|chou|chu|chuai|chuan|chuang|chui|chun|chuo|ci|cong|cou|cu|\"</span><span>.<br></span><span>        </span><span>\"cuan|cui|cun|cuo|da|dai|dan|dang|dao|de|deng|di|dian|diao|die|ding|diu|dong|dou|du|duan|dui|dun|duo|e|en|er\"</span><span>.<br></span><span>        </span><span>\"|fa|fan|fang|fei|fen|feng|fo|fou|fu|ga|gai|gan|gang|gao|ge|gei|gen|geng|gong|gou|gu|gua|guai|guan|guang|gui\"</span><span>.<br></span><span>        </span><span>\"|gun|guo|ha|hai|han|hang|hao|he|hei|hen|heng|hong|hou|hu|hua|huai|huan|huang|hui|hun|huo|ji|jia|jian|jiang\"</span><span>.<br></span><span>        </span><span>\"|jiao|jie|jin|jing|jiong|jiu|ju|juan|jue|jun|ka|kai|kan|kang|kao|ke|ken|keng|kong|kou|ku|kua|kuai|kuan|kuang\"</span><span>.<br></span><span>        </span><span>\"|kui|kun|kuo|la|lai|lan|lang|lao|le|lei|leng|li|lia|lian|liang|liao|lie|lin|ling|liu|long|lou|lu|lv|luan|lue\"</span><span>.<br></span><span>        </span><span>\"|lun|luo|ma|mai|man|mang|mao|me|mei|men|meng|mi|mian|miao|mie|min|ming|miu|mo|mou|mu|na|nai|nan|nang|nao|ne\"</span><span>.<br></span><span>        </span><span>\"|nei|nen|neng|ni|nian|niang|niao|nie|nin|ning|niu|nong|nu|nv|nuan|nue|nuo|o|ou|pa|pai|pan|pang|pao|pei|pen\"</span><span>.<br></span><span>        </span><span>\"|peng|pi|pian|piao|pie|pin|ping|po|pu|qi|qia|qian|qiang|qiao|qie|qin|qing|qiong|qiu|qu|quan|que|qun|ran|rang\"</span><span>.<br></span><span>        </span><span>\"|rao|re|ren|reng|ri|rong|rou|ru|ruan|rui|run|ruo|sa|sai|san|sang|sao|se|sen|seng|sha|shai|shan|shang|shao|\"</span><span>.<br></span><span>        </span><span>\"she|shen|sheng|shi|shou|shu|shua|shuai|shuan|shuang|shui|shun|shuo|si|song|sou|su|suan|sui|sun|suo|ta|tai|\"</span><span>.<br></span><span>        </span><span>\"tan|tang|tao|te|teng|ti|tian|tiao|tie|ting|tong|tou|tu|tuan|tui|tun|tuo|wa|wai|wan|wang|wei|wen|weng|wo|wu\"</span><span>.<br></span><span>        </span><span>\"|xi|xia|xian|xiang|xiao|xie|xin|xing|xiong|xiu|xu|xuan|xue|xun|ya|yan|yang|yao|ye|yi|yin|ying|yo|yong|you\"</span><span>.<br></span><span>        </span><span>\"|yu|yuan|yue|yun|za|zai|zan|zang|zao|ze|zei|zen|zeng|zha|zhai|zhan|zhang|zhao|zhe|zhen|zheng|zhi|zhong|\"</span><span>.<br></span><span>        </span><span>\"zhou|zhu|zhua|zhuai|zhuan|zhuang|zhui|zhun|zhuo|zi|zong|zou|zu|zuan|zui|zun|zuo\"</span><span>;<br></span><span>    </span><span>$_DataValue </span><span>= </span><span>\"-20319|-20317|-20304|-20295|-20292|-20283|-20265|-20257|-20242|-20230|-20051|-20036|-20032|-20026|-20002|-19990\"</span><span>.<br></span><span>        </span><span>\"|-19986|-19982|-19976|-19805|-19784|-19775|-19774|-19763|-19756|-19751|-19746|-19741|-19739|-19728|-19725\"</span><span>.<br></span><span>        </span><span>\"|-19715|-19540|-19531|-19525|-19515|-19500|-19484|-19479|-19467|-19289|-19288|-19281|-19275|-19270|-19263\"</span><span>.<br></span><span>        </span><span>\"|-19261|-19249|-19243|-19242|-19238|-19235|-19227|-19224|-19218|-19212|-19038|-19023|-19018|-19006|-19003\"</span><span>.<br></span><span>        </span><span>\"|-18996|-18977|-18961|-18952|-18783|-18774|-18773|-18763|-18756|-18741|-18735|-18731|-18722|-18710|-18697\"</span><span>.<br></span><span>        </span><span>\"|-18696|-18526|-18518|-18501|-18490|-18478|-18463|-18448|-18447|-18446|-18239|-18237|-18231|-18220|-18211\"</span><span>.<br></span><span>        </span><span>\"|-18201|-18184|-18183|-18181|-18012|-17997|-17988|-17970|-17964|-17961|-17950|-17947|-17931|-17928|-17922\"</span><span>.<br></span><span>        </span><span>\"|-17759|-17752|-17733|-17730|-17721|-17703|-17701|-17697|-17692|-17683|-17676|-17496|-17487|-17482|-17468\"</span><span>.<br></span><span>        </span><span>\"|-17454|-17433|-17427|-17417|-17202|-17185|-16983|-16970|-16942|-16915|-16733|-16708|-16706|-16689|-16664\"</span><span>.<br></span><span>        </span><span>\"|-16657|-16647|-16474|-16470|-16465|-16459|-16452|-16448|-16433|-16429|-16427|-16423|-16419|-16412|-16407\"</span><span>.<br></span><span>        </span><span>\"|-16403|-16401|-16393|-16220|-16216|-16212|-16205|-16202|-16187|-16180|-16171|-16169|-16158|-16155|-15959\"</span><span>.<br></span><span>        </span><span>\"|-15958|-15944|-15933|-15920|-15915|-15903|-15889|-15878|-15707|-15701|-15681|-15667|-15661|-15659|-15652\"</span><span>.<br></span><span>        </span><span>\"|-15640|-15631|-15625|-15454|-15448|-15436|-15435|-15419|-15416|-15408|-15394|-15385|-15377|-15375|-15369\"</span><span>.<br></span><span>        </span><span>\"|-15363|-15362|-15183|-15180|-15165|-15158|-15153|-15150|-15149|-15144|-15143|-15141|-15140|-15139|-15128\"</span><span>.<br></span><span>        </span><span>\"|-15121|-15119|-15117|-15110|-15109|-14941|-14937|-14933|-14930|-14929|-14928|-14926|-14922|-14921|-14914\"</span><span>.<br></span><span>        </span><span>\"|-14908|-14902|-14894|-14889|-14882|-14873|-14871|-14857|-14678|-14674|-14670|-14668|-14663|-14654|-14645\"</span><span>.<br></span><span>        </span><span>\"|-14630|-14594|-14429|-14407|-14399|-14384|-14379|-14368|-14355|-14353|-14345|-14170|-14159|-14151|-14149\"</span><span>.<br></span><span>        </span><span>\"|-14145|-14140|-14137|-14135|-14125|-14123|-14122|-14112|-14109|-14099|-14097|-14094|-14092|-14090|-14087\"</span><span>.<br></span><span>        </span><span>\"|-14083|-13917|-13914|-13910|-13907|-13906|-13905|-13896|-13894|-13878|-13870|-13859|-13847|-13831|-13658\"</span><span>.<br></span><span>        </span><span>\"|-13611|-13601|-13406|-13404|-13400|-13398|-13395|-13391|-13387|-13383|-13367|-13359|-13356|-13343|-13340\"</span><span>.<br></span><span>        </span><span>\"|-13329|-13326|-13318|-13147|-13138|-13120|-13107|-13096|-13095|-13091|-13076|-13068|-13063|-13060|-12888\"</span><span>.<br></span><span>        </span><span>\"|-12875|-12871|-12860|-12858|-12852|-12849|-12838|-12831|-12829|-12812|-12802|-12607|-12597|-12594|-12585\"</span><span>.<br></span><span>        </span><span>\"|-12556|-12359|-12346|-12320|-12300|-12120|-12099|-12089|-12074|-12067|-12058|-12039|-11867|-11861|-11847\"</span><span>.<br></span><span>        </span><span>\"|-11831|-11798|-11781|-11604|-11589|-11536|-11358|-11340|-11339|-11324|-11303|-11097|-11077|-11067|-11055\"</span><span>.<br></span><span>        </span><span>\"|-11052|-11045|-11041|-11038|-11024|-11020|-11019|-11018|-11014|-10838|-10832|-10815|-10800|-10790|-10780\"</span><span>.<br></span><span>        </span><span>\"|-10764|-10587|-10544|-10533|-10519|-10331|-10329|-10328|-10322|-10315|-10309|-10307|-10296|-10281|-10274\"</span><span>.<br></span><span>        </span><span>\"|-10270|-10262|-10260|-10256|-10254\"</span><span>;<br></span><span>    </span><span>$_TDataKey </span><span>= explode(</span><span>\'|\'</span><span>, </span><span>$_DataKey</span><span>)</span><span>;<br></span><span>    </span><span>$_TDataValue </span><span>= explode(</span><span>\'|\'</span><span>, </span><span>$_DataValue</span><span>)</span><span>;<br></span><span>    </span><span>$_Data </span><span>= array_combine(</span><span>$_TDataKey</span><span>, </span><span>$_TDataValue</span><span>)</span><span>;<br></span><span>    </span><span>arsort(</span><span>$_Data</span><span>)</span><span>;<br></span><span>    </span><span>reset(</span><span>$_Data</span><span>)</span><span>;<br></span><span>    </span><span>if</span><span>(</span><span>$_Code</span><span>!= </span><span>\'gb2312\'</span><span>) </span><span>$_String </span><span>= _U2_Utf8_Gb(</span><span>$_String</span><span>)</span><span>;<br></span><span>    </span><span>$_Res </span><span>= </span><span>\'\'</span><span>;<br></span><span>    </span><span>for</span><span>(</span><span>$i</span><span>=</span><span>0</span><span>; </span><span>$i$_P </span><span>= ord(substr(</span><span>$_String</span><span>, </span><span>$i</span><span>, </span><span>1</span><span>))</span><span>;<br></span><span>    </span><span>if</span><span>(</span><span>$_P</span><span>&gt;</span><span>160</span><span>) {<br></span><span>        </span><span>$_Q </span><span>= ord(substr(</span><span>$_String</span><span>, </span><span>++</span><span>$i</span><span>, </span><span>1</span><span>))</span><span>; </span><span>$_P </span><span>= </span><span>$_P</span><span>*</span><span>256 </span><span>+ </span><span>$_Q </span><span>- </span><span>65536</span><span>;<br></span><span>    </span><span>}<br></span><span>    </span><span>$_Res </span><span>.= _Pinyin(</span><span>$_P</span><span>, </span><span>$_Data</span><span>)</span><span>;<br></span><span>}<br></span><span>return </span><span>preg_replace(</span><span>\"/[^a-z0-9]*/\"</span><span>, </span><span>\'\'</span><span>, </span><span>$_Res</span><span>)</span><span>;<br></span><span>}<br></span><span>function </span><span>_Pinyin</span><span>(</span><span>$_Num</span><span>, </span><span>$_Data</span><span>){<br></span><span>    </span><span>if</span><span>(</span><span>$_Num</span><span>&gt;</span><span>0 </span><span>&amp;&amp; </span><span>$_Num</span><span>&lt;</span><span>160 </span><span>){<br></span><span>        </span><span>return </span><span>chr(</span><span>$_Num</span><span>)</span><span>;<br></span><span>    </span><span>}</span><span>elseif</span><span>(</span><span>$_Num</span><span>&lt;-</span><span>20319 </span><span>|| </span><span>$_Num</span><span>&gt;-</span><span>10247</span><span>){<br></span><span>        </span><span>return </span><span>\'\'</span><span>;<br></span><span>    </span><span>}</span><span>else</span><span>{<br></span><span>        </span><span>foreach</span><span>(</span><span>$_Data </span><span>as </span><span>$k</span><span>=&gt;</span><span>$v</span><span>){ </span><span>if</span><span>(</span><span>$v</span><span>&lt;=</span><span>$_Num</span><span>) </span><span>break</span><span>; </span><span>}<br></span><span>        </span><span>return </span><span>$k</span><span>;<br></span><span>    </span><span>}<br></span><span>}<br></span><span>function </span><span>_U2_Utf8_Gb</span><span>(</span><span>$_C</span><span>){<br></span><span>    </span><span>$_String </span><span>= </span><span>\'\'</span><span>;<br></span><span>    </span><span>if</span><span>(</span><span>$_C </span><span>&lt; </span><span>0x80</span><span>){<br></span><span>        </span><span>$_String </span><span>.= </span><span>$_C</span><span>;<br></span><span>    </span><span>}</span><span>elseif</span><span>(</span><span>$_C </span><span>&lt; </span><span>0x800</span><span>) {<br></span><span>        </span><span>$_String </span><span>.= chr(</span><span>0xC0 </span><span>| </span><span>$_C</span><span>&gt;&gt;</span><span>6</span><span>)</span><span>;<br></span><span>        </span><span>$_String </span><span>.= chr(</span><span>0x80 </span><span>| </span><span>$_C </span><span>&amp; </span><span>0x3F</span><span>)</span><span>;<br></span><span>    </span><span>}</span><span>elseif</span><span>(</span><span>$_C </span><span>&lt; </span><span>0x10000</span><span>){<br></span><span>        </span><span>$_String </span><span>.= chr(</span><span>0xE0 </span><span>| </span><span>$_C</span><span>&gt;&gt;</span><span>12</span><span>)</span><span>;<br></span><span>        </span><span>$_String </span><span>.= chr(</span><span>0x80 </span><span>| </span><span>$_C</span><span>&gt;&gt;</span><span>6 </span><span>&amp; </span><span>0x3F</span><span>)</span><span>;<br></span><span>        </span><span>$_String </span><span>.= chr(</span><span>0x80 </span><span>| </span><span>$_C </span><span>&amp; </span><span>0x3F</span><span>)</span><span>;<br></span><span>    </span><span>}</span><span>elseif</span><span>(</span><span>$_C </span><span>&lt; </span><span>0x200000</span><span>) {<br></span><span>        </span><span>$_String </span><span>.= chr(</span><span>0xF0 </span><span>| </span><span>$_C</span><span>&gt;&gt;</span><span>18</span><span>)</span><span>;<br></span><span>        </span><span>$_String </span><span>.= chr(</span><span>0x80 </span><span>| </span><span>$_C</span><span>&gt;&gt;</span><span>12 </span><span>&amp; </span><span>0x3F</span><span>)</span><span>;<br></span><span>        </span><span>$_String </span><span>.= chr(</span><span>0x80 </span><span>| </span><span>$_C</span><span>&gt;&gt;</span><span>6 </span><span>&amp; </span><span>0x3F</span><span>)</span><span>;<br></span><span>        </span><span>$_String </span><span>.= chr(</span><span>0x80 </span><span>| </span><span>$_C </span><span>&amp; </span><span>0x3F</span><span>)</span><span>;<br></span><span>    </span><span>}<br></span><span>    </span><span>return </span><span>iconv(</span><span>\'UTF-8\'</span><span>, </span><span>\'GB2312\'</span><span>, </span><span>$_String</span><span>)</span><span>;<br></span><span>}<br></span><span><br></span><span><br></span><span>//echo Pinyin(\'汉字\');<br></span><span>//测试<br></span><span>echo </span><span>Pinyin(</span><span>\'中文字\'</span><span>,</span><span>\'gb2312\'</span><span>)</span><span>; </span><span>//第二个参数“1”可随意设置即为utf8编码</span></pre></p><p><strlen($_string); $i++)=\"\" { <br=\"\"></strlen($_string);></p>','0',2,1,0,'1,2,3,4',0,0,741,1499828506,1501139662,'博客园','','');
INSERT INTO `clt_article` VALUES (11,5,1,'admin','CLTPHP4.3版本更新','color:rgb(255, 87, 34);font-weight:bold;','','CLTPHP4.3版本更新,CLTPHP,CLTPHP内容管理系统','CLTPHP4.3版本更新,CLTPHP,CLTPHP内容管理系统','<p>更新内容</p><p>1.后台模型建立重构</p><p>2.新增文件上传</p><p>3.更改标题样式和缩略图数据库存放方式</p><p>4.后台文章栏目标题样式添加</p><p>5.修改部分bug，删减了系统冗余内容</p><p><strong><em>注意：本次修改重构了模型，4.2及以前版本不可直接覆盖代码</em></strong></p><p>推荐环境：apache2.4+php5.5(以上)+mysql5.0(以上)</p><p>开发环境：phpStudy 2016 &nbsp;php5.5.38</p>','0',0,1,0,'',0,0,807,1499828638,1505264287,'CLTPHP','http://www.cltphp.com/','');
INSERT INTO `clt_article` VALUES (12,5,1,'admin','CLTPHP手册栏目管理更新，CLTPHP核心价值，尽在其中！','color:rgb(255, 87, 34);font-weight:bold;','','CLTPHP手册栏目管理更新，CLTPHP核心价值，尽在其中！','CLTPHP手册栏目管理更新，CLTPHP核心价值，尽在其中！','<p><a target=\"_self\" href=\"http://www.cltphp.com/\">CLTPHP</a>手册栏目管理更新，CLTPHP核心价值，尽在其中。</p><p>喜欢的朋友可以购买参考</p><p>同时希望CLTPHP的爱好者，可以给我提出更多CLTPHP的不足之处，让CLTPHP更健康的成长。</p><p>手册地址：https://www.kancloud.cn/chichu/cltphp/</p>','0',2,1,0,'',0,0,760,1500014331,1501031503,'CLTPHP','http://www.cltphp.com/','');
INSERT INTO `clt_article` VALUES (13,6,1,'admin','PHP获取客户端浏览器类型以及版本号','color:rgb(30, 159, 255);font-weight:bold;','','PHP获取客户端浏览器类型以及版本号','PHP获取客户端浏览器类型以及版本号','<article class=\"post-item clearfix\"><section class=\"post-entry\"><pre class=\"prettyprint lang-php\"><div class=\"line number1 index0 alt2\"><code class=\"php comments\">/**</code></div><div class=\"line number2 index1 alt1\"><code class=\"php spaces\">&nbsp;</code><code class=\"php comments\">*&nbsp;获取客户端浏览器类型</code></div><div class=\"line number3 index2 alt2\"><code class=\"php spaces\">&nbsp;</code><code class=\"php comments\">*&nbsp;@param&nbsp;&nbsp;string&nbsp;$glue&nbsp;浏览器类型和版本号之间的连接符</code></div><div class=\"line number4 index3 alt1\"><code class=\"php spaces\">&nbsp;</code><code class=\"php comments\">*&nbsp;@return&nbsp;string|array&nbsp;传递连接符则连接浏览器类型和版本号返回字符串否则直接返回数组&nbsp;false为未知浏览器类型</code></div><div class=\"line number5 index4 alt2\"><code class=\"php spaces\">&nbsp;</code><code class=\"php comments\">*/</code></div><div class=\"line number6 index5 alt1\"><code class=\"php spaces\">&nbsp;</code><code class=\"php keyword\">function</code>&nbsp;<code class=\"php plain\">get_client_browser(</code><code class=\"php variable\">$glue</code>&nbsp;<code class=\"php plain\">=&nbsp;null)&nbsp;{</code></div><div class=\"line number7 index6 alt2\"><code class=\"php spaces\">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class=\"php variable\">$browser</code>&nbsp;<code class=\"php plain\">=&nbsp;</code><code class=\"php keyword\">array</code><code class=\"php plain\">();</code></div><div class=\"line number8 index7 alt1\"><code class=\"php spaces\">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class=\"php variable\">$agent</code>&nbsp;<code class=\"php plain\">=&nbsp;</code><code class=\"php variable\">$_SERVER</code><code class=\"php plain\">[</code><code class=\"php string\">\'HTTP_USER_AGENT\'</code><code class=\"php plain\">];&nbsp;</code><code class=\"php comments\">//获取客户端信息</code></div><div class=\"line number9 index8 alt2\"><code class=\"php spaces\">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class=\"php comments\">/*&nbsp;定义浏览器特性正则表达式&nbsp;*/</code></div><div class=\"line number10 index9 alt1\"><code class=\"php spaces\">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class=\"php variable\">$regex</code>&nbsp;<code class=\"php plain\">=&nbsp;</code><code class=\"php keyword\">array</code><code class=\"php plain\">(</code></div><div class=\"line number11 index10 alt2\"><code class=\"php spaces\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class=\"php string\">\'ie\'</code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<code class=\"php plain\">=&gt;&nbsp;</code><code class=\"php string\">\'/(MSIE)&nbsp;(\\d+\\.\\d)/\'</code><code class=\"php plain\">,</code></div><div class=\"line number12 index11 alt1\"><code class=\"php spaces\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class=\"php string\">\'chrome\'</code>&nbsp;&nbsp;<code class=\"php plain\">=&gt;&nbsp;</code><code class=\"php string\">\'/(Chrome)\\/(\\d+\\.\\d+)/\'</code><code class=\"php plain\">,</code></div><div class=\"line number13 index12 alt2\"><code class=\"php spaces\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class=\"php string\">\'firefox\'</code>&nbsp;<code class=\"php plain\">=&gt;&nbsp;</code><code class=\"php string\">\'/(Firefox)\\/(\\d+\\.\\d+)/\'</code><code class=\"php plain\">,</code></div><div class=\"line number14 index13 alt1\"><code class=\"php spaces\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class=\"php string\">\'opera\'</code>&nbsp;&nbsp;&nbsp;<code class=\"php plain\">=&gt;&nbsp;</code><code class=\"php string\">\'/(Opera)\\/(\\d+\\.\\d+)/\'</code><code class=\"php plain\">,</code></div><div class=\"line number15 index14 alt2\"><code class=\"php spaces\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class=\"php string\">\'safari\'</code>&nbsp;&nbsp;<code class=\"php plain\">=&gt;&nbsp;</code><code class=\"php string\">\'/Version\\/(\\d+\\.\\d+\\.\\d)&nbsp;(Safari)/\'</code><code class=\"php plain\">,</code></div><div class=\"line number16 index15 alt1\"><code class=\"php spaces\">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class=\"php plain\">);</code></div><div class=\"line number17 index16 alt2\"><code class=\"php spaces\">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class=\"php keyword\">foreach</code><code class=\"php plain\">(</code><code class=\"php variable\">$regex</code>&nbsp;<code class=\"php keyword\">as</code>&nbsp;<code class=\"php variable\">$type</code>&nbsp;<code class=\"php plain\">=&gt;&nbsp;</code><code class=\"php variable\">$reg</code><code class=\"php plain\">)&nbsp;{</code></div><div class=\"line number18 index17 alt1\"><code class=\"php spaces\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class=\"php plain\">preg_match(</code><code class=\"php variable\">$reg</code><code class=\"php plain\">,&nbsp;</code><code class=\"php variable\">$agent</code><code class=\"php plain\">,&nbsp;</code><code class=\"php variable\">$data</code><code class=\"php plain\">);</code></div><div class=\"line number19 index18 alt2\"><code class=\"php spaces\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class=\"php keyword\">if</code><code class=\"php plain\">(!</code><code class=\"php functions\">empty</code><code class=\"php plain\">(</code><code class=\"php variable\">$data</code><code class=\"php plain\">)&nbsp;&amp;&amp;&nbsp;</code><code class=\"php functions\">is_array</code><code class=\"php plain\">(</code><code class=\"php variable\">$data</code><code class=\"php plain\">)){</code></div><div class=\"line number20 index19 alt1\"><code class=\"php spaces\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class=\"php variable\">$browser</code>&nbsp;<code class=\"php plain\">=&nbsp;</code><code class=\"php variable\">$type</code>&nbsp;<code class=\"php plain\">===&nbsp;</code><code class=\"php string\">\'safari\'</code>&nbsp;<code class=\"php plain\">?&nbsp;</code><code class=\"php keyword\">array</code><code class=\"php plain\">(</code><code class=\"php variable\">$data</code><code class=\"php plain\">[2],&nbsp;</code><code class=\"php variable\">$data</code><code class=\"php plain\">[1])&nbsp;:&nbsp;</code><code class=\"php keyword\">array</code><code class=\"php plain\">(</code><code class=\"php variable\">$data</code><code class=\"php plain\">[1],&nbsp;</code><code class=\"php variable\">$data</code><code class=\"php plain\">[2]);</code></div><div class=\"line number21 index20 alt2\"><code class=\"php spaces\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class=\"php keyword\">break</code><code class=\"php plain\">;</code></div><div class=\"line number22 index21 alt1\"><code class=\"php spaces\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class=\"php plain\">}</code></div><div class=\"line number23 index22 alt2\"><code class=\"php spaces\">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class=\"php plain\">}</code></div><div class=\"line number24 index23 alt1\"><code class=\"php spaces\">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class=\"php keyword\">return</code>&nbsp;<code class=\"php functions\">empty</code><code class=\"php plain\">(</code><code class=\"php variable\">$browser</code><code class=\"php plain\">)&nbsp;?&nbsp;false&nbsp;:&nbsp;(</code><code class=\"php functions\">is_null</code><code class=\"php plain\">(</code><code class=\"php variable\">$glue</code><code class=\"php plain\">)&nbsp;?&nbsp;</code><code class=\"php variable\">$browser</code>&nbsp;<code class=\"php plain\">:&nbsp;implode(</code><code class=\"php variable\">$glue</code><code class=\"php plain\">,&nbsp;</code><code class=\"php variable\">$browser</code><code class=\"php plain\">));</code></div><div class=\"line number25 index24 alt2\"><code class=\"php spaces\">&nbsp;</code><code class=\"php plain\">}</code></div></pre><p><br></p><p></p></section></article>','0',2,1,0,'',0,0,284,1500432973,1501031353,'PHP博客','','');
INSERT INTO `clt_article` VALUES (14,6,1,'admin','CLTPHP产生随机字符串','color:;font-weight:normal;','','CLTPHP产生随机字符串','CLTPHP产生随机字符串','<p>CLTPHP产生随机字符串</p><pre><span>/**<br></span><span>+----------------------------------------------------------<br></span><span> * 产生随机字串，可用来自动生成密码 默认长度6位 字母和数字混合<br></span><span>+----------------------------------------------------------<br></span><span> * </span><span>@param </span><span>string $len 长度<br></span><span> * </span><span>@param </span><span>string $type 字串类型<br></span><span> * 0 字母 1 数字 其它 混合<br></span><span> * </span><span>@param </span><span>string $addChars 额外字符<br></span><span>+----------------------------------------------------------<br></span><span> * </span><span>@return </span><span>string<br></span><span>+----------------------------------------------------------<br></span><span> */<br></span><span>function </span><span>rand_string</span><span>(</span><span>$len</span><span>=</span><span>6</span><span>,</span><span>$type</span><span>=</span><span>\'\'</span><span>,</span><span>$addChars</span><span>=</span><span>\'\'</span><span>) {<br></span><span>    </span><span>$str </span><span>=</span><span>\'\'</span><span>;<br></span><span>    </span><span>switch</span><span>(</span><span>$type</span><span>) {<br></span><span>        </span><span>case </span><span>0</span><span>:<br></span><span>            </span><span>$chars</span><span>=</span><span>\'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz\'</span><span>.</span><span>$addChars</span><span>;<br></span><span>            </span><span>break</span><span>;<br></span><span>        </span><span>case </span><span>1</span><span>:<br></span><span>            </span><span>$chars</span><span>= str_repeat(</span><span>\'0123456789\'</span><span>,</span><span>3</span><span>)</span><span>;<br></span><span>            </span><span>break</span><span>;<br></span><span>        </span><span>case </span><span>2</span><span>:<br></span><span>            </span><span>$chars</span><span>=</span><span>\'ABCDEFGHIJKLMNOPQRSTUVWXYZ\'</span><span>.</span><span>$addChars</span><span>;<br></span><span>            </span><span>break</span><span>;<br></span><span>        </span><span>case </span><span>3</span><span>:<br></span><span>            </span><span>$chars</span><span>=</span><span>\'abcdefghijklmnopqrstuvwxyz\'</span><span>.</span><span>$addChars</span><span>;<br></span><span>            </span><span>break</span><span>;<br></span><span>        </span><span>case </span><span>4</span><span>:<br></span><span>            </span><span>$chars </span><span>= </span><span>\"们以我到他会作时要动国产的一是工就年阶义发成部民可出能方进在了不和有大这主中人上为来分生对于学下级地个用同行面说种过命度革而多子后自社加小机也经力线本电高量长党得实家定深法表着水理化争现所二起政三好十战无农使性前等反体合斗路图把结第里正新开论之物从当两些还天资事队批点育重其思与间内去因件日利相由压员气业代全组数果期导平各基或月毛然如应形想制心样干都向变关问比展那它最及外没看治提五解系林者米群头意只明四道马认次文通但条较克又公孔领军流入接席位情运器并飞原油放立题质指建区验活众很教决特此常石强极土少已根共直团统式转别造切九你取西持总料连任志观调七么山程百报更见必真保热委手改管处己将修支识病象几先老光专什六型具示复安带每东增则完风回南广劳轮科北打积车计给节做务被整联步类集号列温装即毫知轴研单色坚据速防史拉世设达尔场织历花受求传口断况采精金界品判参层止边清至万确究书术状厂须离再目海交权且儿青才证低越际八试规斯近注办布门铁需走议县兵固除般引齿千胜细影济白格效置推空配刀叶率述今选养德话查差半敌始片施响收华觉备名红续均药标记难存测士身紧液派准斤角降维板许破述技消底床田势端感往神便贺村构照容非搞亚磨族火段算适讲按值美态黄易彪服早班麦削信排台声该击素张密害侯草何树肥继右属市严径螺检左页抗苏显苦英快称坏移约巴材省黑武培著河帝仅针怎植京助升王眼她抓含苗副杂普谈围食射源例致酸旧却充足短划剂宣环落首尺波承粉践府鱼随考刻靠够满夫失包住促枝局菌杆周护岩师举曲春元超负砂封换太模贫减阳扬江析亩木言球朝医校古呢稻宋听唯输滑站另卫字鼓刚写刘微略范供阿块某功套友限项余倒卷创律雨让骨远帮初皮播优占死毒圈伟季训控激找叫云互跟裂粮粒母练塞钢顶策双留误础吸阻故寸盾晚丝女散焊功株亲院冷彻弹错散商视艺灭版烈零室轻血倍缺厘泵察绝富城冲喷壤简否柱李望盘磁雄似困巩益洲脱投送奴侧润盖挥距触星松送获兴独官混纪依未突架宽冬章湿偏纹吃执阀矿寨责熟稳夺硬价努翻奇甲预职评读背协损棉侵灰虽矛厚罗泥辟告卵箱掌氧恩爱停曾溶营终纲孟钱待尽俄缩沙退陈讨奋械载胞幼哪剥迫旋征槽倒握担仍呀鲜吧卡粗介钻逐弱脚怕盐末阴丰雾冠丙街莱贝辐肠付吉渗瑞惊顿挤秒悬姆烂森糖圣凹陶词迟蚕亿矩康遵牧遭幅园腔订香肉弟屋敏恢忘编印蜂急拿扩伤飞露核缘游振操央伍域甚迅辉异序免纸夜乡久隶缸夹念兰映沟乙吗儒杀汽磷艰晶插埃燃欢铁补咱芽永瓦倾阵碳演威附牙芽永瓦斜灌欧献顺猪洋腐请透司危括脉宜笑若尾束壮暴企菜穗楚汉愈绿拖牛份染既秋遍锻玉夏疗尖殖井费州访吹荣铜沿替滚客召旱悟刺脑措贯藏敢令隙炉壳硫煤迎铸粘探临薄旬善福纵择礼愿伏残雷延烟句纯渐耕跑泽慢栽鲁赤繁境潮横掉锥希池败船假亮谓托伙哲怀割摆贡呈劲财仪沉炼麻罪祖息车穿货销齐鼠抽画饲龙库守筑房歌寒喜哥洗蚀废纳腹乎录镜妇恶脂庄擦险赞钟摇典柄辩竹谷卖乱虚桥奥伯赶垂途额壁网截野遗静谋弄挂课镇妄盛耐援扎虑键归符庆聚绕摩忙舞遇索顾胶羊湖钉仁音迹碎伸灯避泛亡答勇频皇柳哈揭甘诺概宪浓岛袭谁洪谢炮浇斑讯懂灵蛋闭孩释乳巨徒私银伊景坦累匀霉杜乐勒隔弯绩招绍胡呼痛峰零柴簧午跳居尚丁秦稍追梁折耗碱殊岗挖氏刃剧堆赫荷胸衡勤膜篇登驻案刊秧缓凸役剪川雪链渔啦脸户洛孢勃盟买杨宗焦赛旗滤硅炭股坐蒸凝竟陷枪黎救冒暗洞犯筒您宋弧爆谬涂味津臂障褐陆啊健尊豆拔莫抵桑坡缝警挑污冰柬嘴啥饭塑寄赵喊垫丹渡耳刨虎笔稀昆浪萨茶滴浅拥穴覆伦娘吨浸袖珠雌妈紫戏塔锤震岁貌洁剖牢锋疑霸闪埔猛诉刷狠忽灾闹乔唐漏闻沈熔氯荒茎男凡抢像浆旁玻亦忠唱蒙予纷捕锁尤乘乌智淡允叛畜俘摸锈扫毕璃宝芯爷鉴秘净蒋钙肩腾枯抛轨堂拌爸循诱祝励肯酒绳穷塘燥泡袋朗喂铝软渠颗惯贸粪综墙趋彼届墨碍启逆卸航衣孙龄岭骗休借\"</span><span>.</span><span>$addChars</span><span>;<br></span><span>            </span><span>break</span><span>;<br></span><span>        </span><span>default </span><span>:<br></span><span>            </span><span>// 默认去掉了容易混淆的字符oOLl和数字01，要添加请使用addChars参数<br></span><span>            </span><span>$chars</span><span>=</span><span>\'ABCDEFGHIJKMNPQRSTUVWXYZabcdefghijkmnpqrstuvwxyz23456789\'</span><span>.</span><span>$addChars</span><span>;<br></span><span>            </span><span>break</span><span>;<br></span><span>    </span><span>}<br></span><span>    </span><span>if</span><span>(</span><span>$len</span><span>&gt;</span><span>10 </span><span>) {</span><span>//位数过长重复字符串一定次数<br></span><span>        </span><span>$chars</span><span>= </span><span>$type</span><span>==</span><span>1</span><span>? str_repeat(</span><span>$chars</span><span>,</span><span>$len</span><span>) : str_repeat(</span><span>$chars</span><span>,</span><span>5</span><span>)</span><span>;<br></span><span>    </span><span>}<br></span><span>    </span><span>if</span><span>(</span><span>$type</span><span>!=</span><span>4</span><span>) {<br></span><span>        </span><span>$chars   </span><span>=   str_shuffle(</span><span>$chars</span><span>)</span><span>;<br></span><span>        </span><span>$str     </span><span>=   substr(</span><span>$chars</span><span>,</span><span>0</span><span>,</span><span>$len</span><span>)</span><span>;<br></span><span>    </span><span>}</span><span>else</span><span>{<br></span><span>        </span><span>// 中文随机字<br></span><span>        </span><span>for</span><span>(</span><span>$i</span><span>=</span><span>0</span><span>;</span><span>$i</span><span>&lt;</span><span>$len</span><span>;</span><span>$i</span><span>++){<br></span><span>            </span><span>$str</span><span>.= msubstr(</span><span>$chars</span><span>, </span><span>floor(mt_rand(</span><span>0</span><span>,</span><span>mb_strlen(</span><span>$chars</span><span>,</span><span>\'utf-8\'</span><span>)-</span><span>1</span><span>))</span><span>,</span><span>1</span><span>)</span><span>;<br></span><span>        </span><span>}<br></span><span>    }<br></span><span>    </span><span>return </span><span>$str</span><span>;<br></span><span>}</span></pre><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"syntaxhighlighter  php layui-table\"><tbody><tr><td class=\"gutter\"><br></td><td class=\"code\"><br></td></tr></tbody></table>','0',2,1,0,'',0,0,429,1500867996,1501204238,'CLTPHP','http://www.cltphp.com/','');
INSERT INTO `clt_article` VALUES (15,6,1,'admin','CLTPHP字符串截取','color:rgb(95, 184, 120);font-weight:bold;','','CLTPHP字符串截取','CLTPHP字符串截取','<pre><span>//字符串截取<br></span><span>function </span><span>str_cut</span><span>(</span><span>$sourcestr</span><span>,</span><span>$cutlength</span><span>,</span><span>$suffix</span><span>=</span><span>\'...\'</span><span>)<br></span><span>{<br></span><span>    </span><span>$returnstr</span><span>=</span><span>\'\'</span><span>;<br></span><span>    </span><span>$i</span><span>=</span><span>0</span><span>;<br></span><span>    </span><span>$n</span><span>=</span><span>0</span><span>;<br></span><span>    </span><span>$str_length</span><span>=strlen(</span><span>$sourcestr</span><span>)</span><span>;</span><span>//字符串的字节数<br></span><span>    </span><span>while </span><span>((</span><span>$n</span><span>&lt;</span><span>$cutlength</span><span>) </span><span>and </span><span>(</span><span>$i</span><span>&lt;=</span><span>$str_length</span><span>))<br></span><span>    {<br></span><span>        </span><span>$temp_str</span><span>=substr(</span><span>$sourcestr</span><span>,</span><span>$i</span><span>,</span><span>1</span><span>)</span><span>;<br></span><span>        </span><span>$ascnum</span><span>=Ord(</span><span>$temp_str</span><span>)</span><span>;</span><span>//得到字符串中第$i位字符的ascii码<br></span><span>        </span><span>if </span><span>(</span><span>$ascnum</span><span>&gt;=</span><span>224</span><span>)    </span><span>//如果ASCII位高与224，<br></span><span>        </span><span>{<br></span><span>            </span><span>$returnstr</span><span>=</span><span>$returnstr</span><span>.substr(</span><span>$sourcestr</span><span>,</span><span>$i</span><span>,</span><span>3</span><span>)</span><span>; </span><span>//根据UTF-8编码规范，将3个连续的字符计为单个字符<br></span><span>            </span><span>$i</span><span>=</span><span>$i</span><span>+</span><span>3</span><span>;            </span><span>//实际Byte计为3<br></span><span>            </span><span>$n</span><span>++</span><span>;            </span><span>//字串长度计1<br></span><span>        </span><span>}<br></span><span>        </span><span>elseif </span><span>(</span><span>$ascnum</span><span>&gt;=</span><span>192</span><span>) </span><span>//如果ASCII位高与192，<br></span><span>        </span><span>{<br></span><span>            </span><span>$returnstr</span><span>=</span><span>$returnstr</span><span>.substr(</span><span>$sourcestr</span><span>,</span><span>$i</span><span>,</span><span>2</span><span>)</span><span>; </span><span>//根据UTF-8编码规范，将2个连续的字符计为单个字符<br></span><span>            </span><span>$i</span><span>=</span><span>$i</span><span>+</span><span>2</span><span>;            </span><span>//实际Byte计为2<br></span><span>            </span><span>$n</span><span>++</span><span>;            </span><span>//字串长度计1<br></span><span>        </span><span>}<br></span><span>        </span><span>elseif </span><span>(</span><span>$ascnum</span><span>&gt;=</span><span>65 </span><span>&amp;&amp; </span><span>$ascnum</span><span>&lt;=</span><span>90</span><span>) </span><span>//如果是大写字母，<br></span><span>        </span><span>{<br></span><span>            </span><span>$returnstr</span><span>=</span><span>$returnstr</span><span>.substr(</span><span>$sourcestr</span><span>,</span><span>$i</span><span>,</span><span>1</span><span>)</span><span>;<br></span><span>            </span><span>$i</span><span>=</span><span>$i</span><span>+</span><span>1</span><span>;            </span><span>//实际的Byte数仍计1个<br></span><span>            </span><span>$n</span><span>++</span><span>;            </span><span>//但考虑整体美观，大写字母计成一个高位字符<br></span><span>        </span><span>}<br></span><span>        </span><span>else                </span><span>//其他情况下，包括小写字母和半角标点符号，<br></span><span>        </span><span>{<br></span><span>            </span><span>$returnstr</span><span>=</span><span>$returnstr</span><span>.substr(</span><span>$sourcestr</span><span>,</span><span>$i</span><span>,</span><span>1</span><span>)</span><span>;<br></span><span>            </span><span>$i</span><span>=</span><span>$i</span><span>+</span><span>1</span><span>;            </span><span>//实际的Byte数计1个<br></span><span>            </span><span>$n</span><span>=</span><span>$n</span><span>+</span><span>0.5</span><span>;        </span><span>//小写字母和半角标点等与半个高位字符宽...<br></span><span>        </span><span>}<br></span><span>    }<br></span><span>    </span><span>if </span><span>(</span><span>$n</span><span>&gt;</span><span>$cutlength</span><span>){<br></span><span>        </span><span>$returnstr </span><span>= </span><span>$returnstr </span><span>. </span><span>$suffix</span><span>;</span><span>//超过长度时在尾处加上省略号<br></span><span>    </span><span>}<br></span><span>    </span><span>return </span><span>$returnstr</span><span>;<br></span><span>}</span></pre>','0',2,1,0,'',0,0,338,1501031299,1502067767,'CLTPHP','http://www.cltphp.com/','');
INSERT INTO `clt_article` VALUES (16,5,1,'admin','CLTPHP操作开发手册已完全更新','color:rgb(255, 87, 34);font-weight:bold;','','CLTPHP操作开发手册已完全更新','CLTPHP操作开发手册已完全更新','<p>CLTPHP操作开发手册已完全更新，CLTPHP核心价值，尽在其中。</p><p>喜欢的朋友可以购买参考</p><p>同时希望CLTPHP的爱好者，可以给我提出更多CLTPHP的不足之处，让CLTPHP更健康的成长。</p><p>手册地址：https://www.kancloud.cn/chichu/cltphp/</p>','0',2,1,0,'',0,0,1898,1501031404,1502068026,'CLTPHP','http://www.cltphp.com/','');
INSERT INTO `clt_article` VALUES (17,6,1,'admin','CLTPHP判断当前访问的用户是  PC端  还是 手机端','color:rgb(51, 51, 153);font-weight:bold;','','CLTPHP判断当前访问的用户是  PC端  还是 手机端','CLTPHP判断当前访问的用户是  PC端  还是 手机端','<pre><span>/**<br></span><span> * 判断当前访问的用户是  PC端  还是 手机端  返回true 为手机端  false 为PC 端<br></span><span> *  是否移动端访问访问<br></span><span> * </span><span>@return </span><span>boolean<br></span><span> */<br></span><span>function </span><span>isMobile</span><span>()<br></span><span>{<br></span><span>    </span><span>// 如果有HTTP_X_WAP_PROFILE则一定是移动设备<br></span><span>    </span><span>if </span><span>(</span><span>isset </span><span>(</span><span>$_SERVER</span><span>[</span><span>\'HTTP_X_WAP_PROFILE\'</span><span>]))<br></span><span>        </span><span>return true</span><span>;<br></span><span><br></span><span>    </span><span>// 如果via信息含有wap则一定是移动设备,部分服务商会屏蔽该信息<br></span><span>    </span><span>if </span><span>(</span><span>isset </span><span>(</span><span>$_SERVER</span><span>[</span><span>\'HTTP_VIA\'</span><span>]))<br></span><span>    {<br></span><span>        </span><span>// 找不到为flase,否则为true<br></span><span>        </span><span>return </span><span>stristr(</span><span>$_SERVER</span><span>[</span><span>\'HTTP_VIA\'</span><span>]</span><span>, </span><span>\"wap\"</span><span>) ? </span><span>true </span><span>: </span><span>false</span><span>;<br></span><span>    </span><span>}<br></span><span>    </span><span>// 脑残法，判断手机发送的客户端标志,兼容性有待提高<br></span><span>    </span><span>if </span><span>(</span><span>isset </span><span>(</span><span>$_SERVER</span><span>[</span><span>\'HTTP_USER_AGENT\'</span><span>]))<br></span><span>    {<br></span><span>        </span><span>$clientkeywords </span><span>= </span><span>array </span><span>(</span><span>\'nokia\'</span><span>,</span><span>\'sony\'</span><span>,</span><span>\'ericsson\'</span><span>,</span><span>\'mot\'</span><span>,</span><span>\'samsung\'</span><span>,</span><span>\'htc\'</span><span>,</span><span>\'sgh\'</span><span>,</span><span>\'lg\'</span><span>,</span><span>\'sharp\'</span><span>,</span><span>\'sie-\'</span><span>,</span><span>\'philips\'</span><span>,</span><span>\'panasonic\'</span><span>,</span><span>\'alcatel\'</span><span>,</span><span>\'lenovo\'</span><span>,</span><span>\'iphone\'</span><span>,</span><span>\'ipod\'</span><span>,</span><span>\'blackberry\'</span><span>,</span><span>\'meizu\'</span><span>,</span><span>\'android\'</span><span>,</span><span>\'netfront\'</span><span>,</span><span>\'symbian\'</span><span>,</span><span>\'ucweb\'</span><span>,</span><span>\'windowsce\'</span><span>,</span><span>\'palm\'</span><span>,</span><span>\'operamini\'</span><span>,</span><span>\'operamobi\'</span><span>,</span><span>\'openwave\'</span><span>,</span><span>\'nexusone\'</span><span>,</span><span>\'cldc\'</span><span>,</span><span>\'midp\'</span><span>,</span><span>\'wap\'</span><span>,</span><span>\'mobile\'</span><span>)</span><span>;<br></span><span>        </span><span>// 从HTTP_USER_AGENT中查找手机浏览器的关键字<br></span><span>        </span><span>if </span><span>(preg_match(</span><span>\"/(\" </span><span>. implode(</span><span>\'|\'</span><span>, </span><span>$clientkeywords</span><span>) . </span><span>\")/i\"</span><span>, </span><span>strtolower(</span><span>$_SERVER</span><span>[</span><span>\'HTTP_USER_AGENT\'</span><span>])))<br></span><span>            </span><span>return true</span><span>;<br></span><span>    </span><span>}<br></span><span>    </span><span>// 协议法，因为有可能不准确，放到最后判断<br></span><span>    </span><span>if </span><span>(</span><span>isset </span><span>(</span><span>$_SERVER</span><span>[</span><span>\'HTTP_ACCEPT\'</span><span>]))<br></span><span>    {<br></span><span>        </span><span>// 如果只支持wml并且不支持html那一定是移动设备<br></span><span>        // 如果支持wml和html但是wml在html之前则是移动设备<br></span><span>        </span><span>if </span><span>((strpos(</span><span>$_SERVER</span><span>[</span><span>\'HTTP_ACCEPT\'</span><span>]</span><span>, </span><span>\'vnd.wap.wml\'</span><span>) !== </span><span>false</span><span>) &amp;&amp; (strpos(</span><span>$_SERVER</span><span>[</span><span>\'HTTP_ACCEPT\'</span><span>]</span><span>, </span><span>\'text/html\'</span><span>) === </span><span>false </span><span>|| (strpos(</span><span>$_SERVER</span><span>[</span><span>\'HTTP_ACCEPT\'</span><span>]</span><span>, </span><span>\'vnd.wap.wml\'</span><span>) &lt; strpos(</span><span>$_SERVER</span><span>[</span><span>\'HTTP_ACCEPT\'</span><span>]</span><span>, </span><span>\'text/html\'</span><span>))))<br></span><span>        {<br></span><span>            </span><span>return true</span><span>;<br></span><span>        </span><span>}<br></span><span>    }<br></span><span>    </span><span>return false</span><span>;<br></span><span>}</span></pre>','0',2,1,0,'',0,0,353,1501204163,1501204249,'CLTPHP','http://www.cltphp.com/','');
INSERT INTO `clt_article` VALUES (18,3,1,'admin','关于收费文档的误解','color:rgb(0, 153, 102);font-weight:bold;','','关于收费文档的误解','关于收费文档的误解','<p>　　cltphp的文档收费20，靠20块文档赚钱，有点夸大了，定2000，万一有一个人付费，那就是100个20，也能算挣点小钱。</p><p>　　不花钱的东西，没有价值，也无所谓去骂娘。花了钱，大多人会去看，有价值的部分，自然会学习到。没价值的部分，一些人会骂娘，骂娘的同时，或许会说：这里怎样改一下不久好了嘛！对于这样的骂娘，我们很是支持。</p><p>　　另外赋上文档的初始态度：<a href=\"http://cltphp.com/newsInfo-16-5.html\" target=\"_self\" style=\"text-decoration: none;\"><strong>CLTPHP操作文档不断更新中</strong></a></p><h4><br/></h4>','0',2,1,0,'',0,0,1388,1501552272,1505373009,'CLTPHP','http://www.cltphp.com/','');
INSERT INTO `clt_article` VALUES (19,3,1,'admin','关于捐赠的一些说明','color:rgb(255, 87, 34);font-weight:bold;','','关于捐赠的一些说明','关于捐赠的一些说明','<p>首先非常感谢您对我们的支持。</p><p>近期发现，一部分朋友对我们捐赠时，并未留下名称或者其他称呼。</p><p>目前官网只接受微信扫码捐赠，所以，请您务必点击留言，留下您的大名，便于我们做捐赠名的展示。<img src=\"/public/uploads/20170904/a1bb03cea85aafd3bca3287ef3ade719.png\" alt=\"20170904/a1bb03cea85aafd3bca3287ef3ade719.png\"></p>','0',0,1,0,'',0,0,532,1501827480,1504516379,'CLTPHP','http://www.cltphp.com/','');
INSERT INTO `clt_article` VALUES (20,6,1,'admin','PHP格式化字节大小','color:hsv(0, 0%, 0%);font-weight:bold;','','PHP格式化字节大小','PHP格式化字节大小','<pre><span>/**<br></span><span> * PHP格式化字节大小<br></span><span> * </span><span>@param  </span><span>number $size      字节数<br></span><span> * </span><span>@param  </span><span>string $delimiter 数字和单位分隔符<br></span><span> * </span><span>@return </span><span>string            格式化后的带单位的大小<br></span><span> */<br></span><span>function </span><span>format_bytes</span><span>(</span><span>$size</span><span>, </span><span>$delimiter </span><span>= </span><span>\'\'</span><span>) {<br></span><span>    </span><span>$units </span><span>= </span><span>array</span><span>(</span><span>\'B\'</span><span>, </span><span>\'KB\'</span><span>, </span><span>\'MB\'</span><span>, </span><span>\'GB\'</span><span>, </span><span>\'TB\'</span><span>, </span><span>\'PB\'</span><span>)</span><span>;<br></span><span>    </span><span>for </span><span>(</span><span>$i </span><span>= </span><span>0</span><span>; </span><span>$size </span><span>&gt;= </span><span>1024 </span><span>&amp;&amp; </span><span>$i </span><span>&lt; </span><span>5</span><span>; </span><span>$i</span><span>++) </span><span>$size </span><span>/= </span><span>1024</span><span>;<br></span><span>    </span><span>return </span><span>round(</span><span>$size</span><span>, </span><span>2</span><span>) . </span><span>$delimiter </span><span>. </span><span>$units</span><span>[</span><span>$i</span><span>]</span><span>;<br></span><span>}</span></pre>','0',1,1,0,'',0,0,409,1502067689,1502067893,'CLTPHP','http://www.cltphp.com/','');
INSERT INTO `clt_article` VALUES (21,5,1,'admin','CLTPHP4.5发布','color:rgb(0, 153, 102);font-weight:bold;','','CLTPHP4.5发布','CLTPHP4.5发布','<p>1.更新权限功能</p><p>2.增加微信关注回复和默认回复</p><p>3.增加后台页面过度效果</p><p>4.后台部分功能代码优化</p>','0',2,1,0,'',0,0,360,1502067980,1502422491,'CLTPHP','http://www.cltphp.com/','');
INSERT INTO `clt_article` VALUES (22,5,1,'admin','CLTPHP5.0发布','color:rgb(255, 87, 34);font-weight:bold;','','CLTPHP5.0发布','CLTPHP5.0发布','<p>CLTPHP5.0更新内容</p><p>1.增加前台会员模块，支持QQ登录注册</p><p>2.增加后台邮件发送配置</p><p>3.增加后台QQ登录配置</p><p>4.增加后台富文本编辑器选择（<span>layedit，</span><span>UEditor</span>）</p><p>5.增加后台上传logo</p><p>6.增加微信关注回复及默认回复</p><p>7.优化后台部分语言功能</p><p>8.简单实现home模块路由配置</p><p>9.增加home模块缓存机制</p><p>10.修复后台管理员无法添加的bug</p><p>11.修复4.5版本模版管理.html无法编辑的bug</p><p>12.更多细节修改及bug</p><p>下载地址：<a target=\"_self\" href=\"http://o95ehky7c.bkt.clouddn.com/CLTPHP5.0.zip\">CLTPHP5.0</a></p>','0',2,1,0,'',0,0,929,1502421726,1503365682,'CLTPHP','http://www.cltphp.com/','');
INSERT INTO `clt_article` VALUES (23,3,1,'admin','清除缓存和添加字段的错误修正方法','color:;font-weight:normal;','','清除缓存和添加字段的错误修正方法','清除缓存和添加字段的错误修正方法','<p>问题：</p><pre>Deprecated:&nbsp;Automatically&nbsp;populating&nbsp;$HTTP_RAW_POST_DATA&nbsp;is&nbsp;deprecated&nbsp;and&nbsp;will&nbsp;be&nbsp;removed&nbsp;in&nbsp;a&nbsp;future&nbsp;version.&nbsp;To&nbsp;avoid&nbsp;this&nbsp;warning&nbsp;set&nbsp;&#39;always_populate_raw_post_data&#39;&nbsp;to&nbsp;&#39;-1&#39;&nbsp;in&nbsp;php.ini&nbsp;and&nbsp;use&nbsp;the&nbsp;php://input&nbsp;stream&nbsp;instead.&nbsp;in&nbsp;Unknown&nbsp;on&nbsp;line&nbsp;0</pre><p><br/></p><p>修正方法：</p><p>去掉php.in配置文件always_populate_raw_post_data前面的分号</p><p><br/></p><p><br/></p>','0',0,1,0,'',0,0,253,1502761583,1504763357,'CLTPHP','http://www.cltphp.com/','');
INSERT INTO `clt_article` VALUES (25,5,1,'admin','CLTPHP手册更新自定义标签','color:;font-weight:normal;','','CLTPHP手册更新自定义标签','CLTPHP手册更新自定义标签','<p>CLTPHP手册更新自定义标签，文档详细讲述了 {clt:list}{/clt:list} 和 {clt:info}{/clt:info} 两个标签的参数和调用方法。</p>','0',1,1,0,'',0,0,1099,1503365502,0,'CLTPHP','http://www.cltphp.com/','');
INSERT INTO `clt_article` VALUES (36,5,1,'admin','CLTPHP5.1.1更新','color:rgb(0, 153, 102);font-weight:bold;','','CLTPHP5.1.1更新  cltphp cltphp内容管理系统 php','CLTPHP的目的是 让所有人都能 高效 简洁 的建立网站，虽然世界上有成千上万的建站系统，但CLTPHP会告诉你，真正高效的建站系统是什么样的。','<p style=\"box-sizing: border-box; border: 0px; font-stretch: inherit; font-size: 14px; line-height: 24px; font-family: &#39;Microsoft yahei&#39;, Arial, Tahoma, Verdana; vertical-align: baseline; margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 20px; color: rgb(151, 151, 151); white-space: normal; background-color: rgb(255, 255, 255);\">更新内容</p><p style=\"box-sizing: border-box; border: 0px; font-stretch: inherit; font-size: 14px; line-height: 24px; font-family: &#39;Microsoft yahei&#39;, Arial, Tahoma, Verdana; vertical-align: baseline; margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 20px; color: rgb(151, 151, 151); white-space: normal; background-color: rgb(255, 255, 255);\">1、前台自定义标签完善</p><p style=\"box-sizing: border-box; border: 0px; font-stretch: inherit; font-size: 14px; line-height: 24px; font-family: &#39;Microsoft yahei&#39;, Arial, Tahoma, Verdana; vertical-align: baseline; margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 20px; color: rgb(151, 151, 151); white-space: normal; background-color: rgb(255, 255, 255);\">2、自定义分页，优化了系统分页（为了保持框架文件的纯净度，并没有改动TP原有分页代码）</p><p style=\"box-sizing: border-box; border: 0px; font-stretch: inherit; font-size: 14px; line-height: 24px; font-family: &#39;Microsoft yahei&#39;, Arial, Tahoma, Verdana; vertical-align: baseline; margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 20px; color: rgb(151, 151, 151); white-space: normal; background-color: rgb(255, 255, 255);\">3、更新对应文档</p><p style=\"box-sizing: border-box; border: 0px; font-stretch: inherit; font-size: 14px; line-height: 24px; font-family: &#39;Microsoft yahei&#39;, Arial, Tahoma, Verdana; vertical-align: baseline; margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 20px; color: rgb(151, 151, 151); white-space: normal; background-color: rgb(255, 255, 255);\">下载地址：<a target=\"_self\" href=\"http://qiniu.cltphp.com/cltphp5.1.1.zip\" style=\"box-sizing: border-box; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; margin: 0px; padding: 0px; outline: 0px; color: rgb(146, 208, 80); text-decoration: none;\"><span style=\"color: rgb(146, 208, 80);\">CLTPHP5.1.1下载</span></a></p><p style=\"box-sizing: border-box; border: 0px; font-stretch: inherit; font-size: 14px; line-height: 24px; font-family: &#39;Microsoft yahei&#39;, Arial, Tahoma, Verdana; vertical-align: baseline; margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 20px; color: rgb(151, 151, 151); white-space: normal; background-color: rgb(255, 255, 255);\">更新包下载：<a target=\"_self\" href=\"http://qiniu.cltphp.com/CLTPHP5.1%E5%88%B05.1.1%E5%8D%87%E7%BA%A7.zip\" style=\"box-sizing: border-box; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; margin: 0px; padding: 0px; outline: 0px; color: rgb(146, 208, 80); text-decoration: none;\"><span style=\"color: rgb(146, 208, 80);\">CLTPHP5.1到5.1.1更新</span></a></p><p><br/></p>','0',0,1,0,'',0,0,224,1504765025,1505355804,'CLTPHP','http://www.cltphp.com/','');
INSERT INTO `clt_article` VALUES (37,5,1,'admin','CLTPHP5.1.2发布','color:rgb(0, 153, 102);font-weight:bold;','','CLTPHP5.1.2发布  cltphp cltphp内容管理系统 php','CLTPHP的目的是 让所有人都能 高效 简洁 的建立网站，虽然世界上有成千上万的建站系统，但CLTPHP会告诉你，真正高效的建站系统是什么样的。','<p>更新内容</p><p>1、<strong>CLTPHP</strong>核心框架thinkphp升级</p><p>2、分类，广告，友链的前后台缓存机制</p><p>下载地址：<strong style=\"color: rgb(118, 146, 60); text-decoration: none;\"><span style=\"color: rgb(118, 146, 60);\"><a href=\"http://qiniu.cltphp.com/cltphp5.1.2.zip\" target=\"_self\" title=\"CLTPHP5.1.2下载\" style=\"color: rgb(118, 146, 60); text-decoration: none;\">CLTPHP5.1.2</a></span></strong></p><p><br/></p><p><br/></p>','0',0,1,0,'',0,0,141,1505264091,1505355785,'CLTPHP','http://www.cltphp.com/','');
INSERT INTO `clt_article` VALUES (38,3,1,'admin','关于CLTPHP的一些琐碎事','color:rgb(51, 51, 153);font-weight:bold;','','关于CLTPHP的一些琐碎事 cltphp cltphp内容管理系统 php','CLTPHP的目的是 让所有人都能 高效 简洁 的建立网站，虽然世界上有成千上万的建站系统，但CLTPHP会告诉你，真正高效的建站系统是什么样的。','<p>CLTPHP是开源的</p><p><a href=\"http://demo.cltphp.com\" target=\"_self\" title=\"CLTPHP演示站\">CLTPHP演示站</a>的后台用户名：admin &nbsp;密码：admin123</p><p>版本更新包的后台用户名：admin &nbsp;密码：admin123</p><p>新版本发布，请登录后台，清空缓存后再打开前台，不然，前台可能会报错。</p><p><span style=\"color: rgb(149, 55, 52);\">如果没有意外（睡眼忪惺）的时候，以上永久不变。</span></p>','0',1,1,0,'',0,0,1217,1505264319,1517218472,'CLTPHP','http://www.cltphp.com/','4,54,532');
INSERT INTO `clt_article` VALUES (40,6,1,'admin','php验证输入的邮件地址是否合法','color:;font-weight:normal;','','php验证输入的邮件地址是否合法','php验证输入的邮件地址是否合法','<pre class=\"brush:php;toolbar:false\">/**\n&nbsp;*&nbsp;验证输入的邮件地址是否合法\n&nbsp;*/\nfunction&nbsp;is_email($user_email)\n{\n&nbsp;&nbsp;&nbsp;&nbsp;$chars&nbsp;=&nbsp;&quot;/^([a-z0-9+_]|\\\\-|\\\\.)+@(([a-z0-9_]|\\\\-)+\\\\.)+[a-z]{2,6}\\$/i&quot;;\n&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;(strpos($user_email,&nbsp;&#39;@&#39;)&nbsp;!==&nbsp;false&nbsp;&amp;&amp;&nbsp;strpos($user_email,&nbsp;&#39;.&#39;)&nbsp;!==&nbsp;false)&nbsp;{\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;(preg_match($chars,&nbsp;$user_email))&nbsp;{\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;true;\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;else&nbsp;{\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;false;\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}\n&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;else&nbsp;{\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;false;\n&nbsp;&nbsp;&nbsp;&nbsp;}\n}</pre><p><br/></p>','0',2,1,0,'',0,0,188,1505355407,1505355561,'CLTPHP','http://www.cltphp.com/','');
INSERT INTO `clt_article` VALUES (39,5,1,'admin','CLTPHP5.1.3发布','color:rgb(0, 153, 102);font-weight:bold;','','CLTPHP5.1.3发布 cltphp cltphp内容管理系统 php','CLTPHP的目的是 让所有人都能 高效 简洁 的建立网站，虽然世界上有成千上万的建站系统，但CLTPHP会告诉你，真正高效的建站系统是什么样的。','<p style=\"box-sizing: border-box; border: 0px; font-stretch: inherit; font-size: 14px; line-height: 24px; font-family: &#39;Microsoft yahei&#39;, Arial, Tahoma, Verdana; vertical-align: baseline; margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 20px; color: rgb(102, 102, 102); white-space: normal; background-color: rgb(255, 255, 255);\">更新内容</p><p style=\"box-sizing: border-box; border: 0px; font-stretch: inherit; font-size: 14px; line-height: 24px; font-family: &#39;Microsoft yahei&#39;, Arial, Tahoma, Verdana; vertical-align: baseline; margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 20px; color: rgb(102, 102, 102); white-space: normal; background-color: rgb(255, 255, 255);\">1、修复多图上传bug</p><p style=\"box-sizing: border-box; border: 0px; font-stretch: inherit; font-size: 14px; line-height: 24px; font-family: &#39;Microsoft yahei&#39;, Arial, Tahoma, Verdana; vertical-align: baseline; margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 20px; color: rgb(102, 102, 102); white-space: normal; background-color: rgb(255, 255, 255);\">2、修复后台栏目二级目录下路径问题</p><p style=\"box-sizing: border-box; border: 0px; font-stretch: inherit; font-size: 14px; line-height: 24px; font-family: &#39;Microsoft yahei&#39;, Arial, Tahoma, Verdana; vertical-align: baseline; margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 20px; color: rgb(102, 102, 102); white-space: normal; background-color: rgb(255, 255, 255);\">3、修改TP自带提示文件正确状态下的图标</p><p style=\"box-sizing: border-box; border: 0px; font-stretch: inherit; font-size: 14px; line-height: 24px; font-family: &#39;Microsoft yahei&#39;, Arial, Tahoma, Verdana; vertical-align: baseline; margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 20px; color: rgb(102, 102, 102); white-space: normal; background-color: rgb(255, 255, 255);\">4、修改模型字段编辑表单显示与数据库不一致问题</p><p style=\"box-sizing: border-box; border: 0px; font-stretch: inherit; font-size: 14px; line-height: 24px; font-family: &#39;Microsoft yahei&#39;, Arial, Tahoma, Verdana; vertical-align: baseline; margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 20px; color: rgb(102, 102, 102); white-space: normal; background-color: rgb(255, 255, 255);\">5、修复QQ绑定bug</p><p style=\"box-sizing: border-box; border: 0px; font-stretch: inherit; font-size: 14px; line-height: 24px; font-family: &#39;Microsoft yahei&#39;, Arial, Tahoma, Verdana; vertical-align: baseline; margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 20px; color: rgb(102, 102, 102); white-space: normal; background-color: rgb(255, 255, 255);\">6、修复5.1.2版本数据库备份问题</p><p style=\"box-sizing: border-box; border: 0px; font-stretch: inherit; font-size: 14px; line-height: 24px; font-family: &#39;Microsoft yahei&#39;, Arial, Tahoma, Verdana; vertical-align: baseline; margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 20px; color: rgb(102, 102, 102); white-space: normal; background-color: rgb(255, 255, 255);\">下载地址：<a href=\"http://qiniu.cltphp.com/CLTPHP5.1.3.zip\" target=\"_self\" title=\"CLTPHP5.1.3下载\" style=\"text-decoration: none;\"><strong><span style=\"color: rgb(0, 176, 80);\">CLTPHP5.1.3</span></strong><strong><span style=\"color: rgb(0, 176, 80);\"></span></strong></a></p><p style=\"box-sizing: border-box; border: 0px; font-stretch: inherit; font-size: 14px; line-height: 24px; font-family: &#39;Microsoft yahei&#39;, Arial, Tahoma, Verdana; vertical-align: baseline; margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 20px; color: rgb(102, 102, 102); white-space: normal; background-color: rgb(255, 255, 255);\">更新包下载：<a href=\"http://qiniu.cltphp.com/5.1.2%E5%8D%875.1.3%E8%A1%A5%E4%B8%81.zip\" target=\"_self\" title=\"CLTPHP5.1.2到5.1.3更新\" style=\"color: rgb(0, 176, 80); text-decoration: none;\"><strong><span style=\"color: rgb(0, 176, 80);\">CLTPHP5.1.2到5.1.3更新</span></strong></a></p><p><br/></p>','0',2,1,0,'',0,0,707,1505353199,1505872972,'CLTPHP','http://www.cltphp.com/','');
INSERT INTO `clt_article` VALUES (41,5,1,'admin','CLTPHP5.2发布','color:rgb(0, 153, 102);font-weight:bold;','','CLTPHP5.2发布','CLTPHP5.2发布','<p>更新内容</p><p>1.后台核心框架升级为ThinkPHP5.0.11版本</p><p>2.后台及会员中心UI框架升级为layui2.1.5版本</p><p>3.碎片修改为以碎片分类来管理</p><p>4.优化图片、文件上传</p><p>5.优化双编辑器切换</p><p>6.后台增加主题切换功能</p><p>7.后台全屏状态，点击全屏按钮可收起全屏</p><p><span style=\"color: rgb(255, 0, 0);\">注意事项</span></p><p><span style=\"color: rgb(255, 0, 0);\">1.遇到问题，先去官网找答案。</span></p><p><span style=\"color: rgb(255, 0, 0);\">2.CLTPHP5.2是一个大面积修改升级版，不支持之前任何版本的无缝升级。</span></p><p>下载地址：<a href=\"http://qiniu.cltphp.com/cltphp5.2.zip\" target=\"_self\" title=\"CLTPHP5.2\" style=\"color: rgb(0, 176, 80); text-decoration: none;\"><strong><span style=\"color: rgb(0, 176, 80);\">CLTPHP5.2</span></strong></a></p><p><br/></p>','0',2,1,0,'',0,0,1586,1505871918,1507879183,'CLTPHP','http://www.cltphp.com/','');
INSERT INTO `clt_article` VALUES (42,5,1,'admin','CLTPHP5.2.1发布','color:;font-weight:normal;','','CLTPHP5.2.1发布 cltphp cltphp内容管理系统 php','CLTPHP的目的是 让所有人都能 高效 简洁 的建立网站，虽然世界上有成千上万的建站系统，但CLTPHP会告诉你，真正高效的建站系统是什么样的。','<p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; border: 0px; font-stretch: inherit; font-size: 14px; line-height: 24px; font-family: &#39;Microsoft yahei&#39;, Arial, Tahoma, Verdana; vertical-align: baseline; padding: 0px 0px 20px; color: rgb(102, 102, 102); background-color: rgb(255, 255, 255);\">更新内容</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; border: 0px; font-stretch: inherit; font-size: 14px; line-height: 24px; font-family: &#39;Microsoft yahei&#39;, Arial, Tahoma, Verdana; vertical-align: baseline; padding: 0px 0px 20px; color: rgb(102, 102, 102); background-color: rgb(255, 255, 255);\">1、修改会员中心无法解绑QQbug</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; border: 0px; font-stretch: inherit; font-size: 14px; line-height: 24px; font-family: &#39;Microsoft yahei&#39;, Arial, Tahoma, Verdana; vertical-align: baseline; padding: 0px 0px 20px; color: rgb(102, 102, 102); background-color: rgb(255, 255, 255);\">2、修复后台多图上传bug</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; border: 0px; font-stretch: inherit; font-size: 14px; line-height: 24px; font-family: &#39;Microsoft yahei&#39;, Arial, Tahoma, Verdana; vertical-align: baseline; padding: 0px 0px 20px; color: rgb(102, 102, 102); background-color: rgb(255, 255, 255);\">下载地址：<a href=\"http://qiniu.cltphp.com/CLTPHP5.2.1.zip\" target=\"_self\" title=\"CLTPHP5.2.1下载\"><strong style=\"text-decoration: none; white-space: normal; color: rgb(118, 146, 60);\">CLTPHP5.2.1</strong></a><a href=\"http://qiniu.cltphp.com/cltphp5.2.1.zip\" target=\"_self\" title=\"CLTPHP5.2.1下载\"><strong style=\"white-space: normal; color: rgb(118, 146, 60);\"></strong></a></p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; border: 0px; font-stretch: inherit; font-size: 14px; line-height: 24px; font-family: &#39;Microsoft yahei&#39;, Arial, Tahoma, Verdana; vertical-align: baseline; padding: 0px 0px 20px; color: rgb(102, 102, 102); background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, Arial, Tahoma, Verdana; font-size: 14px; line-height: 24px; background-color: rgb(255, 255, 255);\">补丁地址：</span><a href=\"http://qiniu.cltphp.com/CLTPHP5.2%E5%88%B05.2.1%E8%A1%A5%E4%B8%81.zip\" target=\"_self\" title=\"CLTPHP5.2升5.2.1补丁\" style=\"color: rgb(118, 146, 60); text-decoration: none;\"><strong><span style=\"color: rgb(146, 208, 80);\">CLTPHP5.2升5.2.1补丁</span></strong></a></p><p><br/></p>','0',0,1,0,'',0,0,252,1506475263,1506475718,'CLTPHP','http://www.cltphp.com/','');
INSERT INTO `clt_article` VALUES (43,6,1,'admin','纯CSS实现页面的尖角、小三角、不同方向尖角的方法小结','color:;font-weight:normal;','','','','<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; outline: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(51, 51, 51); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 19.5px; white-space: normal; background-color: rgb(255, 255, 255);\">效果图：</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; outline: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(51, 51, 51); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 19.5px; white-space: normal; background-color: rgb(255, 255, 255);\">方法一的效果图：</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; outline: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(51, 51, 51); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 19.5px; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\"><img src=\"/public/uploads/ueditor/image/20171008/1507425192923475.png\" alt=\"\"/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; outline: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(51, 51, 51); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 19.5px; white-space: normal; background-color: rgb(255, 255, 255);\">方法二的效果图：</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; outline: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(51, 51, 51); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 19.5px; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\"><img src=\"/public/uploads/ueditor/image/20171008/1507425192357806.png\" alt=\"\"/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; outline: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(51, 51, 51); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 19.5px; white-space: normal; background-color: rgb(255, 255, 255);\">方法三的效果图：</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; outline: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(51, 51, 51); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 19.5px; white-space: normal; text-align: center; background-color: rgb(255, 255, 255);\"><img src=\"/public/uploads/ueditor/image/20171008/1507425192288407.png\" alt=\"\"/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; outline: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(51, 51, 51); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 19.5px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(255, 0, 0);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-weight: 700; outline: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">方法1：因为有背景，所有实现起来比较方便，尖角的内部同个颜色就可以不用考虑遮挡问题</span></span></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; outline: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(51, 51, 51); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 19.5px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-weight: 700; outline: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">html:</span></p><pre class=\"brush:xhtml;\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow: auto; font-family: monospace, monospace; font-size: 1em; line-height: 1.42857; word-break: break-all; word-wrap: break-word; border: 1px solid rgb(204, 204, 204); border-radius: 4px; outline: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); background-color: rgb(245, 245, 245);\">&lt;div&nbsp;id=&quot;first&quot;&gt;&nbsp;&nbsp;\n&lt;p&gt;带背景颜色的小三角实现是比较简单的！&lt;/p&gt;&nbsp;&nbsp;\n&nbsp;&nbsp;&lt;span&nbsp;id=&quot;top&quot;&gt;&lt;/span&gt;&nbsp;&nbsp;\n&lt;/div&gt;</pre><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; outline: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(51, 51, 51); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 19.5px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-weight: 700; outline: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">css</span></p><pre class=\"brush:sql;\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow: auto; font-family: monospace, monospace; font-size: 1em; line-height: 1.42857; word-break: break-all; word-wrap: break-word; border: 1px solid rgb(204, 204, 204); border-radius: 4px; outline: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); background-color: rgb(245, 245, 245);\">#top&nbsp;{&nbsp;&nbsp;\n&nbsp;&nbsp;\n&nbsp;&nbsp;&nbsp;&nbsp;position:&nbsp;absolute;&nbsp;&nbsp;\n&nbsp;&nbsp;&nbsp;&nbsp;width:&nbsp;0px;&nbsp;&nbsp;\n&nbsp;&nbsp;&nbsp;&nbsp;height:&nbsp;0px;&nbsp;&nbsp;\n&nbsp;&nbsp;&nbsp;&nbsp;line-height:&nbsp;0px;/*为了防止ie下出现题型*/&nbsp;&nbsp;\n&nbsp;&nbsp;&nbsp;&nbsp;border-bottom:&nbsp;10px&nbsp;solid&nbsp;#89b007;&nbsp;&nbsp;\n&nbsp;&nbsp;&nbsp;&nbsp;border-left:&nbsp;10px&nbsp;solid&nbsp;#fff;&nbsp;&nbsp;\n&nbsp;&nbsp;&nbsp;&nbsp;border-right:&nbsp;10px&nbsp;solid&nbsp;#fff;&nbsp;&nbsp;\n&nbsp;&nbsp;&nbsp;&nbsp;left:&nbsp;76px;&nbsp;&nbsp;\n&nbsp;&nbsp;&nbsp;&nbsp;top:&nbsp;-10px;&nbsp;&nbsp;\n}&nbsp;&nbsp;\n#first&nbsp;{&nbsp;&nbsp;\n&nbsp;&nbsp;&nbsp;&nbsp;border-radius:8px;&nbsp;&nbsp;\n&nbsp;&nbsp;&nbsp;&nbsp;-moz-border-radius:8px;-ms-border-radius:8px;-o-border-radius:8px;-webkit-border-radius:8px;&nbsp;&nbsp;\n&nbsp;&nbsp;&nbsp;&nbsp;position:&nbsp;absolute;&nbsp;&nbsp;\n&nbsp;&nbsp;&nbsp;&nbsp;height:&nbsp;150px;&nbsp;&nbsp;\n&nbsp;&nbsp;&nbsp;&nbsp;width:&nbsp;300px;&nbsp;&nbsp;\n&nbsp;&nbsp;&nbsp;&nbsp;background:&nbsp;#89b007;&nbsp;&nbsp;\n&nbsp;&nbsp;&nbsp;&nbsp;left:&nbsp;22px;&nbsp;&nbsp;\n&nbsp;&nbsp;&nbsp;&nbsp;top:&nbsp;33px;&nbsp;&nbsp;\n}&nbsp;&nbsp;\n#first&nbsp;p{&nbsp;padding:10px;&nbsp;line-height:1.5;&nbsp;color:#FFF;}</pre><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; outline: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(51, 51, 51); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 19.5px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(255, 0, 0);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-weight: 700; outline: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">方法2：</span></span></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; outline: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(51, 51, 51); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 19.5px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-weight: 700; outline: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">html</span></p><pre class=\"brush:xhtml;\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow: auto; font-family: monospace, monospace; font-size: 1em; line-height: 1.42857; word-break: break-all; word-wrap: break-word; border: 1px solid rgb(204, 204, 204); border-radius: 4px; outline: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); background-color: rgb(245, 245, 245);\">&lt;div&nbsp;class=&quot;w&quot;&gt;&nbsp;&nbsp;\n&nbsp;&nbsp;&lt;div&nbsp;class=&quot;x&quot;&gt;&nbsp;&nbsp;\n&nbsp;&nbsp;&nbsp;&nbsp;&lt;p&gt;&lt;a&nbsp;href=&quot;#&quot;&gt;用面向对象的思想去书写css,用面向对象的心态去书写css。&lt;/a&gt;&lt;/p&gt;&nbsp;&nbsp;\n&nbsp;&nbsp;&nbsp;&nbsp;&lt;span&nbsp;class=&quot;z&quot;&gt;◆&lt;/span&gt;&nbsp;&lt;span&nbsp;class=&quot;y&quot;&gt;◆&lt;/span&gt;&nbsp;&lt;/div&gt;&nbsp;&nbsp;\n&lt;/div&gt;</pre><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; outline: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(51, 51, 51); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 19.5px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-weight: 700; outline: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">css</span></p><pre class=\"brush:css;\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow: auto; font-family: monospace, monospace; font-size: 1em; line-height: 1.42857; word-break: break-all; word-wrap: break-word; border: 1px solid rgb(204, 204, 204); border-radius: 4px; outline: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); background-color: rgb(245, 245, 245);\">*&nbsp;{&nbsp;&nbsp;\nmargin:&nbsp;0;&nbsp;&nbsp;\npadding:&nbsp;0;&nbsp;&nbsp;\n}&nbsp;&nbsp;\na{&nbsp;color:#666;&nbsp;text-decoration:none;&nbsp;line-height:25px;&nbsp;text-indent:24px;}&nbsp;&nbsp;\n.w{&nbsp;width:200px;&nbsp;position:absolute;&nbsp;background:#999;&nbsp;left:400px;&nbsp;top:200px;&nbsp;font-size:12px;&nbsp;text-align:left}/*模拟灰色阴影背景层*/&nbsp;&nbsp;\n.x{&nbsp;width:180px;&nbsp;position:relative;&nbsp;background:#fff;&nbsp;&nbsp;border:1px&nbsp;solid&nbsp;#ccc;&nbsp;padding:10px;&nbsp;left:-4px;&nbsp;top:-4px;}/*内容div*/&nbsp;&nbsp;\n.y&nbsp;,&nbsp;.z{&nbsp;&nbsp;\nposition:&nbsp;absolute;&nbsp;&nbsp;\nleft:&nbsp;141px;&nbsp;&nbsp;\n}&nbsp;&nbsp;\n.y{&nbsp;&nbsp;\ncolor:&nbsp;#ccc;&nbsp;&nbsp;\nfont-size:&nbsp;19px;&nbsp;&nbsp;\ntop:-12px;&nbsp;&nbsp;\nz-index:1;&nbsp;&nbsp;\n}/*模拟小三角*/&nbsp;&nbsp;\n.z{&nbsp;&nbsp;\ncolor:&nbsp;#fff;&nbsp;&nbsp;\nfont-size:&nbsp;19px;&nbsp;&nbsp;\ntop:-11px;&nbsp;&nbsp;z-index:3;&nbsp;&nbsp;\n}/*模拟小三角*/</pre><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; outline: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(51, 51, 51); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 13px; line-height: 19.5px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(255, 0, 0);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-weight: 700; outline: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);\">方法3：</span></span></p><pre class=\"brush:xhtml;\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow: auto; font-family: monospace, monospace; font-size: 1em; line-height: 1.42857; word-break: break-all; word-wrap: break-word; border: 1px solid rgb(204, 204, 204); border-radius: 4px; outline: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); background-color: rgb(245, 245, 245);\">&lt;div&nbsp;id=&quot;content&quot;&gt;&nbsp;&lt;span&nbsp;class=&quot;out&quot;&gt;&lt;/span&gt;&lt;span&nbsp;class=&quot;iner&quot;&gt;&lt;/span&gt;&nbsp;&lt;span&nbsp;class=&quot;right&quot;&gt;&lt;/span&gt;&nbsp;&nbsp;\n&nbsp;&nbsp;&lt;p&gt;不管写什么内容，总之就是要实现无图小三角，要是有背景颜色那倒是极好的，没有的话也可以，就是稍微麻烦一点&lt;/p&gt;&nbsp;&nbsp;\n&lt;/div&gt;</pre><pre class=\"brush:css;\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow: auto; font-family: monospace, monospace; font-size: 1em; line-height: 1.42857; word-break: break-all; word-wrap: break-word; border: 1px solid rgb(204, 204, 204); border-radius: 4px; outline: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); background-color: rgb(245, 245, 245);\">#content&nbsp;{&nbsp;&nbsp;\ntext-indent:&nbsp;2em;&nbsp;&nbsp;\nbox-shadow:&nbsp;0px&nbsp;0px&nbsp;10px&nbsp;#999;&nbsp;&nbsp;\npadding:&nbsp;10px;&nbsp;&nbsp;\nfont-size:&nbsp;12px;&nbsp;&nbsp;\nline-height:&nbsp;1.5;&nbsp;&nbsp;\nborder-radius:&nbsp;5px;&nbsp;&nbsp;\nheight:&nbsp;100px;&nbsp;&nbsp;\nwidth:&nbsp;250px;&nbsp;&nbsp;\nposition:&nbsp;relative;&nbsp;&nbsp;\nmargin:&nbsp;200px&nbsp;auto;&nbsp;&nbsp;\nborder:&nbsp;1px&nbsp;solid&nbsp;#CCC;&nbsp;&nbsp;\n}&nbsp;&nbsp;\nspan&nbsp;{&nbsp;&nbsp;\nposition:&nbsp;absolute;&nbsp;&nbsp;\nleft:&nbsp;25px;&nbsp;&nbsp;\nheight:&nbsp;0px;&nbsp;&nbsp;\nwidth:&nbsp;0px;&nbsp;&nbsp;\n}&nbsp;&nbsp;\n/*上部小三角实现样式开始*/&nbsp;&nbsp;\nspan.out&nbsp;{&nbsp;&nbsp;\nline-height:&nbsp;0;&nbsp;&nbsp;\nborder-width:&nbsp;10px;&nbsp;&nbsp;\nborder-color:&nbsp;transparent&nbsp;transparent&nbsp;#CCC&nbsp;transparent;&nbsp;&nbsp;\nborder-style:&nbsp;dashed&nbsp;dashed&nbsp;solid&nbsp;dashed;&nbsp;&nbsp;\ntop:&nbsp;-20px;&nbsp;&nbsp;\n}&nbsp;&nbsp;\nspan.iner&nbsp;{&nbsp;&nbsp;\nborder-width:&nbsp;10px;&nbsp;&nbsp;\nborder-color:&nbsp;#fff&nbsp;transparent&nbsp;#FFF&nbsp;transparent;&nbsp;&nbsp;\nborder-style:&nbsp;dashed&nbsp;dashed&nbsp;solid&nbsp;dashed;&nbsp;&nbsp;\ntop:&nbsp;-19px;&nbsp;&nbsp;\nline-height:&nbsp;0;&nbsp;&nbsp;\n}&nbsp;&nbsp;\n/*右部小三角实现样式开始*/&nbsp;&nbsp;\nspan.right&nbsp;{&nbsp;&nbsp;\nbackground:&nbsp;#FFF;&nbsp;&nbsp;\nborder-width:&nbsp;1px;&nbsp;&nbsp;\nwidth:&nbsp;16px;&nbsp;&nbsp;\nheight:&nbsp;16px;&nbsp;&nbsp;\nborder-color:&nbsp;#CCC&nbsp;#CCC&nbsp;transparent&nbsp;transparent;&nbsp;&nbsp;\nborder-style:&nbsp;solid&nbsp;solid&nbsp;dashed&nbsp;dashed;&nbsp;&nbsp;\nleft:&nbsp;270px;&nbsp;&nbsp;\ntop:&nbsp;30px;&nbsp;&nbsp;\nborder-radius:&nbsp;0&nbsp;0&nbsp;100%&nbsp;0;/*这里radius的值不要选取绝对值因为在放大或者缩小的过程中会产生封不住口的现象*/&nbsp;&nbsp;\nline-height:&nbsp;0;&nbsp;&nbsp;\nbox-shadow:&nbsp;5px&nbsp;0&nbsp;10px&nbsp;#aaa;&nbsp;&nbsp;\n}</pre><p><br/></p>','0',0,1,0,'',0,0,106,1507425169,0,'CLTPHP','http://www.cltphp.com/','');
INSERT INTO `clt_article` VALUES (44,5,1,'admin','CLTPHP5.2.2发布','color:;font-weight:normal;','','CLTPHP5.2.2发布','CLTPHP5.2.2发布','<p><span style=\"color:#666666;font-family:Microsoft yahei, Arial, Tahoma, Verdana\"><span style=\"font-size: 14px; line-height: 24px; background-color: rgb(255, 255, 255);\">修改bug若干</span></span></p><p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, Arial, Tahoma, Verdana; font-size: 14px; line-height: 24px; background-color: rgb(255, 255, 255);\">下载地址：</span><strong><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, Arial, Tahoma, Verdana; font-size: 14px; line-height: 24px; text-decoration: none; background-color: rgb(255, 255, 255);\"><a href=\"http://qiniu.cltphp.com/cltphp5.2.2.zip\" target=\"_self\" title=\"CLTPHP5.2.2\" style=\"color: rgb(0, 176, 80);\"><span style=\"text-decoration: none; font-family: &#39;Microsoft yahei&#39;, Arial, Tahoma, Verdana; font-size: 14px; line-height: 24px; color: rgb(0, 176, 80); background-color: rgb(255, 255, 255);\">CLTPHP5.2.2</span></a></span></strong></p><p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, Arial, Tahoma, Verdana; font-size: 14px; line-height: 24px; background-color: rgb(255, 255, 255);\">补丁地址：</span><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft yahei&#39;, Arial, Tahoma, Verdana; font-size: 14px; line-height: 24px; text-decoration: none; background-color: rgb(255, 255, 255);\"><a href=\"http://qiniu.cltphp.com/CLTPHP5.2.1%E5%88%B05.2.2%E8%A1%A5%E4%B8%81.zip\" target=\"_self\" style=\"color: rgb(0, 176, 80);\"><strong><span style=\"text-decoration: none; font-family: &#39;Microsoft yahei&#39;, Arial, Tahoma, Verdana; font-size: 14px; line-height: 24px; color: rgb(0, 176, 80); background-color: rgb(255, 255, 255);\">CLTPHP5.2.1到5.2.2升级</span></strong></a></span></p>','0',1,1,0,'',0,0,1658,1507877194,1507879172,'CLTPHP','http://www.cltphp.com/','');
INSERT INTO `clt_article` VALUES (45,5,1,'admin','给我们一点点时间  我们给你一个新突破','color:;font-weight:normal;','','给我们一点点时间  我们给你一个新突破','给我们一点点时间  我们给你一个新突破','<p style=\"text-indent: 2em;\">说实话，最近这段时间我们太忙了<img src=\"http://img.baidu.com/hi/jx2/j_0016.gif\"/>，cltphp的开发，甚至可以说是搁浅了一段时间。不过，各位请耐心等待一下啊，给我们一点点时间，或许不止一点点，我们给你一个新突破。</p>','0',1,1,0,'',0,0,117,1512032568,1512032865,'CLTPHP','http://www.cltphp.com/','');
INSERT INTO `clt_article` VALUES (46,3,1,'admin','测试','color:;font-weight:normal;','','测试','测试','','0',0,1,0,'',0,0,1,1517218576,0,'CLTPHP','http://www.cltphp.com/','4,57,560');
--
-- 表的结构 `clt_auth_group`
-- 
DROP TABLE IF EXISTS `clt_auth_group`;
CREATE TABLE `clt_auth_group` (
  `group_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '全新ID',
  `title` char(100) NOT NULL DEFAULT '' COMMENT '标题',
  `status` tinyint(1) DEFAULT '0' COMMENT '状态',
  `rules` longtext COMMENT '规则',
  `addtime` int(11) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='管理员分组';

-- 
-- 导出`clt_auth_group`表中的数据 `clt_auth_group`
--
INSERT INTO `clt_auth_group` VALUES (1,'超级管理员',1,'0,1,2,277,270,15,16,119,120,121,145,17,149,116,117,118,151,181,18,108,114,112,109,110,111,3,5,128,127,126,4,230,232,129,189,190,193,192,240,239,241,243,244,245,242,246,7,9,14,234,13,235,236,237,238,27,29,161,163,164,162,38,167,182,169,166,28,48,247,248,31,32,249,250,251,45,170,171,175,174,173,46,176,183,179,178,265,196,197,202,198,252,253,254,255,256,203,205,204,257,272,267,269,206,207,212,208,213,258,259,260,261,262,209,215,214,263,273,',1465114224);
INSERT INTO `clt_auth_group` VALUES (2,'管理员',1,'1,15,16,120,146,40,41,7,8,12,139,11,136,154,137,138,135,25,140,141,142,9,13,157,158,159,160,155,14,156,27,29,37,161,163,164,162,38,167,182,168,169,165,166,35,36,39,28,31,32,33,34,44,45,170,171,172,173,174,175,46,176,183,177,178,179,48,49,',1465114224);
INSERT INTO `clt_auth_group` VALUES (3,'商品管理员',1,'27,29,161,163,164,162,38,167,182,169,166,',1465114224);
--
-- 表的结构 `clt_auth_rule`
-- 
DROP TABLE IF EXISTS `clt_auth_rule`;
CREATE TABLE `clt_auth_rule` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `href` char(80) NOT NULL DEFAULT '' COMMENT '权限点',
  `title` char(20) NOT NULL DEFAULT '' COMMENT '名称',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '类型（拓展字段）',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `authopen` tinyint(2) NOT NULL DEFAULT '1',
  `icon` varchar(40) DEFAULT NULL COMMENT '样式',
  `condition` char(100) DEFAULT '',
  `pid` int(5) NOT NULL DEFAULT '0' COMMENT '父栏目ID',
  `sort` int(11) DEFAULT '0' COMMENT '排序',
  `addtime` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `zt` int(1) DEFAULT NULL,
  `menustatus` tinyint(1) DEFAULT NULL COMMENT '菜单状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=282 DEFAULT CHARSET=utf8 COMMENT='权限节点';

-- 
-- 导出`clt_auth_rule`表中的数据 `clt_auth_rule`
--
INSERT INTO `clt_auth_rule` VALUES (1,'System','系统设置',1,1,0,'icon-cogs','',0,0,1446535750,1,1);
INSERT INTO `clt_auth_rule` VALUES (2,'System/system','系统设置',1,1,0,'','',1,1,1446535789,1,1);
INSERT INTO `clt_auth_rule` VALUES (3,'Database/database','数据库管理',1,1,0,'icon-database','',0,2,1446535805,1,1);
INSERT INTO `clt_auth_rule` VALUES (4,'Database/restore','还原数据库',1,1,0,'','',3,10,1446535750,1,1);
INSERT INTO `clt_auth_rule` VALUES (5,'Database/database','数据库备份',1,1,0,'','',3,1,1446535834,1,1);
INSERT INTO `clt_auth_rule` VALUES (7,'Category','栏目管理',1,1,0,'icon-list','',0,4,1446535875,1,1);
INSERT INTO `clt_auth_rule` VALUES (9,'Category/index','栏目列表',1,1,0,'','',7,0,1446535750,1,1);
INSERT INTO `clt_auth_rule` VALUES (13,'Category/edit','操作-修改',1,1,0,'','',9,3,1446535750,1,0);
INSERT INTO `clt_auth_rule` VALUES (14,'Category/add','操作-添加',1,1,0,'','',9,0,1446535750,1,0);
INSERT INTO `clt_auth_rule` VALUES (15,'Auth/adminList','权限管理',1,1,0,'icon-lifebuoy','',0,1,1446535750,1,1);
INSERT INTO `clt_auth_rule` VALUES (16,'Auth/adminList','管理员列表',1,1,0,'','',15,0,1446535750,1,1);
INSERT INTO `clt_auth_rule` VALUES (17,'Auth/adminGroup','用户组列表',1,1,0,'','',15,1,1446535750,1,1);
INSERT INTO `clt_auth_rule` VALUES (18,'Auth/adminRule','权限管理',1,1,0,'','',15,2,1446535750,1,1);
INSERT INTO `clt_auth_rule` VALUES (23,'Help/soft','软件下载',1,1,0,'','',22,50,1446711421,0,1);
INSERT INTO `clt_auth_rule` VALUES (27,'Users','会员管理',1,1,0,'icon-user','',0,5,1447231507,1,1);
INSERT INTO `clt_auth_rule` VALUES (28,'Function','网站功能',1,1,0,'icon-cog','',0,6,1447231590,1,1);
INSERT INTO `clt_auth_rule` VALUES (29,'Users/index','会员列表',1,1,0,'','',27,10,1447232085,1,1);
INSERT INTO `clt_auth_rule` VALUES (31,'Link/index','友情链接',1,1,0,'','',28,2,1447232183,0,1);
INSERT INTO `clt_auth_rule` VALUES (32,'Link/add','操作-添加',1,1,0,'','',31,1,1447639935,0,0);
INSERT INTO `clt_auth_rule` VALUES (36,'We/we_menu','自定义菜单',1,1,0,'','',35,50,1447842477,0,1);
INSERT INTO `clt_auth_rule` VALUES (38,'Users/userGroup','会员组',1,1,0,'','',27,50,1448413248,1,1);
INSERT INTO `clt_auth_rule` VALUES (39,'We/we_menu','自定义菜单',1,1,0,'','',36,50,1448501584,0,1);
INSERT INTO `clt_auth_rule` VALUES (45,'Ad/index','广告管理',1,1,0,'','',28,3,1450314297,1,1);
INSERT INTO `clt_auth_rule` VALUES (46,'Ad/type','广告位管理',1,1,0,'','',28,4,1450314324,1,1);
INSERT INTO `clt_auth_rule` VALUES (48,'Message/index','留言管理',1,1,0,'','',28,1,1451267354,0,1);
INSERT INTO `clt_auth_rule` VALUES (105,'System/runsys','操作-保存',1,1,0,'','',6,50,1461036331,1,0);
INSERT INTO `clt_auth_rule` VALUES (106,'System/runwesys','操作-保存',1,1,0,'','',10,50,1461037680,0,0);
INSERT INTO `clt_auth_rule` VALUES (107,'System/runemail','操作-保存',1,1,0,'','',19,50,1461039346,1,0);
INSERT INTO `clt_auth_rule` VALUES (108,'Auth/ruleAdd','操作-添加',1,1,0,'','',18,0,1461550835,1,0);
INSERT INTO `clt_auth_rule` VALUES (109,'Auth/ruleState','操作-状态',1,1,0,'','',18,5,1461550949,1,0);
INSERT INTO `clt_auth_rule` VALUES (110,'Auth/ruleTz','操作-验证',1,1,0,'','',18,6,1461551129,1,0);
INSERT INTO `clt_auth_rule` VALUES (111,'Auth/ruleorder','操作-排序',1,1,0,'','',18,7,1461551263,1,0);
INSERT INTO `clt_auth_rule` VALUES (112,'Auth/ruleDel','操作-删除',1,1,0,'','',18,4,1461551536,1,0);
INSERT INTO `clt_auth_rule` VALUES (114,'Auth/ruleEdit','操作-修改',1,1,0,'','',18,2,1461551913,1,0);
INSERT INTO `clt_auth_rule` VALUES (116,'Auth/groupEdit','操作-修改',1,1,0,'','',17,3,1461552326,1,0);
INSERT INTO `clt_auth_rule` VALUES (117,'Auth/groupDel','操作-删除',1,1,0,'','',17,30,1461552349,1,0);
INSERT INTO `clt_auth_rule` VALUES (118,'Auth/groupAccess','操作-权限',1,1,0,'','',17,40,1461552404,1,0);
INSERT INTO `clt_auth_rule` VALUES (119,'Auth/adminAdd','操作-添加',1,1,0,'','',16,0,1461553162,1,0);
INSERT INTO `clt_auth_rule` VALUES (120,'Auth/adminEdit','操作-修改',1,1,0,'','',16,2,1461554130,1,0);
INSERT INTO `clt_auth_rule` VALUES (121,'Auth/adminDel','操作-删除',1,1,0,'','',16,4,1461554152,1,0);
INSERT INTO `clt_auth_rule` VALUES (122,'System/source_runadd','操作-添加',1,1,0,'','',43,10,1461036331,1,0);
INSERT INTO `clt_auth_rule` VALUES (123,'System/source_order','操作-排序',1,1,0,'','',43,50,1461037680,1,0);
INSERT INTO `clt_auth_rule` VALUES (124,'System/source_runedit','操作-改存',1,1,0,'','',43,30,1461039346,1,0);
INSERT INTO `clt_auth_rule` VALUES (125,'System/source_del','操作-删除',1,1,0,'','',43,40,146103934,1,0);
INSERT INTO `clt_auth_rule` VALUES (126,'Database/export','操作-备份',1,1,0,'','',5,1,1461550835,1,0);
INSERT INTO `clt_auth_rule` VALUES (127,'Database/optimize','操作-优化',1,1,0,'','',5,1,1461550835,1,0);
INSERT INTO `clt_auth_rule` VALUES (128,'Database/repair','操作-修复',1,1,0,'','',5,1,1461550835,1,0);
INSERT INTO `clt_auth_rule` VALUES (129,'Database/delSqlFiles','操作-删除',1,1,0,'','',4,3,1461550835,1,0);
INSERT INTO `clt_auth_rule` VALUES (130,'System/bxgs_state','操作-状态',1,1,0,'','',67,5,1461550835,1,0);
INSERT INTO `clt_auth_rule` VALUES (131,'System/bxgs_edit','操作-修改',1,1,0,'','',67,1,1461550835,1,0);
INSERT INTO `clt_auth_rule` VALUES (132,'System/bxgs_runedit','操作-改存',1,1,0,'','',67,2,1461550835,1,0);
INSERT INTO `clt_auth_rule` VALUES (134,'System/myinfo_runedit','个人资料修改',1,1,0,'','',68,1,1461550835,1,0);
INSERT INTO `clt_auth_rule` VALUES (236,'Category/del','操作-删除',1,1,0,'','',9,5,1497424900,0,0);
INSERT INTO `clt_auth_rule` VALUES (230,'Database/restoreData','操作-还原',1,1,0,'','',4,1,1497423595,0,0);
INSERT INTO `clt_auth_rule` VALUES (145,'Auth/adminState','操作-状态',1,1,0,'','',16,5,1461550835,1,0);
INSERT INTO `clt_auth_rule` VALUES (149,'Auth/groupAdd','操作-添加',1,1,0,'','',17,1,1461550835,1,0);
INSERT INTO `clt_auth_rule` VALUES (151,'Auth/groupRunaccess','操作-权存',1,1,0,'','',17,50,1461550835,1,0);
INSERT INTO `clt_auth_rule` VALUES (153,'System/bxgs_runadd','操作-添存',1,1,0,'','',66,1,1461550835,1,0);
INSERT INTO `clt_auth_rule` VALUES (234,'Category/insert','操作-添存',1,1,0,'','',9,2,1497424143,0,0);
INSERT INTO `clt_auth_rule` VALUES (240,'Module/del','操作-删除',1,1,0,'','',190,4,1497425850,0,0);
INSERT INTO `clt_auth_rule` VALUES (239,'Module/moduleState','操作-状态',1,1,0,'','',190,5,1497425764,0,0);
INSERT INTO `clt_auth_rule` VALUES (238,'page/edit','单页编辑',1,1,0,'','',7,2,1497425142,0,0);
INSERT INTO `clt_auth_rule` VALUES (237,'Category/cOrder','操作-排序',1,1,0,'','',9,6,1497424979,0,0);
INSERT INTO `clt_auth_rule` VALUES (161,'Users/usersState','操作-状态',1,1,0,'','',29,1,1461550835,1,0);
INSERT INTO `clt_auth_rule` VALUES (162,'Users/delall','操作-全部删除',1,1,0,'','',29,4,1461550835,1,0);
INSERT INTO `clt_auth_rule` VALUES (163,'Users/edit','操作-编辑',1,1,0,'','',29,2,1461550835,1,0);
INSERT INTO `clt_auth_rule` VALUES (164,'Users/usersDel','操作-删除',1,1,0,'','',29,3,1461550835,1,0);
INSERT INTO `clt_auth_rule` VALUES (247,'Message/del','操作-删除',1,1,0,'','',48,1,1497427449,0,0);
INSERT INTO `clt_auth_rule` VALUES (166,'Users/groupOrder','操作-排序',1,1,0,'','',38,50,1461550835,1,0);
INSERT INTO `clt_auth_rule` VALUES (167,'Users/groupAdd','操作-添加',1,1,0,'','',38,10,1461550835,1,0);
INSERT INTO `clt_auth_rule` VALUES (169,'Users/groupDel','操作-删除',1,1,0,'','',38,30,1461550835,1,0);
INSERT INTO `clt_auth_rule` VALUES (170,'Ad/add','操作-添加',1,1,0,'','',45,1,1461550835,1,0);
INSERT INTO `clt_auth_rule` VALUES (171,'Ad/edit','操作-修改',1,1,0,'','',45,2,1461550835,1,0);
INSERT INTO `clt_auth_rule` VALUES (173,'Ad/del','操作-删除',1,1,0,'','',45,5,1461550835,1,0);
INSERT INTO `clt_auth_rule` VALUES (174,'Ad/adOrder','操作-排序',1,1,0,'','',45,4,1461550835,1,0);
INSERT INTO `clt_auth_rule` VALUES (175,'Ad/editState','操作-状态',1,1,0,'','',45,3,1461550835,1,0);
INSERT INTO `clt_auth_rule` VALUES (176,'Ad/addType','操作-添加',1,1,0,'','',46,1,1461550835,1,0);
INSERT INTO `clt_auth_rule` VALUES (252,'Template/edit','操作-编辑',1,1,0,'','',197,3,1497428906,0,0);
INSERT INTO `clt_auth_rule` VALUES (178,'Ad/delType','操作-删除',1,1,0,'','',46,4,1461550835,1,0);
INSERT INTO `clt_auth_rule` VALUES (179,'Ad/typeOrder','操作-排序',1,1,0,'','',46,3,1461550835,1,0);
INSERT INTO `clt_auth_rule` VALUES (180,'System/source_edit','操作-修改',1,1,0,'','',43,20,1461832933,1,0);
INSERT INTO `clt_auth_rule` VALUES (181,'Auth/groupState','操作-状态',1,1,0,'','',17,50,1461834340,1,0);
INSERT INTO `clt_auth_rule` VALUES (182,'Users/groupEdit','操作-修改',1,1,0,'','',38,15,1461834780,1,0);
INSERT INTO `clt_auth_rule` VALUES (183,'Ad/editType','操作-修改',1,1,0,'','',46,2,1461834988,1,0);
INSERT INTO `clt_auth_rule` VALUES (188,'Plug/donation','捐赠列表',1,1,0,'','',187,50,1466563673,0,1);
INSERT INTO `clt_auth_rule` VALUES (189,'Module','模型管理',1,1,0,'icon-ungroup','',0,3,1466825363,0,1);
INSERT INTO `clt_auth_rule` VALUES (190,'Module/index','模型列表',1,1,0,'','',189,1,1466826681,0,1);
INSERT INTO `clt_auth_rule` VALUES (192,'Module/edit','操作-修改',1,1,0,'','',190,2,1467007920,0,0);
INSERT INTO `clt_auth_rule` VALUES (193,'Module/add','操作-添加',1,1,0,'','',190,1,1467007955,0,0);
INSERT INTO `clt_auth_rule` VALUES (196,'Template','模版管理',1,1,0,'icon-embed2','',0,7,1481857304,0,1);
INSERT INTO `clt_auth_rule` VALUES (197,'Template/index','模版管理',1,1,0,'','',196,1,1481857540,0,1);
INSERT INTO `clt_auth_rule` VALUES (198,'Template/insert','操作-添存',1,1,0,'','',197,2,1481857587,0,0);
INSERT INTO `clt_auth_rule` VALUES (202,'Template/add','操作-添加',1,1,0,'','',197,1,1481859447,0,0);
INSERT INTO `clt_auth_rule` VALUES (203,'Debris/index','碎片管理',1,1,0,'','',196,2,1484797759,0,1);
INSERT INTO `clt_auth_rule` VALUES (204,'Debris/edit','操作-编辑',1,1,0,'','',203,2,1484797849,0,0);
INSERT INTO `clt_auth_rule` VALUES (205,'Debris/add','操作-添加',1,1,0,'','',203,1,1484797878,0,0);
INSERT INTO `clt_auth_rule` VALUES (206,'Wechat','微信管理',1,1,0,'icon-bubbles2','',0,8,1487063570,0,1);
INSERT INTO `clt_auth_rule` VALUES (207,'Wechat/config','公众号管理',1,1,0,'','',206,1,1487063705,0,1);
INSERT INTO `clt_auth_rule` VALUES (208,'Wechat/menu','菜单管理',1,1,0,'','',206,2,1487063765,0,1);
INSERT INTO `clt_auth_rule` VALUES (209,'Wechat/materialmessage','消息素材',1,1,0,'','',206,3,1487063834,0,1);
INSERT INTO `clt_auth_rule` VALUES (212,'Wechat/weixin','操作-设置',1,1,0,'','',207,1,1487064541,0,0);
INSERT INTO `clt_auth_rule` VALUES (213,'Wechat/addMenu','操作-添加',1,1,0,'','',208,1,1487149151,0,0);
INSERT INTO `clt_auth_rule` VALUES (214,'Wechat/editText','操作-编辑',1,1,0,'','',209,2,1487233984,0,0);
INSERT INTO `clt_auth_rule` VALUES (215,'Wechat/addText','操作-添加',1,1,0,'','',209,1,1487234062,0,0);
INSERT INTO `clt_auth_rule` VALUES (232,'Database/downFile','操作-下载',1,1,0,'','',4,2,1497423744,0,0);
INSERT INTO `clt_auth_rule` VALUES (235,'Category/catUpdate','操作-该存',1,1,0,'','',9,4,1497424301,0,0);
INSERT INTO `clt_auth_rule` VALUES (241,'Module/field','模型字段',1,1,0,'','',190,6,1497425972,0,0);
INSERT INTO `clt_auth_rule` VALUES (242,'Module/fieldStatus','操作-状态',1,1,0,'','',241,4,1497426044,0,0);
INSERT INTO `clt_auth_rule` VALUES (243,'Module/fieldAdd','操作-添加',1,1,0,'','',241,1,1497426089,0,0);
INSERT INTO `clt_auth_rule` VALUES (244,'Module/fieldEdit','操作-修改',1,1,0,'','',241,2,1497426134,0,0);
INSERT INTO `clt_auth_rule` VALUES (245,'Module/listOrder','操作-排序',1,1,0,'','',241,3,1497426179,0,0);
INSERT INTO `clt_auth_rule` VALUES (246,'Module/fieldDel','操作-删除',1,1,0,'','',241,5,1497426241,0,0);
INSERT INTO `clt_auth_rule` VALUES (248,'Message/delall','操作-删除全部',1,1,0,'','',48,2,1497427534,0,0);
INSERT INTO `clt_auth_rule` VALUES (249,'Link/edit','操作-编辑',1,1,0,'','',31,2,1497427694,0,0);
INSERT INTO `clt_auth_rule` VALUES (250,'Link/linkState','操作-状态',1,1,0,'','',31,3,1497427734,0,0);
INSERT INTO `clt_auth_rule` VALUES (251,'Link/del','操作-删除',1,1,0,'','',31,4,1497427780,0,0);
INSERT INTO `clt_auth_rule` VALUES (253,'Template/update','操作-改存',1,1,0,'','',197,4,1497428951,0,0);
INSERT INTO `clt_auth_rule` VALUES (254,'Template/delete','操作-删除',1,1,0,'','',197,5,1497429018,0,0);
INSERT INTO `clt_auth_rule` VALUES (255,'Template/images','媒体文件管理',1,1,0,'','',197,6,1497429157,0,0);
INSERT INTO `clt_auth_rule` VALUES (256,'Template/imgDel','操作-文件删除',1,1,0,'','',255,1,1497429217,0,0);
INSERT INTO `clt_auth_rule` VALUES (257,'Debris/del','操作-删除',1,1,0,'','',203,3,1497429416,0,0);
INSERT INTO `clt_auth_rule` VALUES (258,'Wechat/editMenu','操作-编辑',1,1,0,'','',208,2,1497429671,0,0);
INSERT INTO `clt_auth_rule` VALUES (259,'Wechat/menuOrder','操作-排序',1,1,0,'','',208,3,1497429707,0,0);
INSERT INTO `clt_auth_rule` VALUES (260,'Wechat/menuState','操作-状态',1,1,0,'','',208,4,1497429764,0,0);
INSERT INTO `clt_auth_rule` VALUES (261,'Wechat/delMenu','操作-删除',1,1,0,'','',208,5,1497429822,0,0);
INSERT INTO `clt_auth_rule` VALUES (262,'Wechat/createMenu','操作-生成菜单',1,1,0,'','',208,6,1497429886,0,0);
INSERT INTO `clt_auth_rule` VALUES (263,'Wechat/delText','操作-删除',1,1,0,'','',209,3,1497430020,0,0);
INSERT INTO `clt_auth_rule` VALUES (265,'Donation/index','捐赠管理',1,1,0,'','',28,5,1498101716,0,1);
INSERT INTO `clt_auth_rule` VALUES (273,'Wechat/replay','回复设置',1,1,0,'','',206,4,1508215988,0,1);
INSERT INTO `clt_auth_rule` VALUES (267,'Plugin/index','插件管理',1,1,1,'icon-power-cord','',0,8,1501466560,0,1);
INSERT INTO `clt_auth_rule` VALUES (269,'Plugin/login','登录插件',1,1,1,'','',267,1,1501466732,0,1);
INSERT INTO `clt_auth_rule` VALUES (270,'System/email','邮箱配置',1,1,0,'','',1,2,1502331829,0,1);
INSERT INTO `clt_auth_rule` VALUES (272,'Debris/type','碎片分类',1,1,1,'','',196,3,1504082720,0,1);
INSERT INTO `clt_auth_rule` VALUES (278,'Blog','文章管理',1,1,1,'icon-cogs','',0,0,1532929640,0,1);
INSERT INTO `clt_auth_rule` VALUES (279,'Blog/index','文章列表',1,1,1,'','',278,50,1532935726,0,1);
--
-- 表的结构 `clt_blog`
-- 
DROP TABLE IF EXISTS `clt_blog`;
CREATE TABLE `clt_blog` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(128) DEFAULT NULL,
  `catid` int(5) unsigned DEFAULT NULL,
  `userid` int(8) unsigned DEFAULT '1' COMMENT '作者',
  `username` varchar(40) DEFAULT '',
  `description` varchar(128) DEFAULT NULL COMMENT '简介',
  `text` text,
  `label_id` varchar(255) DEFAULT NULL,
  `label` varchar(10) DEFAULT NULL COMMENT '标签',
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '状态：1发布，2不发布',
  `click` int(10) unsigned DEFAULT '0' COMMENT '点击量',
  `heart` int(10) unsigned DEFAULT NULL COMMENT '点赞量',
  `create_time` int(10) unsigned NOT NULL,
  `update_time` int(10) unsigned NOT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL COMMENT '缩略图',
  `delete_time` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

-- 
-- 导出`clt_blog`表中的数据 `clt_blog`
--
INSERT INTO `clt_blog` VALUES (15,'初识jquery',3,1,'','jQuery是轻量级的框架，大小不到30kb,它有强大的选择器，出色的DOM操作的封装，有可靠的事件处理机制，完善的ajax出色的浏览器的兼容性。 而且支持链式操作，隐式迭代。行为层和结构层的分离，还支持丰富的插件，jquery的文档也非常的丰富','<p>1.<strong>你为什么要用jquery？</strong></p><p>答：因为jQuery是轻量级的框架，大小不到30kb,它有强大的选择器，出色的DOM操作的封装，有可靠的事件处理机制(jQuery在处理事件绑定的时候相当的可靠)，完善的ajax(它的ajax封装的非常的好，不需要考虑复杂浏览器的兼容性和XMLHttpRequest对象的创建和使用的问题。)&nbsp;出色的浏览器的兼容性。&nbsp;而且支持链式操作，隐式迭代。行为层和结构层的分离，还支持丰富的插件，jquery的文档也非常的丰富。</p><p><strong>&nbsp;</strong></p><p><strong>2</strong> <strong>举例说明jquery对象和dom对象如何相互转化的</strong></p><p>答: jquery 对象 $(‘#id’)转成dom对象 $(‘#id’)[0]</p><p>dom对象 Var id = document.getElementById(‘id’);</p><p>转成jquery对象 Var id = $(id);</p><p><strong>Jquery02</strong><strong>天</strong></p><ol class=\" list-paddingleft-2\"><li><p><strong> 1 &lt;div&gt;2&lt;p&gt;&lt;/p&gt;3&lt;/div&gt;4 </strong><strong>想在1234 分别插入节点用的是哪几个方法？</strong></p></li></ol><p>答:befor prepend append after</p><ol class=\" list-paddingleft-2\"><li><p><strong>删除节点常用的是哪两个方法，并简述区别</strong></p></li></ol><p>答: empty（）删除元素中所有子节点</p><p>Remove（）删除元素本身</p><p><strong>5.window.onload()，$(function(){})两者的作用和区别是什么？</strong></p><p>答：都是在页面加载完成之后, 调用，window.onload用于js，只能执行一次，后面覆盖前面，$(function(){})可以执行多少</p><p><strong>6.</strong><strong>jquery</strong><strong>克隆节点是哪个方法，里面的参数表示什么含义？</strong></p><p>答: &nbsp;clone(),参数默认为false 表示不克隆事件，只克隆节点</p><ol class=\" list-paddingleft-2\"><li><p><strong>关于jquery内容操作，html(),text(),val()三者有何区别？</strong></p></li></ol><p>答: html()获取包含标签的文本，text()获取纯文本，val()获取input value值</p><ol class=\" list-paddingleft-2\"><li><p><strong>写出jquery获取&lt;input type=’text’ id =’txt’name=’username’class=‘txt’&gt;对象的几种方式？</strong></p></li></ol><p>$(‘inpu’) $(‘input[type = text]) $(‘#txt’) $(‘.txt’)</p><p><strong>Jquery03</strong><strong>天</strong></p><ol class=\" list-paddingleft-2\"><li><p><strong>解释事件绑定中bind() unbind() one()三者的含义？</strong></p></li></ol><p>答:bind()绑定事件，unbind()取消绑定的事件，one()绑定事件触发一次</p><ol class=\" list-paddingleft-2\"><li><p>10.<strong> jquery</strong><strong>动画常用的几个方法是，都是什么作用？</strong></p></li></ol><p>Show() 显示 hide()隐藏 fadeIn 淡入 fadeOut淡出 fadeTo()透明度 淡入 slideDown 下拉 slideUp 上卷 animate()动画</p><p><br/></p>','1,2',0,1,0,0,1531191671,1531191671,'jquery，初级','/public/static/index/images/toppic01.jpg',0);
INSERT INTO `clt_blog` VALUES (16,'JavaScript面试题',3,1,'','JavaScript','<p><strong>&nbsp; &nbsp;1</strong><strong> JavaScript是一种</strong><strong>_</strong><strong>____</strong><strong>和</strong><strong>_</strong><strong>_____</strong><strong>并具有安全性能的脚本语言。使用这种语言的目的是：与Web客户</strong><strong>_</strong><strong>____</strong><strong>，</strong><strong>_</strong><strong>_____</strong><strong>等</strong></p><p><strong>&nbsp;</strong></p><ol class=\" list-paddingleft-2\"><li><p><strong>js有</strong><strong>哪几种数据类型</strong><strong>？</strong></p></li></ol><p><strong>&nbsp;</strong></p><ol class=\" list-paddingleft-2\"><li><p><strong>要想</strong><strong>获取到某一个标签元素，可以使用哪几个方法？</strong></p></li></ol><p>&nbsp;</p><p><strong>&nbsp; &nbsp; &nbsp;4.</strong><strong>window.onload()</strong><strong>的</strong><strong>作用是</strong><strong>什么</strong><strong>？</strong></p><p>&nbsp;</p><p><strong>&nbsp; &nbsp; &nbsp;5.</strong><strong>js常用</strong><strong>的输出语句有哪几个？</strong></p><p>&nbsp;</p><ol class=\" list-paddingleft-2\"><li><p><strong>js定时器</strong><strong>用的是哪两个函数？之间的区别是什么？</strong></p></li></ol><p>&nbsp;</p><ol class=\" list-paddingleft-2\"><li><p><strong>常用的</strong><strong>鼠标事件有哪几个</strong><strong>，</strong><strong>都有什么作用</strong></p></li></ol><p>&nbsp;</p><ol class=\" list-paddingleft-2\"><li><p><strong>键盘</strong><strong>事件有那些？</strong></p></li></ol><p>&nbsp;</p><ol class=\" list-paddingleft-2\"><li><p><strong>得到焦点</strong><strong>，失去焦点是哪个事件？</strong></p></li></ol><p>&nbsp;</p><p>10.<strong>写出几个用</strong><strong>的BOM对象</strong></p><p><br></p>','1',0,1,1,0,1531191834,1533176033,'JavaScript','/public/static/index/images/toppic02.jpg',0);
INSERT INTO `clt_blog` VALUES (17,'面试题',4,1,'','面试题','<h2>1. 写一下邮箱的正则表达式</h2><h2><span style=\"color: rgb(0, 0, 0); font-size: 16px;\">2.将数组转换为json的方法</span></h2><h2><span style=\"color: rgb(0, 0, 0); font-size: 16px;\">3.数据库获取新插入数据的id方法</span></h2><h2><span style=\"color: rgb(0, 0, 0); font-size: 16px;\">4.Ajax原理</span></h2><h2><span style=\"color: rgb(0, 0, 0); font-size: 16px;\">5.jsonp跨域的原理</span></h2><h2><span style=\"color: rgb(0, 0, 0); font-size: 16px;\">6.php定义常量</span></h2><h2><span style=\"color: rgb(0, 0, 0); font-size: 16px;\">7.php引入公共文件的方法</span></h2><h2><span style=\"color: rgb(0, 0, 0); font-size: 16px;\">8.写一下jq中ajax里常用的参数</span></h2><h2><span style=\"color: rgb(0, 0, 0); font-size: 16px;\">9.ajax控制同步异步的参数是？默认值是？</span></h2><h2><span style=\"color: rgb(0, 0, 0); font-size: 16px;\">10.说下对前后台数据交互的理解</span></h2><p>1.cookie 和session有什么区别？</p><p>&nbsp;</p><p>2.怎么设置cookie ,username为zhangsan永不过期？</p><p>&nbsp;</p><p>3.怎么读取cookie？</p><p>&nbsp;</p><p>4.怎么删除cookie,两种方式？</p><p>&nbsp;</p><p>5.php文件中怎么开启session？</p><p>&nbsp;</p><p>6.php怎么获取session_id？</p><p>&nbsp;</p><p>7.怎么把username为zhangsan存放到session中？</p><p>&nbsp;</p><p>8.销毁session的两种方式</p><p>&nbsp;</p><p>9.怎么在php.ini中设置session文件的保存路径</p><p>&nbsp;</p><p>10.会话控制的思想是什么?</p><p><br/></p>','1,2,4',0,1,2,0,1531192105,1531192105,'面试题','/public/static/index/images/v1.jpg',0);
INSERT INTO `clt_blog` VALUES (18,'php面试题',4,1,'','php','<p><strong>面向对象三大特性是指？</strong></p><p>&nbsp;</p><p><strong>我们学习过的魔术方法有哪些？ </strong></p><p><strong><br></strong></p><p>&nbsp;<strong>static </strong><strong>关键字只能修饰什么?</strong></p><p>&nbsp;</p><p><strong>final只能修饰什么？</strong></p><p>&nbsp;</p><p><strong>对象串行化 和反串行化的两个函数？</strong></p><p>&nbsp;</p><p><strong>检查对象和类是否具有该属性是哪个函数,返回有类的方法名组成的数组是哪个函数？</strong></p><p>&nbsp;</p><p>&nbsp;<strong>如果m1方法里可以调用m2方法,m2方法却不能调用m1方法,那么谁是抽象方法,谁是普通方法？</strong></p><p>&nbsp;</p><p><strong>接口用哪个关键字定义,哪个关键字实现?</strong></p><p>&nbsp;</p><p><strong>接口是单继承还是多继承?抽象类能被继承吗?</strong></p><p>&nbsp;</p><p><strong>类外可以访问受保护的方法吗?子类可以访问父类受保护的方法吗?</strong></p><p><br></p>','4',0,1,1,0,1531192225,1533188952,'php，面试题','/public/static/index/images/v1.jpg',0);
INSERT INTO `clt_blog` VALUES (19,'tp3与tp5',4,1,'','','<p>引于http://www.cnblogs.com/wupeiky/p/5809320.html<br/>* 1、过去的单字母函数已完全被替换掉，如下：</p><p>S=&gt;cache，C=&gt;config，M/D=&gt;model，U=&gt;url，I=&gt;input，E=&gt;exception，L=&gt;lang，A=&gt;controller，R=&gt;action</p><p>2、模版渲染：$this-&gt;display() =&gt; return view()/return $this-&gt;fetch();</p><p>3、在model中调用自身model：$this =&gt; Db::table($this-&gt;table)</p><p>4、在新建控制器与模型时的命名：</p><p>①控制器去掉后缀controller：UserController =&gt; User</p><p>②模型去掉后缀model：UserModel =&gt; User</p><p>5、url访问：</p><p>如果控制器名使用驼峰法，访问时需要将各字母之间用下划线链接后进行访问。</p><p>eg：控制器名为AddUser，访问是用add_user来进行访问</p><p>6、在TP5中支持配置二级参数（即二维数组），配置文件中，二级配置参数读取：</p><p>①Config::get(&#39;user.type&#39;);</p><p>②config(&#39;user.type&#39;);</p><p>7、模板中支持三元运算符的运算：{$info.status ? $info.msg : $info.error}还支持这种写法：{$varname.aa ?? &#39;xxx&#39;}或{$varname.aa ?: &#39;xxx&#39;}</p><p>8、TP5内置标签：</p><p>系统内置的标签中，volist、switch、if、elseif、else、foreach、compare（包括所有的比较标签）、（not）present、（not）empty、（not）defined等</p><p>9、TP5数据验证：</p><p>$validate = new Validate([&#39;name&#39; =&gt; &#39;require|max:25&#39;,&#39;email&#39; =&gt; &#39;email&#39;]);</p><p>$data = [&#39;name&#39; =&gt; &#39;thinkphp&#39;,&#39;email&#39; =&gt; &#39;thinkphp@qq.com&#39;];</p><p>if(!validate-&gt;check($data)){</p><p>debug::dump($validate-&gt;getError());</p><p>}</p><p>注：使用助手函数实例化验证器——$validate = validate(&#39;User&#39;);</p><p>10、TP5实现了内置分页，使用如下：</p><p>查询状态为1的用户数据，且每页显示10条数据</p><p>$list = model(&#39;User&#39;)-&gt;where(&#39;status&#39;,1)-&gt;paginate(10);</p><p>$page = $this-&gt;render();</p><p>$this-&gt;assign(&#39;_list&#39;,$list);</p><p>$this-&gt;assign(&#39;_page&#39;,$page);</p><p>return $this-&gt;fetch();</p><p>模板文件中分页输出代码如下：</p><p>&lt;div&gt;{$_page}&lt;/div&gt;</p><p><br/></p>','4',0,1,3,0,1531192350,1531192350,'thinkphp,tp3,tp5','/public/static/index/images/toppic01.jpg',0);
INSERT INTO `clt_blog` VALUES (20,'Linux常见命令',6,1,'','各种在线手册连接','<p>thinkPHP在线手册：<a href=\"http://www.kancloud.cn/manual/thinkphp/1688\">http://www.kancloud.cn/manual/thinkphp/1688</a></p><p><a class=\"fa fa-home\" href=\"https://codeigniter.org.cn/user_guide/index.html#\"> CodeIgniter</a>框架在线手册：<a href=\"https://codeigniter.org.cn/user_guide/index.html\">https://codeigniter.org.cn/user_guide/index.html</a></p><p>JS特效：<a href=\"http://layer.layui.com/\">http://layer.layui.com/</a></p><p><br/></p>','5',0,1,5,0,1531193945,1531193945,'手册','/public/static/index/images/toppic01.jpg',0);
INSERT INTO `clt_blog` VALUES (21,'数据库监视操作',8,1,'','​mysql之触发器trigger mysq触发器：监视某种情况，并触发某种操作。','<h2 class=\"post-title\">mysql之触发器trigger</h2><h2>mysq触发器：监视某种情况，并触发某种操作。</h2><p>触发器创建语法四要素：</p><p>1.监视地点(table)&nbsp;2.监视事件(insert/update/delete)&nbsp;3.触发时间(after/before)&nbsp;4.触发事件(insert/update/delete)</p><p>语法：</p><p>create trigger triggerName</p><p>after/before&nbsp;insert/update/delete&nbsp;on&nbsp;表名</p><p>for each row &nbsp;&nbsp;#这句话在mysql是固定的</p><p>begin</p><p>sql语句;</p><p>end;</p><p>注：各自颜色对应上面的四要素。</p><p>例：</p><p>mysql&gt; create trigger t1<br/>-&gt; before insert on orders<br/>-&gt; for each row<br/>-&gt; begin<br/>-&gt; declare nums int;<br/>-&gt; select num into nums from goods where id = new.goods_id;<br/>-&gt; if new.total &gt;nums<br/>-&gt; then set new.total = nums;<br/>-&gt; end if;<br/>-&gt; update goods set num = nums - new.total where id = new.goods_id;<br/>-&gt; end$<br/>Query OK, 0 rows affected (0.09 sec)</p><p>mysql&gt; insert into orders (id,total,goods_id) values(null,2,20)$<br/>Query OK, 1 row affected (0.00 sec)<br/>--------------------------------------------------------------------------<br/>mysql&gt; create trigger t2<br/>-&gt; after delete on orders<br/>-&gt; for each row<br/>-&gt; begin<br/>-&gt; update goods set num = num + old.total where id = old.goods_id;<br/>-&gt; end$<br/>Query OK, 0 rows affected (0.09 sec)<br/>--------------------------------------------------------------------------<br/>mysql&gt; create trigger t3<br/>-&gt; before update on orders<br/>-&gt; for each row<br/>-&gt; begin<br/>-&gt; update goods set num = num + (old.total - new.total) where id = new.goods_id;<br/>-&gt; end $<br/>Query OK, 0 rows affected (0.09 sec)</p><p><br/></p>','3',0,1,9,0,1531194057,1531194057,'数据库，监视','/public/static/index/images/toppic02.jpg',0);
INSERT INTO `clt_blog` VALUES (22,'PHPstorm快捷键',4,1,'','windows下phpstorm的快捷键','<p>windows下phpstorm的快捷键</p><p>ctrl+shift+n查找文件</p><p>ctrl+shift+f 在一个目录里查找一段代码(ctrl+f的升级版)</p><p>ctr+shift+r 在一个目录里查找一段代码并替换(ctrl+r的升级版)</p><p>CTRL+ALT ←/→ &nbsp;返回上次编辑的位置</p><p>ALT+ ←/→ &nbsp;切换代码视图，标签切换</p><p>ALT+ ↑/↓ &nbsp;在方法间快速移动定位</p><p>&nbsp;</p><p>ctrl+j插入活动代码提示<br/>ctrl+alt+t当前位置插入环绕代码<br/>alt+insert生成代码菜单<br/>ctrl+q查看代码注释<br/>ctrl+d复制当前行<br/>ctrl+y删除当前行<br/>shift+F6重命名<br/>ctrl+shift+u字母大小写转换<br/>ctrl+f查找<br/>ctrl+r替换<br/>F4查看源码</p><p>ctrl+shift+i查看变量或方法定义源<br/>ctrl+g跳转行<br/>ctrl+alt+F12跳转至当前文件在磁盘上的位置<br/>alt+down查看下一个方法<br/>alt+up查看上一个方法<br/>ctrl+alt+l重新格式化代码<br/>ctrl+shift+downstatement向下移动<br/>ctrl+shift+upstatement向上移动<br/>alt+shift+downline向下移动<br/>alt+shift+upline向上移动<br/>ctrl+/行注释<br/>ctrl+shift+/块注释<br/>ctrl+shift+n打开工程中的文件<br/>ctrl+b跳到变量申明处<br/>ctrl+[]匹配 {}[]<br/>ctrl+shift+]/[选中块代码<br/>ctrl+x剪切行<br/>ctrl+shift+v复制多个文本<br/>alt+left/right标签切换<br/>ctrl+p显示默认参数<br/>ctrl+F12在当前类文件里快速查找方法</p><p>--------------------------------------------------------------</p><p>phpstorm快捷键：<br/>// ctrl+shift+n 查找文件<br/>// ctrl+j 插入活动代码提示<br/>// ctrl+alt+t 当前位置插入环绕代码<br/>// alt+insert 生成代码菜单</p><p>// ctrl+q 查看代码注释<br/>// ctrl+d 复制当前行<br/>// ctrl+y 删除当前行<br/>// shift+F6 重命名<br/>// ctrl+shift+u 字母大小写转换<br/>// ctrl+f 查找<br/>// ctrl+r 替换<br/>// F4 查看源码<br/>// ctrl+shift+i 查看变量或方法定义源<br/>// ctrl+g 跳转行<br/>// ctrl+alt+F12 跳转至当前文件在磁盘上的位置<br/>// alt+down 查看下一个方法<br/>// alt+up 查看上一个方法<br/>// ctrl+alt+l 重新格式化代码<br/>// ctrl+shift+down statement向下移动<br/>// ctrl+shift+up statement向上移动<br/>// alt+shift+down line向下移动<br/>// alt+shift+up line向上移动<br/>// ctrl+/ 行注释<br/>// ctrl+shift+/ 块注释</p><p>// ctrl+shift+n 打开工程中的文件<br/>// ctrl+b 跳到变量申明处<br/>// ctrl+[] 匹配 {}[]<br/>// ctrl+shift+]/[ 选中块代码<br/>....<br/>// ctrl+x 剪切行<br/>// ctrl+shift+v 复制多个文本<br/>// alt+left/right 标签切换<br/>// ctrl+p 显示默认参数<br/>// ctrl+F12 在当前类文件里快速查找方法</p><p><br/></p>','4',0,1,1,0,1531194178,1531194178,'','/public/static/index/images/v1.jpg',0);
INSERT INTO `clt_blog` VALUES (23,'windows常用DOS命令',7,1,'','','<p>DOS常用命令详解 　　dir 列文件名 deltree 删除目录树 cls 清屏 cd 改变当前目录。 　　copy 拷贝文件 diskcopy 复制磁盘 del 删除文件 format 格式化磁盘。 　　edit 文本编辑 mem 查看内存状况 md 建立子目录 move 移动文件、改目录名。 　　more 分屏显示 type 显示文件内容 rd 删除目录。 　　sys 制作DOS系统盘。 　　ren 改变文件名 xcopy 拷贝目录与文件 chkdsk 检查磁盘 attrib 设置文件属性。 　　fdisk 硬盘分区 date 显示及修改日期 label 设置卷标号 defrag 磁盘碎片整理。 　　msd 系统检测 path 设置搜寻目录 share 文件共享 memmaker内存优化管理。 　　help 帮助 restore 恢复备份文件 set 设置环境变量 time 显示及修改时间。 　　tree 列目录树 debug 随机调试程序 doskey 重新调用DOS命令 prempt 设置提示符 undelete恢复被删的文件 scandisk检测、修理磁盘。 　　不常用DOS命令 　　diskcomp磁盘比较 append 设置非执行文件路径 　　expand 还原DOS文件 fasthelp快速显示帮助信息 　　fc 文件比较 interink启动服务器 　　setver 设置版本 intersvr启动客户机 　　subst 路径替换 qbasic Basic集成环境 　　vsafe 防病毒 unformat恢复已格式化的磁盘 　　ver 显示DOS版本号 smartdrv设置磁盘加速器 　　vol 显示磁盘卷标号 lh 将程序装入高端内存 　　ctty 改变控制设备 emm386 扩展内存管理 　　常用命令具体介绍: 　　一、Dir 　　显示目录文件和子目录列表，呵呵，这个当然是人人要知道的。 　　可以使用通配符（? 和 *），？表通配一个字符，*表通配任意字符 　　*.后缀 　　指定要查看后缀的文件。 上面其实也可以为“ . 后缀”,例如dir *.exe 等于dir .exe 　　/p 　　每次显示一个列表屏幕。要查看下一屏，请按键盘上的任意键。 　　/w 　　以宽格式显示列表，在每一行上最多显示 5 个文件名或目录名。 　　/s 　　列出指定目录及所有子目录中出现的每个指定的文件名。比win环境下的查找快多了 　　dir *.* -&gt; a.txt 把当前目录文件列表写入a.txt 　　dir *.* /s -&gt; a.txt 把当前目录文件列表写入a.txt，包括子目录下文件。 　　二、Attrib 　　显示、设置或删除指派给文件或目录的只读、存档、系统以及隐藏属性。如果在不含参数的情况下使用，则 attrib 会显示当前目录中所有文件的属性。 　　+r 设置只读属性。 　　-r 清除只读属性。 　　+a 设置存档文件属性。 　　-a 清除存档文件属性。 　　+s 设置系统属性。 　　-s 清除系统属性。 　　+h 设置隐藏属性。 　　-h 清除隐藏属性。 　　三、Cls 　　清除显示在命令提示符窗口中的所有信息，并返回空窗口，即“清屏” 　　四、Exit 　　退出当前命令解释程序并返回到系统。 　　五、format 　　格式化 　　/q 执行快速格式化。删除以前已格式化卷的文件表和根目录，但不在扇区之间扫描损坏区域。使用 /q 命令行选项应该仅格式化以前已格式化的完好的卷。 　　六、Ipconfig 　　显示所有当前的 TCP/IP 网络配置值、刷新动态主机配置协议 (DHCP) 和域名系统 (DNS) 设置。使用不带参数的 ipconfig 可以显示所有适配器的 IP 地址、子网掩码、默认网关。 　　/all 显示所有适配器的完整 TCP/IP 配置信息。 　　ipconfig 等价于 winipcfg，后者在ME、98 和 95 上可用。尽管 <a class=\"baidu-highlight\" href=\"https://www.baidu.com/s?wd=Windows&tn=44039180_cpr&fenlei=mv6quAkxTZn0IZRqIHckPjm4nH00T1Y3nWb3nW99P1mvnhnduh7h0ZwV5Hcvrjm3rH6sPfKWUMw85HfYnjn4nH6sgvPsT6KdThsqpZwYTjCEQLGCpyw9Uz4Bmy-bIi4WUvYETgN-TLwGUv3En1mYnWb1P1Rv\" target=\"_blank\">Windows</a> XP 没有提供象 winipcfg 命令一样的图形化界面，但可以使用“网络连接”查看和更新 IP 地址。 要做到这一点，请打开 网络连接，右键单击某一网络连接，单击“状态”，然后单击“支持”选项卡。 　　该命令最适用于配置为自动获取 IP 地址的计算机。它使用户可以确定哪些 TCP/IP 配置值是由 DHCP、自动专用 IP 地址 (APIPA) 和其他配置配置的。 　　七、md 创建目录或子目录 　　八、Move 将一个或多个文件从一个目录移动到指定的目录。 　　九、Nbtstat 　　显示本地计算机和远程计算机的基于 TCP/IP (NetBT) 协议的 NetBIOS 统计资料、NetBIOS 名称表和 NetBIOS 名称缓存。 Nbtstat 可以刷新 NetBIOS 名称缓存和注册的 <a class=\"baidu-highlight\" href=\"https://www.baidu.com/s?wd=Windows&tn=44039180_cpr&fenlei=mv6quAkxTZn0IZRqIHckPjm4nH00T1Y3nWb3nW99P1mvnhnduh7h0ZwV5Hcvrjm3rH6sPfKWUMw85HfYnjn4nH6sgvPsT6KdThsqpZwYTjCEQLGCpyw9Uz4Bmy-bIi4WUvYETgN-TLwGUv3En1mYnWb1P1Rv\" target=\"_blank\">Windows</a> Internet 名称服务 (WINS) 名称。使用不带参数的 nbtstat 显示帮助。Nbtstat 命令行参数区分大小写。 　　-a remotename 　　显示远程计算机的 NetBIOS 名称表，其中，RemoteName 是远程计算机的 NetBIOS 计算机名称。 　　-A IPAddress 显示远程计算机的 NetBIOS 名称表，其名称由远程计算机的 IP 地址指定（以小数点分隔）。 　　十、Netstat 显示活动的 TCP 连接、计算机侦听的端口、以太网统计信息、IP 路由表、IPv4 统计信息（对于 IP、ICMP、TCP 和 UDP 协议）以及 IPv6 统计信息 （对于 IPv6、ICMPv6、通过 IPv6 的 TCP 以及通过 IPv6 的 UDP 协议）。使用时如果不带参数，netstat 显示活动的 TCP 连接。 　　-a 显示所有活动的 TCP 连接以及计算机侦听的 TCP 和 UDP 端口。 　　十一、Ping 通过发送“网际消息控制协议 (ICMP)”回响请求消息来验证与另一台 TCP/IP 计算机的 IP 级连接。回响应答消息的接收情况将和往返过程的次数一起显示出来。 Ping 是用于检测网络连接性、可到达性和名称解析的疑难问题的主要 TCP/IP 命令。如果不带参数，ping 将显示帮助。名称和Ip地址解析是它的最简单应用也是用的最多的。 　　-t 指定在中断前 ping 可以持续发送回响请求信息到目的地。要中断并显示统计信息，请按 CTRL-BREAK。要中断并退出 ping，请按 CTRL-C。 　　-lSize 　　指定发送的回响请求消息中“数据”字段的长度（以字节表示）。默认值为 32。size 的最大值是 65,527。 　　十二、Rename (Ren) 　　更改文件的名称。 例如 ren *.abc *.cba 　　十三、Set 显示、设置或删除环境变量。如果没有任何参数，set 命令将显示当前环境设置。 　　十四、Shutdown 允许您关闭或重新启动本地或远程计算机。如果没有使用参数，shutdown 将注销当前用户。 　　-m ComputerName 指定要关闭的计算机。 　　-t xx 将用于系统关闭的定时器设置为 xx 秒。默认值是 20 秒。 　　-l 注销当前用户，这是默认设置。-m ComputerName 优先。 　　-s 关闭本地计算机。 　　-r 关闭之后重新启动。 　　-a 中止关闭。除了 -l 和 ComputerName 外，系统将忽略其它参数。在超时期间，您只可以使用 -a。 　　十五、System File Checker (sfc) 　　win下才有，在重新启动计算机后扫描和验证所有受保护的系统文件。 　　/scannow 立即扫描所有受保护的系统文件。 　　/scanonce 一次扫描所有受保护的系统文件。 　　/purgecache 立即清除“<a class=\"baidu-highlight\" href=\"https://www.baidu.com/s?wd=Windows&tn=44039180_cpr&fenlei=mv6quAkxTZn0IZRqIHckPjm4nH00T1Y3nWb3nW99P1mvnhnduh7h0ZwV5Hcvrjm3rH6sPfKWUMw85HfYnjn4nH6sgvPsT6KdThsqpZwYTjCEQLGCpyw9Uz4Bmy-bIi4WUvYETgN-TLwGUv3En1mYnWb1P1Rv\" target=\"_blank\">Windows</a> 文件保护”文件高速缓存，并扫描所有受保护的系统文件。 　　/cachesize=x 设置“Windows 文件保护”文件高速缓存的大小，以 MB 为单位。 　　十六、type 显示文本文件的内容。使用 type 命令查看文本文件或者是bat文件而不修改文件 　　十七、Tree 图像化显示路径或驱动器中磁盘的目录结构。 　　十八、Xcopy 复制文件和目录，包括子目录。 　　/s 复制非空的目录和子目录。如果省略 /s，xcopy 将在一个目录中工作。 　　/e 复制所有子目录，包括空目录。 　　十九、copy 将一个或多个文件从一个位置复制到其他位置 　　二十、del 删除指定文件。</p>','3',0,1,1,0,1531194245,1531194245,'DOS命令，windows','/public/static/index/images/toppic01.jpg',0);
INSERT INTO `clt_blog` VALUES (24,'javascript深入理解js闭包',3,1,'','','<p><strong>一、变量的作用域</strong></p><p>要理解闭包，首先必须理解<a class=\"replace_word\" title=\"JavaScript知识库\" href=\"http://lib.csdn.net/base/javascript\" target=\"_blank\">JavaScript</a>特殊的变量作用域。</p><p>变量的作用域无非就是两种：全局变量和局部变量。</p><p>Javascript语言的特殊之处，就在于函数内部可以直接读取全局变量。<br/>Js代码</p><p>var n=999;</p><p>function f1(){<br/>alert(n);<br/>}</p><p>f1();&nbsp;// 999</p><p>另一方面，在函数外部自然无法读取函数内的局部变量。</p><p>Js代码</p><p>function f1(){<br/>var n=999;<br/>}</p><p>alert(n);&nbsp;// error</p><p>这里有一个地方需要注意，函数内部声明变量的时候，一定要使用var命令。如果不用的话，你实际上声明了一个全局变量！</p><p>Js代码</p><p>function f1(){<br/>n=999;<br/>}</p><p>f1();</p><p>alert(n);&nbsp;// 999</p><p><br/></p><p><strong>二、如何从外部读取局部变量？</strong></p><p>出于种种原因，我们有时候需要得到函数内的局部变量。但是，前面已经说过了，正常情况下，这是办不到的，只有通过变通方法才能实现。</p><p>那就是在函数的内部，再定义一个函数。</p><p>Js代码</p><p>function f1(){</p><p>n=999;</p><p>function f2(){<br/>alert(n);&nbsp;// 999<br/>}</p><p>}</p><p>在上面的代码中，函数f2就被包括在函数f1内部，这时f1内部的所有局部变量，对f2都是可见的。但是反过来就不行，f2内部的局部变量，对f1 就是不可见的。这就是Javascript语言特有的“链式作用域”结构（chain scope），</p><p>子对象会一级一级地向上寻找所有父对象的变量。所以，父对象的所有变量，对子对象都是可见的，反之则不成立。</p><p>既然f2可以读取f1中的局部变量，那么只要把f2作为返回值，我们不就可以在f1外部读取它的内部变量了吗！<br/>Js代码</p><p>function f1(){</p><p>n=999;</p><p>function f2(){<br/>alert(n);<br/>}</p><p>return f2;</p><p>}</p><p>var result=f1();</p><p>result();&nbsp;// 999</p><p><br/></p><p><strong>三、闭包的概念</strong></p><p>上一节代码中的f2函数，就是闭包。</p><p>各种专业文献上的“闭包”（closure）定义非常抽象，很难看懂。我的理解是，闭包就是能够读取其他函数内部变量的函数。</p><p>由于在Javascript语言中，只有函数内部的子函数才能读取局部变量，因此可以把闭包简单理解成“定义在一个函数内部的函数”。</p><p>所以，在本质上，闭包就是将函数内部和函数外部连接起来的一座桥梁。</p><p><br/></p><p><strong>四、闭包的用途</strong></p><p>闭包可以用在许多地方。它的最大用处有两个，一个是前面提到的可以读取函数内部的变量，另一个就是让这些变量的值始终保持在内存中。</p><p>怎么来理解这句话呢？请看下面的代码。<br/>Js代码</p><p>function f1(){</p><p>var n=999;</p><p>nAdd=function(){n+=1}</p><p>function f2(){<br/>alert(n);<br/>}</p><p>return f2;</p><p>}</p><p>var result=f1();</p><p>result();&nbsp;// 999</p><p>nAdd();</p><p>result();&nbsp;// 1000</p><p>在这段代码中，result实际上就是闭包f2函数。它一共运行了两次，第一次的值是999，第二次的值是1000。这证明了，函数f1中的局部变量n一直保存在内存中，并没有在f1调用后被自动清除。</p><p>为什么会这样呢？原因就在于f1是f2的父函数，而f2被赋给了一个全局变量，这导致f2始终在内存中，而f2的存在依赖于f1，因此f1也始终在内存中，不会在调用结束后，被垃圾回收机制（garbage collection）回收。</p><p>这段代码中另一个值得注意的地方，就是“nAdd=function(){n+=1}”这一行，首先在nAdd前面没有使用var关键字，因此 nAdd是一个全局变量，而不是局部变量。其次，nAdd的值是一个匿名函数（anonymous function），而这个</p><p>匿名函数本身也是一个闭包，所以nAdd相当于是一个setter，可以在函数外部对函数内部的局部变量进行操作。</p><p><br/></p><p><strong>五、使用闭包的注意点</strong></p><p>1）由于闭包会使得函数中的变量都被保存在内存中，内存消耗很大，所以不能滥用闭包，否则会造成网页的性能问题，在IE中可能导致内存泄露。解决方法是，在退出函数之前，将不使用的局部变量全部删除。</p><p>2）闭包会在父函数外部，改变父函数内部变量的值。所以，如果你把父函数当作对象（object）使用，把闭包当作它的公用方法（Public Method），把内部变量当作它的私有属性（private value），这时一定要小心，不要随便</p><p>改变父函数内部变量的值。</p><p><br/></p><p><strong>六、思考题</strong></p><p>如果你能理解下面代码的运行结果，应该就算理解闭包的运行机制了。</p><p>Js代码<br/>var name = &quot;The Window&quot;;<br/>var object = {<br/>name : &quot;My Object&quot;,<br/>getNameFunc : function(){<br/>return function(){<br/>return this.name;<br/>};<br/>}<br/>};<br/>alert(object.getNameFunc()());&nbsp;&nbsp;//The Window</p><p><br/><strong>JavaScript闭包例子</strong></p><p>function outerFun()<br/>{<br/>var a=0;<br/>function innerFun()<br/>{<br/>a++;<br/>alert(a);<br/>}<br/>}<br/>innerFun()</p><p>上面的代码是错误的.innerFun()的作用域在outerFun()内部,所在outerFun()外部调用它是错误的.</p><p>改成如下,也就是闭包:</p><p>Js代码</p><p>function outerFun()<br/>{<br/>var a=0;<br/>function innerFun()<br/>{<br/>a++;<br/>alert(a);<br/>}<br/>return innerFun;&nbsp;&nbsp;//注意这里<br/>}<br/>var obj=outerFun();<br/>obj();&nbsp;&nbsp;//结果为1<br/>obj();&nbsp;&nbsp;//结果为2<br/>var obj2=outerFun();<br/>obj2();&nbsp;&nbsp;//结果为1<br/>obj2();&nbsp;&nbsp;//结果为2</p><p>什么是闭包:</p><p>当内部函数 在定义它的作用域 的外部 被引用时,就创建了该内部函数的闭包 ,如果内部函数引用了位于外部函数的变量,当外部函数调用完毕后,这些变量在内存不会被 释放,因为闭包需要它们.</p><p><br/></p><p><strong>再来看一个例子</strong></p><p>Js代码</p><p>function outerFun()<br/>{<br/>var a =0;<br/>alert(a);<br/>}<br/>var a=4;<br/>outerFun();<br/>alert(a);</p><p>结果是&nbsp;0,4&nbsp;.&nbsp; 因为在函数内部使用了var关键字 维护a的作用域在outFun()内部.</p><p>再看下面的代码:</p><p>Js代码</p><p>function outerFun()<br/>{<br/>//没有var<br/>a =0;<br/>alert(a);<br/>}<br/>var a=4;<br/>outerFun();<br/>alert(a);<br/>结果为&nbsp;0,0&nbsp;真是奇怪,为什么呢?</p><p>作用域链是描述一种路径的术语,沿着该路径可以确定变量的值 .当执行a=0时,因为没有使用var关键字,因此赋值操作会沿着作用域链到var a=4;&nbsp; 并改变其值.</p><p><br/></p><p>如果你对javascript闭包还不是很理解，那么请看下面转载的文章：(转载:http://www.felixwoo.com/archives/247)</p><p><strong>一、什么是闭包？</strong></p><p>官方”的解释是：闭包是一个拥有许多变量和绑定了这些变量的环境的表达式（通常是一个函数），因而这些变量也是该表达式的一部分。<br/>相信很少有人能直接看懂这句话，因为他描述的太学术。其实这句话通俗的来说就是：<strong>JavaScript中所有的function都是一个闭包</strong>。不过一般来说，嵌套的function所产生的闭包更为强大，也是大部分时候我们所谓的“闭包”。看下面这段代码：</p><p><strong>[javascript]</strong> <a class=\"ViewSource\" title=\"view plain\" href=\"http://blog.csdn.net/zhaoliang831214/article/details/50939876#\">view plain</a> <a class=\"CopyToClipboard\" title=\"copy\" href=\"http://blog.csdn.net/zhaoliang831214/article/details/50939876#\">copy</a></p><p>&nbsp;</p><ol class=\" list-paddingleft-2\"><li><p>&lt;span&nbsp;style=<span class=\"string\">&quot;line-height:21.6000022888184px;&nbsp;font-size:12px;&nbsp;color:rgb(0,51,102)&quot;</span>&gt;&lt;strong&gt;<span class=\"keyword\">function</span>&lt;/strong&gt;&lt;/span&gt;&nbsp;a&lt;span&nbsp;style=<span class=\"string\">&quot;line-height:21.6000022888184px;&nbsp;font-size:12px;&nbsp;color:rgb(0,153,0)&quot;</span>&gt;(&lt;/span&gt;&lt;span&nbsp;style=<span class=\"string\">&quot;line-height:21.6000022888184px;&nbsp;font-size:12px;&nbsp;color:rgb(0,153,0)&quot;</span>&gt;)&lt;/span&gt;&nbsp;&lt;span&nbsp;style=<span class=\"string\">&quot;line-height:21.6000022888184px;&nbsp;font-size:12px;&nbsp;color:rgb(0,153,0)&quot;</span>&gt;{&lt;/span&gt;</p></li><li><p>&nbsp;&lt;span&nbsp;style=<span class=\"string\">&quot;line-height:21.6000022888184px;&nbsp;font-size:12px;&nbsp;color:rgb(0,51,102)&quot;</span>&gt;&lt;strong&gt;<span class=\"keyword\">var</span>&lt;/strong&gt;&lt;/span&gt;&nbsp;i&nbsp;&lt;span&nbsp;style=<span class=\"string\">&quot;line-height:21.6000022888184px;&nbsp;font-size:12px;&nbsp;color:rgb(51,153,51)&quot;</span>&gt;=&lt;/span&gt;&nbsp;&lt;span&nbsp;style=<span class=\"string\">&quot;line-height:21.6000022888184px;&nbsp;font-size:12px;&nbsp;color:rgb(204,0,0)&quot;</span>&gt;0&lt;/span&gt;&lt;span&nbsp;style=<span class=\"string\">&quot;line-height:21.6000022888184px;&nbsp;font-size:12px;&nbsp;color:rgb(51,153,51)&quot;</span>&gt;;&lt;/span&gt;</p></li><li><p>&nbsp;&lt;span&nbsp;style=<span class=\"string\">&quot;line-height:21.6000022888184px;&nbsp;font-size:12px;&nbsp;color:rgb(0,51,102)&quot;</span>&gt;&lt;strong&gt;<span class=\"keyword\">function</span>&lt;/strong&gt;&lt;/span&gt;&nbsp;b&lt;span&nbsp;style=<span class=\"string\">&quot;line-height:21.6000022888184px;&nbsp;font-size:12px;&nbsp;color:rgb(0,153,0)&quot;</span>&gt;(&lt;/span&gt;&lt;span&nbsp;style=<span class=\"string\">&quot;line-height:21.6000022888184px;&nbsp;font-size:12px;&nbsp;color:rgb(0,153,0)&quot;</span>&gt;)&lt;/span&gt;&nbsp;&lt;span&nbsp;style=<span class=\"string\">&quot;line-height:21.6000022888184px;&nbsp;font-size:12px;&nbsp;color:rgb(0,153,0)&quot;</span>&gt;{&lt;/span&gt;&nbsp;&lt;span&nbsp;style=<span class=\"string\">&quot;line-height:21.6000022888184px;&nbsp;font-size:12px;&nbsp;color:rgb(0,0,102)&quot;</span>&gt;alert&lt;/span&gt;&lt;span&nbsp;style=<span class=\"string\">&quot;line-height:21.6000022888184px;&nbsp;font-size:12px;&nbsp;color:rgb(0,153,0)&quot;</span>&gt;(&lt;/span&gt;&lt;span&nbsp;style=<span class=\"string\">&quot;line-height:21.6000022888184px;&nbsp;font-size:12px;&nbsp;color:rgb(51,153,51)&quot;</span>&gt;++&lt;/span&gt;i&lt;span&nbsp;style=<span class=\"string\">&quot;line-height:21.6000022888184px;&nbsp;font-size:12px;&nbsp;color:rgb(0,153,0)&quot;</span>&gt;)&lt;/span&gt;&lt;span&nbsp;style=<span class=\"string\">&quot;line-height:21.6000022888184px;&nbsp;font-size:12px;&nbsp;color:rgb(51,153,51)&quot;</span>&gt;;&lt;/span&gt;&nbsp;&lt;span&nbsp;style=<span class=\"string\">&quot;line-height:21.6000022888184px;&nbsp;font-size:12px;&nbsp;color:rgb(0,153,0)&quot;</span>&gt;}&lt;/span&gt;</p></li><li><p>&nbsp;&lt;span&nbsp;style=<span class=\"string\">&quot;line-height:21.6000022888184px;&nbsp;font-size:12px;&nbsp;color:rgb(0,0,102)&quot;</span>&gt;&lt;strong&gt;<span class=\"keyword\">return</span>&lt;/strong&gt;&lt;/span&gt;&nbsp;b&lt;span&nbsp;style=<span class=\"string\">&quot;line-height:21.6000022888184px;&nbsp;font-size:12px;&nbsp;color:rgb(51,153,51)&quot;</span>&gt;;</p></li><li><p>&lt;/span&gt;&lt;span&nbsp;style=<span class=\"string\">&quot;line-height:21.6000022888184px;&nbsp;font-size:12px;&nbsp;color:rgb(0,153,0)&quot;</span>&gt;}</p></li><li><p>&lt;/span&gt;&lt;span&nbsp;style=<span class=\"string\">&quot;line-height:21.6000022888184px;&nbsp;font-size:12px;&nbsp;color:rgb(0,51,102)&quot;</span>&gt;&lt;strong&gt;<span class=\"keyword\">var</span>&lt;/strong&gt;&lt;/span&gt;&nbsp;c&nbsp;&lt;span&nbsp;style=<span class=\"string\">&quot;line-height:21.6000022888184px;&nbsp;font-size:12px;&nbsp;color:rgb(51,153,51)&quot;</span>&gt;=&lt;/span&gt;&nbsp;a&lt;span&nbsp;style=<span class=\"string\">&quot;line-height:21.6000022888184px;&nbsp;font-size:12px;&nbsp;color:rgb(0,153,0)&quot;</span>&gt;(&lt;/span&gt;&lt;span&nbsp;style=<span class=\"string\">&quot;line-height:21.6000022888184px;&nbsp;font-size:12px;&nbsp;color:rgb(0,153,0)&quot;</span>&gt;)&lt;/span&gt;&lt;span&nbsp;style=<span class=\"string\">&quot;line-height:21.6000022888184px;&nbsp;font-size:12px;&nbsp;color:rgb(51,153,51)&quot;</span>&gt;;</p></li><li><p>&lt;/span&gt;c&lt;span&nbsp;style=<span class=\"string\">&quot;line-height:21.6000022888184px;&nbsp;font-size:12px;&nbsp;color:rgb(0,153,0)&quot;</span>&gt;(&lt;/span&gt;&lt;span&nbsp;style=<span class=\"string\">&quot;line-height:21.6000022888184px;&nbsp;font-size:12px;&nbsp;color:rgb(0,153,0)&quot;</span>&gt;)&lt;/span&gt;&lt;span&nbsp;style=<span class=\"string\">&quot;line-height:21.6000022888184px;&nbsp;font-size:12px;&nbsp;color:rgb(51,153,51)&quot;</span>&gt;;&lt;/span&gt;</p></li></ol><p><br/></p><p>这段代码有两个特点：</p><p>1、函数b嵌套在函数a内部；</p><p>2、函数a返回函数b。</p><p>引用关系如图：</p><p><img src=\"http://files.jb51.net/upload/201007/20100703001016918.jpg\" alt=\"\"/></p><p>这样在执行完var c=a()后，变量c实际上是指向了函数b，再执行c()后就会弹出一个窗口显示i的值(第一次为1)。这段代码其实就创建了一个闭包，为什么？因为函数a外的变量c引用了函数a内的函数b，就是说：</p><p><strong>当函数a的内部函数b被函数a外的一个变量引用的时候，就创建了一个闭包。<br/></strong></p><p>让我们说的更透彻一些。所谓“闭包”，就是在构造函数体内定义另外的函数作为目标对象的方法函数，而这个对象的方法函数反过来引用外层函数体中的临时变量。这使得只要目标 对象在生存期内始终能保持其方法，就能间接保持原构造函数体当时用到的临时变量值。尽管最开始的构造函数调用已经结束，临时变量的名称也都消失了，但在目 标对象的方法内却始终能引用到该变量的值，而且该值只能通这种方法来访问。即使再次调用相同的构造函数，但只会生成新对象和方法，新的临时变量只是对应新 的值，和上次那次调用的是各自独立的。</p><p><strong>二、闭包有什么作用？<br/></strong></p><p>简而言之，闭包的作用就是在a执行完并返回后，闭包使得Javascript的垃圾回收机制GC不会收回a所占用的资源，因为a的内部函数b的执行需要依赖a中的变量。这是对闭包作用的非常直白的描述，不专业也不严谨，但大概意思就是这样，理解闭包需要循序渐进的过程。</p><p>在上面的例子中，由于闭包的存在使得函数a返回后，a中的i始终存在，这样每次执行c()，i都是自加1后alert出i的值。</p><p>那 么我们来想象另一种情况，如果a返回的不是函数b，情况就完全不同了。因为a执行完后，b没有被返回给a的外界，只是被a所引用，而此时a也只会被b引 用，因此函数a和b互相引用但又不被外界打扰(被外界引用)，函数a和b就会被GC回收。(关于Javascript的垃圾回收机制将在后面详细介绍)</p><p><strong>三、闭包内的微观世界</strong></p><p>如果要更加深入的了解闭包以及函数a和嵌套函数b的关系，我们需要引入另外几个概念：函数的执行环境(excution context)、活动对象(call object)、作用域(scope)、作用域链(scope chain)。以函数a从定义到执行的过程为例阐述这几个概念。</p><ol class=\" list-paddingleft-2\"><li><p>当<strong>定义</strong>函数a的时候，js解释器会将函数a的<strong>作用域链(scope chain)</strong>设置为<strong>定义a时a所在的“环境”</strong>，如果a是一个全局函数，则scope chain中只有window对象。</p></li><li><p>当<strong>执行</strong>函数a的时候，a会进入相应的<strong>执行环境(excution context)</strong>。</p></li><li><p>在创建执行环境的过程中，首先会为a添加一个scope属性，即a的<strong>作用域</strong>，其值就为第1步中的scope chain。即a.scope=a的作用域链。</p></li><li><p>然后执行环境会创建一个<strong>活动对象(call object)</strong>。活动对象也是一个拥有属性的对象，但它不具有原型而且不能通过JavaScript代码直接访问。创建完活动对象后，把活动对象添加到a的作用域链的最顶端。此时a的作用域链包含了两个对象：a的活动对象和window对象。</p></li><li><p>下一步是在活动对象上添加一个arguments属性，它保存着调用函数a时所传递的参数。</p></li><li><p>最后把所有函数a的形参和内部的函数b的引用也添加到a的活动对象上。在这一步中，完成了函数b的的定义，因此如同第3步，函数b的作用域链被设置为b所被定义的环境，即a的作用域。</p></li></ol><p>到此，整个函数a从定义到执行的步骤就完成了。此时a返回函数b的引用给c，又函数b的作用域链包含了对函数a的活动对象的引用，也就是说b可以访问到a中定义的所有变量和函数。函数b被c引用，函数b又依赖函数a，因此函数a在返回后不会被GC回收。</p><p>当函数b执行的时候亦会像以上步骤一样。因此，执行时b的作用域链包含了3个对象：b的活动对象、a的活动对象和window对象，如下图所示：</p><p><img class=\"alignnone\" src=\"http://files.jb51.net/upload/201007/20100703001017585.jpg\" alt=\"\"/></p><p>如图所示，当在函数b中访问一个变量的时候，搜索顺序是：</p><ol class=\" list-paddingleft-2\"><li><p>先搜索自身的活动对象，如果存在则返回，如果不存在将继续搜索函数a的活动对象，依次查找，直到找到为止。</p></li><li><p>如果函数b存在prototype原型对象，则在查找完自身的活动对象后先查找自身的原型对象，再继续查找。这就是Javascript中的变量查找机制。</p></li><li><p>如果整个作用域链上都无法找到，则返回undefined。</p></li></ol><p>小结，本段中提到了两个重要的词语：函数的<strong>定义</strong>与<strong>执行</strong>。文中提到函数的作用域是在定义函数时候就已经确定，而不是在执行的时候确定（参看步骤1和3）。用一段代码来说明这个问题：</p><p><strong>[javascript]</strong> <a class=\"ViewSource\" title=\"view plain\" href=\"http://blog.csdn.net/zhaoliang831214/article/details/50939876#\">view plain</a> <a class=\"CopyToClipboard\" title=\"copy\" href=\"http://blog.csdn.net/zhaoliang831214/article/details/50939876#\">copy</a></p><ol class=\"dp-c list-paddingleft-2\"><li><p>&lt;span&nbsp;style=<span class=\"string\">&quot;line-height:21.6000022888184px;&nbsp;font-size:12px;&nbsp;color:rgb(0,51,102)&quot;</span>&gt;&lt;strong&gt;<span class=\"keyword\">function</span>&lt;/strong&gt;&lt;/span&gt;&nbsp;f&lt;span&nbsp;style=<span class=\"string\">&quot;line-height:21.6000022888184px;&nbsp;font-size:12px;&nbsp;color:rgb(0,153,0)&quot;</span>&gt;(&lt;/span&gt;x&lt;span&nbsp;style=<span class=\"string\">&quot;line-height:21.6000022888184px;&nbsp;font-size:12px;&nbsp;color:rgb(0,153,0)&quot;</span>&gt;)&lt;/span&gt;&nbsp;&lt;span&nbsp;style=<span class=\"string\">&quot;line-height:21.6000022888184px;&nbsp;font-size:12px;&nbsp;color:rgb(0,153,0)&quot;</span>&gt;{&lt;/span&gt;</p></li><li><p>&nbsp;&nbsp;&lt;span&nbsp;style=<span class=\"string\">&quot;line-height:21.6000022888184px;&nbsp;font-size:12px;&nbsp;color:rgb(0,51,102)&quot;</span>&gt;&lt;strong&gt;<span class=\"keyword\">var</span>&lt;/strong&gt;&lt;/span&gt;&nbsp;g&nbsp;&lt;span&nbsp;style=<span class=\"string\">&quot;line-height:21.6000022888184px;&nbsp;font-size:12px;&nbsp;color:rgb(51,153,51)&quot;</span>&gt;=&lt;/span&gt;&nbsp;&lt;span&nbsp;style=<span class=\"string\">&quot;line-height:21.6000022888184px;&nbsp;font-size:12px;&nbsp;color:rgb(0,51,102)&quot;</span>&gt;&lt;strong&gt;<span class=\"keyword\">function</span>&lt;/strong&gt;&lt;/span&gt;&nbsp;&lt;span&nbsp;style=<span class=\"string\">&quot;line-height:21.6000022888184px;&nbsp;font-size:12px;&nbsp;color:rgb(0,153,0)&quot;</span>&gt;(&lt;/span&gt;&lt;span&nbsp;style=<span class=\"string\">&quot;line-height:21.6000022888184px;&nbsp;font-size:12px;&nbsp;color:rgb(0,153,0)&quot;</span>&gt;)&lt;/span&gt;&nbsp;&lt;span&nbsp;style=<span class=\"string\">&quot;line-height:21.6000022888184px;&nbsp;font-size:12px;&nbsp;color:rgb(0,153,0)&quot;</span>&gt;{&lt;/span&gt;&nbsp;&lt;span&nbsp;style=<span class=\"string\">&quot;line-height:21.6000022888184px;&nbsp;font-size:12px;&nbsp;color:rgb(0,0,102)&quot;</span>&gt;&lt;strong&gt;<span class=\"keyword\">return</span>&lt;/strong&gt;&lt;/span&gt;&nbsp;x&lt;span&nbsp;style=<span class=\"string\">&quot;line-height:21.6000022888184px;&nbsp;font-size:12px;&nbsp;color:rgb(51,153,51)&quot;</span>&gt;;&lt;/span&gt;&nbsp;&lt;span&nbsp;style=<span class=\"string\">&quot;line-height:21.6000022888184px;&nbsp;font-size:12px;&nbsp;color:rgb(0,153,0)&quot;</span>&gt;}</p></li><li><p>&lt;/span&gt;&nbsp;&nbsp;&lt;span&nbsp;style=<span class=\"string\">&quot;line-height:21.6000022888184px;&nbsp;font-size:12px;&nbsp;color:rgb(0,0,102)&quot;</span>&gt;&lt;strong&gt;<span class=\"keyword\">return</span>&lt;/strong&gt;&lt;/span&gt;&nbsp;g&lt;span&nbsp;style=<span class=\"string\">&quot;line-height:21.6000022888184px;&nbsp;font-size:12px;&nbsp;color:rgb(51,153,51)&quot;</span>&gt;;</p></li><li><p>&lt;/span&gt;&lt;span&nbsp;style=<span class=\"string\">&quot;line-height:21.6000022888184px;&nbsp;font-size:12px;&nbsp;color:rgb(0,153,0)&quot;</span>&gt;}</p></li><li><p>&lt;/span&gt;&lt;span&nbsp;style=<span class=\"string\">&quot;line-height:21.6000022888184px;&nbsp;font-size:12px;&nbsp;color:rgb(0,51,102)&quot;</span>&gt;&lt;strong&gt;<span class=\"keyword\">var</span>&lt;/strong&gt;&lt;/span&gt;&nbsp;h&nbsp;&lt;span&nbsp;style=<span class=\"string\">&quot;line-height:21.6000022888184px;&nbsp;font-size:12px;&nbsp;color:rgb(51,153,51)&quot;</span>&gt;=&lt;/span&gt;&nbsp;f&lt;span&nbsp;style=<span class=\"string\">&quot;line-height:21.6000022888184px;&nbsp;font-size:12px;&nbsp;color:rgb(0,153,0)&quot;</span>&gt;(&lt;/span&gt;&lt;span&nbsp;style=<span class=\"string\">&quot;line-height:21.6000022888184px;&nbsp;font-size:12px;&nbsp;color:rgb(204,0,0)&quot;</span>&gt;1&lt;/span&gt;&lt;span&nbsp;style=<span class=\"string\">&quot;line-height:21.6000022888184px;&nbsp;font-size:12px;&nbsp;color:rgb(0,153,0)&quot;</span>&gt;)&lt;/span&gt;&lt;span&nbsp;style=<span class=\"string\">&quot;line-height:21.6000022888184px;&nbsp;font-size:12px;&nbsp;color:rgb(51,153,51)&quot;</span>&gt;;</p></li><li><p>&lt;/span&gt;&lt;span&nbsp;style=<span class=\"string\">&quot;line-height:21.6000022888184px;&nbsp;font-size:12px;&nbsp;color:rgb(0,0,102)&quot;</span>&gt;alert&lt;/span&gt;&lt;span&nbsp;style=<span class=\"string\">&quot;line-height:21.6000022888184px;&nbsp;font-size:12px;&nbsp;color:rgb(0,153,0)&quot;</span>&gt;(&lt;/span&gt;h&lt;span&nbsp;style=<span class=\"string\">&quot;line-height:21.6000022888184px;&nbsp;font-size:12px;&nbsp;color:rgb(0,153,0)&quot;</span>&gt;(&lt;/span&gt;&lt;span&nbsp;style=<span class=\"string\">&quot;line-height:21.6000022888184px;&nbsp;font-size:12px;&nbsp;color:rgb(0,153,0)&quot;</span>&gt;)&lt;/span&gt;&lt;span&nbsp;style=<span class=\"string\">&quot;line-height:21.6000022888184px;&nbsp;font-size:12px;&nbsp;color:rgb(0,153,0)&quot;</span>&gt;)&lt;/span&gt;&lt;span&nbsp;style=<span class=\"string\">&quot;line-height:21.6000022888184px;&nbsp;font-size:12px;&nbsp;color:rgb(51,153,51)&quot;</span>&gt;;&lt;/span&gt;</p></li></ol><p><br/></p><p>这段代码中变量h指向了f中的那个匿名函数(由g返回)。</p><ul class=\" list-paddingleft-2\"><li><p>假设函数h的作用域是在执行alert(h())确定的，那么此时h的作用域链是：h的活动对象-&gt;alert的活动对象-&gt;window对象。</p></li><li><p>假设函数h的作用域是在定义时确定的，就是说h指向的那个匿名函数在定义的时候就已经确定了作用域。那么在执行的时候，h的作用域链为：h的活动对象-&gt;f的活动对象-&gt;window对象。</p></li></ul><p>如果第一种假设成立，那输出值就是undefined；如果第二种假设成立，输出值则为1。</p><p>运行结果证明了第2个假设是正确的，说明函数的作用域确实是在定义这个函数的时候就已经确定了。</p><p><strong>四、闭包的应用场景<br/></strong>保护函数内的变量安全。以最开始的例子为例，函数a中i只有函数b才能访问，而无法通过其他途径访问到，因此保护了i的安全性。</p><ol class=\" list-paddingleft-2\"><li><p>在内存中维持一个变量。依然如前例，由于闭包，函数a中i的一直存在于内存中，因此每次执行c()，都会给i自加1。</p></li><li><p>通过保护变量的安全实现JS私有属性和私有方法（不能被外部访问）<br/>私有属性和方法在Constructor外是无法被访问的<strong>function</strong>&nbsp;Constructor(...)&nbsp;{<br/><strong>var</strong>&nbsp;that&nbsp;=&nbsp;<strong>this</strong>;<br/><strong>var</strong>&nbsp;membername&nbsp;=&nbsp;value;<br/><strong>function</strong>&nbsp;membername(...)&nbsp;{...}<br/>}</p></li></ol><p>以上3点是闭包最基本的应用场景，很多经典案例都源于此。</p><p><strong>五、Javascript的垃圾回收机制<br/></strong></p><p>在Javascript中，如果一个对象不再被引用，那么这个对象就会被GC回收。如果两个对象互相引用，而不再被第3者所引用，那么这两个互相引用的对象也会被回收。因为函数a被b引用，b又被a外的c引用，这就是为什么函数a执行后不会被回收的原因。</p><p>&nbsp;</p><p><strong>六、结语</strong></p><p>理解JavaScript的闭包是迈向高级JS程序员的必经之路，理解了其解释和运行机制才能写出更为安全和优雅的代码。</p><p><br/></p>','1',0,1,2,0,1531194313,1531194313,'javascript','/public/static/index/images/toppic01.jpg',0);
INSERT INTO `clt_blog` VALUES (25,'数据库三大范式和反范式',8,1,'','','<p>后一个范式都是在满足前一个范式的基础上建立的.</p><p><strong>1NF</strong>:无重复的列.表中的每一列都是不可分割的基本数据项.不满足1NF的数据库不是关系数据库.<br/>如联系人表(姓名,电话),一个联系人有家庭电话和公司电话,则不符合1NF,应拆分为(姓名,家庭电话,公司电话).</p><p><strong>2NF</strong>:属性完全依赖于主键.不能存在仅依赖于关键一部分的属性.<br/>如选课关系(学号,课程名称,成绩,学分),组合关键字(学号,课程名称)作为主键.其不满足2NF，因为存在决定关系:课程名称-&gt;学分,即存在组合主键中的部分字段决定非主属性的情况.会导致数据冗余,更新/插入/删除异常.</p><p><strong>3NF</strong>:属性不传递依赖于其它非主属性.非主键列必须直接依赖于主键，而不能传递依赖。即不能是：非主键A依赖于非主键B，非主键B依赖于主键.<br/>如学生表(学号,姓名,学院编号,学院名称),学号是主键,姓名、学院编号、学院名称都完全依赖于学号,满足2NF,但不满足3NF,因为学院名称直接依赖的是学院编号 ,它是通过传递才依赖于主键.</p><p>范式可以避免数据冗余，减少数据库的空间，减轻维护数据完整性的麻烦.但等级越高的范式设计出来的表越多,可能会增加查询所需时间.当我们的业务所涉及的表非常多，经常会有多表连接，并且我们对表的操作要时间上要尽量的快，这时可以考虑我们使用“反范式”.也就是用空间来换取时间,把数据冗余在多个表中,当查询时可以减少或者是避免表之间的关联.<br/>比如两个表(用户id,好友id)和(用户id,用户昵称,用户邮箱,联系电话)符合3NF,如果需查询某个用户的好友(昵称)名单,此时需对2个表进行连接查询,可以把第一个表修改成(用户id,好友id,好友昵称)这样只需要查询第一个表就可获取所有好友昵称.</p><p><br/></p>','3',0,1,3,0,1531194382,1531194382,'数据库，三大范式，反范式','/public/static/index/images/toppic02.jpg',0);
INSERT INTO `clt_blog` VALUES (26,'水平拆分与垂直拆分',8,1,'','','<p>这里所说的”拆分”，是指对数据表进行拆分。大体有两种拆分方法。</p><p><strong>1 第一种方法是垂直拆分，即把主码和一些列放到一个表，然后把主码和另外的列放到另一个表中。</strong></p><p>如果一个表中某些列常用，而另一些列不常用，则可以采用垂直拆分，另外，垂直拆分可以使得数据行变小，一个数据页就能存放更多的数据，在査询时就会减少I/O次数。其缺点是 需要管理冗余列，査询所有数据需要联合（join)操作。</p><p><strong>2 第二种方法是水平拆分，即根据一列或多列数据的值把数据行放到两个独立的表中。 水平拆分通常在以下几种情况下使用。</strong></p><p>表很大，分割后可以降低在查询时需要读的数据和索引的页数，同时也降低了索引的层数，提高查询速度.表中的数据本来就有独立性.</p><p>例如，表中分别记录各个地区的数据或不同时期的数据， 特别是有些数据常用，而另外一些数据不常用需要把数据存放到多个介质上.</p><p>例如，移动电话的账单表就可以分成两个表或多个表。最近3个月的账单数据存在一个表 中，3个月前的历史账单存放在另外一个表中，超过1年的历史账单可以存储到单独的存储介质上，这种拆分是最常使用的水平拆分方法.</p><p><strong>总结:</strong><br/>水平拆分会给应用增加<strong>复杂度</strong>，它通常在査询时需要多个表名，査询所有数据需要UNION 操作。在许多<a class=\"replace_word\" title=\"MySQL知识库\" href=\"http://lib.csdn.net/base/mysql\" target=\"_blank\">数据库</a>应用中，<strong>这种复杂性会超过它带来的优点</strong>，因为只要索引关键字不大，则 在索引用于査询时，表中增加2〜3倍数据量，査询时也就增加读一个索引层的磁盘次数，所以水平拆分要考虑数量额增长速度,根据实际情况决定是否需要对表进行水平拆分.</p><p><br/></p>','3',0,1,5,0,1531194438,1531194438,'数据库','/public/static/index/images/v1.jpg',0);
INSERT INTO `clt_blog` VALUES (27,'procedure analyse()优化表的数据类型',4,1,'','','<p>在创建<a class=\"replace_word\" title=\"MySQL知识库\" href=\"http://lib.csdn.net/base/mysql\" target=\"_blank\">数据库</a>表之初, 需要考虑好表内每个字段的数据类型选择什么, 长度是否应该留有一定冗余.</p><p><a class=\"replace_word\" title=\"MySQL知识库\" href=\"http://lib.csdn.net/base/mysql\" target=\"_blank\">MySQL</a> 提供了一个<strong>PROCEDURE ANALYSE()</strong> 函数可以对某张表进行分析, 同时还对数据库表列的数据类型提出了优化建议, 用户可以根据实际情考虑进行优化.</p><p>实用实例:<br/>select * from login_logger <strong>PROCEDURE ANALYSE()</strong>;<br/>select * from login_logger <strong>PROCEDURE ANALYSE(16,256)</strong>;</p><p>第二句表示 不要为那些包含值的个数超过16个,或者256个字节的ENUM枚举类型提出建议, 类似排除, 不然建议字段会很长不方便阅读.</p><p>http://blog.csdn.net/liuyifeng1920/article/details/54096042</p><p>咱们一个一个看分析的结果<br/>1 他建议logger_id 字段 应用SMALLINT(5) UNSIGNED NOT NULL 类型的,但是我们的id是自增的,以后还会增加, 遂不管他.<br/>2 外检user_id 同上.<br/>3 ip字段定义的是varcaher 50 . ip字段可以优化为长度15.<br/>4 时间字段datatime类型的,长度是固定的 ,可以优化位char(19)<br/>5 结果字段, 因为结果要么是成功,要么是失败, 所以可以优化成枚举类型的.</p><p><strong>个人总结:</strong><br/>PROCEDURE ANALYSE() 其实是根据你表内的实际数据,提供的优化方案, 所以建标初期并没有太大的帮助, 主要是针对运行一段时间的数据库进行优化处理.</p><p><br/></p>','3',0,1,2,0,1531194512,1531194512,'优化表，数据类型，procedure analyse','/public/static/index/images/toppic01.jpg',0);
INSERT INTO `clt_blog` VALUES (28,'8 种 NoSQL 数据库系统对比',8,1,'','','<p>虽然SQL数据库是非常有用的工具，但经历了15年的一支独秀之后垄断即将被打破。这只是时间问题：被迫使用关系数据库，但最终发现不能适应需求的情况不胜枚举。</p><p>但是NoSQL数据库之间的不同，远超过两 SQL数据库之间的差别。这意味着软件架构师更应该在项目开始时就选择好一个适合的 NoSQL数据库。针对这种情况，这里对 <a href=\"http://cassandra.apache.org/\">Cassandra</a>、<a href=\"http://www.mongodb.org/\">Mongodb</a>、<a href=\"http://couchdb.apache.org/\">CouchDB</a>、<a href=\"http://redis.io/\">Redis</a>、 <a href=\"http://www.basho.com/Riak.html\">Riak</a>、<a href=\"http://www.couchbase.org/membase\">Membase</a>、<a href=\"http://neo4j.org/\">Neo4j</a>&nbsp;和&nbsp;<a href=\"http://hbase.apache.org/\">HBase</a>&nbsp;进行了比较：</p><p>（编注1：NoSQL：是一项全新的数据库革命性运动，NoSQL的拥护者们提倡运用非关系型的数据存储。现今的计算机体系结构在数据存储方面要求具 备庞大的水平扩 展性，而NoSQL致力于改变这一现状。目前Google的 BigTable 和Amazon 的Dynamo使用的就是NoSQL型数据库。 参见<a href=\"http://zh.wikipedia.org/zh/NoSQL\">NoSQL词条</a>。）</p><p>&nbsp;</p><p><strong>1. CouchDB</strong></p><ul class=\" list-paddingleft-2\"><li><p>所用语言： Erlang</p></li><li><p>特点：DB一致性，易于使用</p></li><li><p>使用许可： Apache</p></li><li><p>协议： HTTP/REST</p></li><li><p>双向数据复制，</p></li><li><p>持续进行或临时处理，</p></li><li><p>处理时带冲突检查，</p></li><li><p>因此，采用的是master-master复制（见编注2）</p></li><li><p>MVCC – 写操作不阻塞读操作</p></li><li><p>可保存文件之前的版本</p></li><li><p>Crash-only（可靠的）设计</p></li><li><p>需要不时地进行数据压缩</p></li><li><p>视图：嵌入式 映射/减少</p></li><li><p>格式化视图：列表显示</p></li><li><p>支持进行服务器端文档验证</p></li><li><p>支持认证</p></li><li><p>根据变化实时更新</p></li><li><p>支持附件处理</p></li><li><p>因此， CouchApps（独立的 js应用程序）</p></li><li><p>需要 jQuery程序库</p></li></ul><p>&nbsp;</p><p><strong>最佳应用场景：</strong>适用于数据变化较少，执行预定义查询，进行数据统计的应用程序。适用于需要提供数据版本支持的应用程序。</p><p><strong>例如：</strong> CRM、CMS系统。 master-master复制对于多站点部署是非常有用的。</p><p>（编注2：master-master复制：是一种数据库同步方法，允许数据在一组计算机之间共享数据，并且可以通过小组中任意成员在组内进行数据更新。）</p><p>&nbsp;</p><p><strong>2. Redis</strong></p><ul class=\" list-paddingleft-2\"><li><p>所用语言：C/C++</p></li><li><p>特点：运行异常快</p></li><li><p>使用许可： BSD</p></li><li><p>协议：类 Telnet</p></li><li><p>有硬盘存储支持的内存数据库，</p></li><li><p>但自2.0版本以后可以将数据交换到硬盘（注意， 2.4以后版本不支持该特性！）</p></li><li><p>Master-slave复制（见编注3）</p></li><li><p>虽然采用简单数据或以键值索引的哈希表，但也支持复杂操作，例如 ZREVRANGEBYSCORE。</p></li><li><p>INCR &amp; co （适合计算极限值或统计数据）</p></li><li><p>支持 sets（同时也支持 union/diff/inter）</p></li><li><p>支持列表（同时也支持队列；阻塞式 pop操作）</p></li><li><p>支持哈希表（带有多个域的对象）</p></li><li><p>支持排序 sets（高得分表，适用于范围查询）</p></li><li><p>Redis支持事务</p></li><li><p>支持将数据设置成过期数据（类似快速缓冲区设计）</p></li><li><p>Pub/Sub允许用户实现消息机制</p></li></ul><p>&nbsp;</p><p><strong>最佳应用场景：</strong>适用于数据变化快且数据库大小可遇见（适合内存容量）的应用程序。</p><p><strong>例如：</strong>股票价格、数据分析、实时数据搜集、实时通讯。</p><p>（编注3：Master-slave复制：如果同一时刻只有一台服务器处理所有的复制请求，这被称为 Master-slave复制，通常应用在需要提供高可用性的服务器集群。）</p><p>&nbsp;</p><p><strong>3. MongoDB</strong></p><ul class=\" list-paddingleft-2\"><li><p>所用语言：C++</p></li><li><p>特点：保留了SQL一些友好的特性（查询，索引）。</p></li><li><p>使用许可： AGPL（发起者： Apache）</p></li><li><p>协议： Custom, binary（ BSON）</p></li><li><p>Master/slave复制（支持自动错误恢复，使用 sets 复制）</p></li><li><p>内建分片机制</p></li><li><p>支持 javascript表达式查询</p></li><li><p>可在服务器端执行任意的 javascript函数</p></li><li><p>update-in-place支持比CouchDB更好</p></li><li><p>在数据存储时采用内存到文件映射</p></li><li><p>对性能的关注超过对功能的要求</p></li><li><p>建议最好打开日志功能（参数 –journal）</p></li><li><p>在32位操作系统上，数据库大小限制在约2.5Gb</p></li><li><p>空数据库大约占 192Mb</p></li><li><p>采用 GridFS存储大数据或元数据（不是真正的文件系统）</p></li></ul><p>&nbsp;</p><p><strong>最佳应用场景：</strong>适用于需要动态查询支持；需要使用索引而不是 map/reduce功能；需要对大数据库有性能要求；需要使用 CouchDB但因为数据改变太频繁而占满内存的应用程序。</p><p><strong>例如：</strong>你本打算采用 MySQL或 PostgreSQL，但因为它们本身自带的预定义栏让你望而却步。</p><p>&nbsp;</p><p><strong>4. Riak</strong></p><ul class=\" list-paddingleft-2\"><li><p>所用语言：Erlang和C，以及一些Javascript</p></li><li><p>特点：具备容错能力</p></li><li><p>使用许可： Apache</p></li><li><p>协议： HTTP/REST或者 custom binary</p></li><li><p>可调节的分发及复制(N, R, W)</p></li><li><p>用 JavaScript or Erlang在操作前或操作后进行验证和安全支持。</p></li><li><p>使用JavaScript或Erlang进行 Map/reduce</p></li><li><p>连接及连接遍历：可作为图形数据库使用</p></li><li><p>索引：输入元数据进行搜索（1.0版本即将支持）</p></li><li><p>大数据对象支持（ Luwak）</p></li><li><p>提供“开源”和“企业”两个版本</p></li><li><p>全文本搜索，索引，通过 Riak搜索服务器查询（ beta版）</p></li><li><p>支持Masterless多站点复制及商业许可的 SNMP监控</p></li></ul><p>&nbsp;</p><p><strong>最佳应用场景：</strong>适用于想使用类似 Cassandra（类似Dynamo）数据库但无法处理 bloat及复杂性的情况。适用于你打算做多站点复制，但又需要对单个站点的扩展性，可用性及出错处理有要求的情况。</p><p>例如：销售数据搜集，工厂控制系统；对宕机时间有严格要求；可以作为易于更新的 web服务器使用。</p><p><strong>5. Membase</strong></p><ul class=\" list-paddingleft-2\"><li><p>所用语言： Erlang和C</p></li><li><p>特点：兼容 Memcache，但同时兼具持久化和支持集群</p></li><li><p>使用许可： Apache 2.0</p></li><li><p>协议：分布式缓存及扩展</p></li><li><p>非常快速（200k+/秒），通过键值索引数据</p></li><li><p>可持久化存储到硬盘</p></li><li><p>所有节点都是唯一的（ master-master复制）</p></li><li><p>在内存中同样支持类似分布式缓存的缓存单元</p></li><li><p>写数据时通过去除重复数据来减少 IO</p></li><li><p>提供非常好的集群管理 web界面</p></li><li><p>更新软件时软无需停止数据库服务</p></li><li><p>支持连接池和多路复用的连接代理</p></li></ul><p>&nbsp;</p><p><strong>最佳应用场景：</strong>适用于需要低延迟数据访问，高并发支持以及高可用性的应用程序</p><p>例如：低延迟数据访问比如以广告为目标的应用，高并发的 web 应用比如网络游戏（例如 Zynga）</p><p>&nbsp;</p><p><strong>6. Neo4j</strong></p><ul class=\" list-paddingleft-2\"><li><p>所用语言： Java</p></li><li><p>特点：基于关系的图形数据库</p></li><li><p>使用许可： GPL，其中一些特性使用 AGPL/商业许可</p></li><li><p>协议： HTTP/REST（或嵌入在 Java中）</p></li><li><p>可独立使用或嵌入到 Java应用程序</p></li><li><p>图形的节点和边都可以带有元数据</p></li><li><p>很好的自带web管理功能</p></li><li><p>使用多种算法支持路径搜索</p></li><li><p>使用键值和关系进行索引</p></li><li><p>为读操作进行优化</p></li><li><p>支持事务（用 Java api）</p></li><li><p>使用 Gremlin图形遍历语言</p></li><li><p>支持 Groovy脚本</p></li><li><p>支持在线备份，高级监控及高可靠性支持使用 AGPL/商业许可</p></li></ul><p>&nbsp;</p><p><strong>最佳应用场景：</strong>适用于图形一类数据。这是 Neo4j与其他nosql数据库的最显著区别</p><p>例如：社会关系，公共交通网络，地图及网络拓谱</p><p>&nbsp;</p><p><strong>7. Cassandra</strong></p><ul class=\" list-paddingleft-2\"><li><p>所用语言： Java</p></li><li><p>特点：对大型表格和 Dynamo支持得最好</p></li><li><p>使用许可： Apache</p></li><li><p>协议： Custom, binary (节约型)</p></li><li><p>可调节的分发及复制(N, R, W)</p></li><li><p>支持以某个范围的键值通过列查询</p></li><li><p>类似大表格的功能：列，某个特性的列集合</p></li><li><p>写操作比读操作更快</p></li><li><p>基于 Apache分布式平台尽可能地 Map/reduce</p></li><li><p>我承认对 Cassandra有偏见，一部分是因为它本身的臃肿和复杂性，也因为 Java的问题（配置，出现异常，等等）</p></li></ul><p>&nbsp;</p><p><strong>最佳应用场景：</strong>当使用写操作多过读操作（记录日志）如果每个系统组建都必须用 Java编写（没有人因为选用 Apache的软件被解雇）</p><p>例如：银行业，金融业（虽然对于金融交易不是必须的，但这些产业对数据库的要求会比它们更大）写比读更快，所以一个自然的特性就是实时数据分析</p><p>&nbsp;</p><p><strong>8. HBase</strong></p><p>（配合 ghshephard使用）</p><ul class=\" list-paddingleft-2\"><li><p>所用语言： Java</p></li><li><p>特点：支持数十亿行X上百万列</p></li><li><p>使用许可： Apache</p></li><li><p>协议：HTTP/REST （支持 <a href=\"http://www.jobbole.com/entry.php/73\">Thrift</a>，见编注4）</p></li><li><p>在 BigTable之后建模</p></li><li><p>采用分布式架构 Map/reduce</p></li><li><p>对实时查询进行优化</p></li><li><p>高性能 Thrift网关</p></li><li><p>通过在server端扫描及过滤实现对查询操作预判</p></li><li><p>支持 XML, Protobuf, 和binary的HTTP</p></li><li><p>Cascading, hive, and pig source and sink modules</p></li><li><p>基于 Jruby（ JIRB）的shell</p></li><li><p>对配置改变和较小的升级都会重新回滚</p></li><li><p>不会出现单点故障</p></li><li><p>堪比MySQL的随机访问性能</p></li></ul><p>&nbsp;</p><p><strong>最佳应用场景：</strong>适用于偏好BigTable:)并且需要对大数据进行随机、实时访问的场合。</p><p>例如： Facebook消息数据库（更多通用的用例即将出现）</p><p>编注4：Thrift 是一种接口定义语言，为多种其他语言提供定义和创建服务，<a href=\"http://blog.jobbole.com/73/\">由Facebook开发并开源</a>。</p><p>当然，所有的系统都不只具有上面列出的这些特性。这里我仅仅根据自己的观点列出一些我认为的重要特性。与此同时，技术进步是飞速的，所以上述的内容肯定需要不断更新。我会尽我所能地更新这个列表。</p><p><br/></p>','3',0,1,8,0,1531194584,1531194584,'NoSQL ，数据库','/public/static/index/images/toppic01.jpg',0);
INSERT INTO `clt_blog` VALUES (29,'array_push',4,1,'','','<p><code class=\"phpcode\">&lt;?php</code></p><p><code class=\"phpcode\">&nbsp;$a=array(&quot;red&quot;,&quot;green&quot;);</code></p><p><code class=\"phpcode\">&nbsp;array_push($a,&quot;blue&quot;,&quot;yellow&quot;);</code></p><p><code class=\"phpcode\">&nbsp;print_r($a);</code></p><p><code class=\"phpcode\">//Array ( [0] =&gt; red [1] =&gt; green [2] =&gt; blue [3] =&gt; yellow )&nbsp;</code></p><p><code class=\"phpcode\">?&gt;</code></p>','4',0,1,3,0,1531194665,1531194665,'','/public/static/index/images/toppic02.jpg',0);
INSERT INTO `clt_blog` VALUES (30,'字符串处理函数',4,1,'','在C语言中字符串是作为字节数组处理的。在Java语言中字符串是 作为对象处理的。而php则把字符串作为基本数据类型来处理。通常对字 符串的处理涉及字符串的格式化。字符串的分割和连接、字符串的比较、 以及字符串的查找、匹配和替换。','<p>常用的输出字符串函数：</p><p>echo( ) -- 输出字符串</p><p>print( ) -- 输出一个字符串</p><p>die( ) -- 输出一条消息，并退出当前脚本</p><p>printf( ) -- 输出格式化字符串</p><p>sprintf( )-- 把格式化的字符串写入一个变量中 如：echo ‘aaa’,’bbbb’,’ccc’;//输注多个值 $link=@mysql_connect(“”,””,””)or die(“失败”)</p><hr/><p>函数列表：</p><p>addcslashes — 为字符串里面的部分字符添加反斜线转义字符<br/>addslashes — 用指定的方式对字符串里面的字符进行转义<br/>bin2hex — 将二进制数据转换成十六进制表示<br/>chop — rtrim() 的别名函数<br/>chr — 返回一个字符的ASCII码<br/>chunk_split — 按一定的字符长度将字符串分割成小块<br/>convert_cyr_string — 将斯拉夫语字符转换为别的字符<br/>convert_uudecode — 解密一个字符串<br/>convert_uuencode — 加密一个字符串<br/>count_chars — 返回一个字符串里面的字符使用信息<br/>crc32 — 计算一个字符串的crc32多项式<br/>crypt — 单向散列加密函数<br/><span style=\"color: #0000ff;\">echo — 用以显示一些内容</span><br/><span style=\"color: #0000ff;\">explode — 将一个字符串用分割符转变为一数组形式</span><br/><span style=\"color: #0000ff;\">fprintf — 按照要求对数据进行返回，并直接写入文档流</span><br/>get_html_translation_table — 返回可以转换的HTML实体<br/>hebrev — 将Hebrew编码的字符串转换为可视的文本<br/>hebrevc — 将Hebrew编码的字符串转换为可视的文本<br/>html_entity_decode — htmlentities ()函数的反函数，将HTML实体转换为字符<br/>htmlentities — 将字符串中一些字符转换为HTML实体<br/>htmlspecialchars_decode —htmlspecialchars()函数的反函数，将HTML实体转换为字符<br/>htmlspecialchars — 将字符串中一些字符转换为HTML实体<br/><span style=\"color: #0000ff;\">implode — 将数组用特定的分割符转变为字符串</span><br/><span style=\"color: #0000ff;\">join — 将数组转变为字符串，implode()函数的别名</span><br/>levenshtein — 计算两个词的差别大小<br/>localeconv — 获取数字相关的格式定义<br/><span style=\"color: #0000ff;\">ltrim — 去除字符串左侧的空白或者指定的字符</span><br/><span style=\"color: #0000ff;\">md5_file — 将一个文件进行MD5算法加密</span><br/><span style=\"color: #0000ff;\">md5 — 将一个字符串进行MD5算法加密</span><br/>metaphone — 判断一个字符串的发音规则<br/>money_format — 按照参数对数字进行格式化的输出<br/>nl_langinfo — 查询语言和本地信息<br/><span style=\"color: #0000ff;\">nl2br — 将字符串中的换行符“\\n”替换成“&lt;br/&gt;”</span><br/><span style=\"color: #0000ff;\">number_format — 按照参数对数字进行格式化的输出</span><br/>ord — 将一个ASCII码转换为一个字符<br/>parse_str — 把一定格式的字符串转变为变量和值<br/><span style=\"color: #0000ff;\">print — 用以输出一个单独的值</span><br/><span style=\"color: #0000ff;\">printf — 按照要求对数据进行显示</span><br/>quoted_printable_decode — 将一个字符串加密为一个8位的二进制字符串<br/>quotemeta — 对若干个特定字符进行转义<br/><span style=\"color: #0000ff;\">rtrim — 去除字符串右侧的空白或者指定的字符</span><br/>setlocale — 设置关于数字，日期等等的本地格式<br/><span style=\"color: #0000ff;\">sha1_file — 将一个文件进行SHA1算法加密</span><br/><span style=\"color: #0000ff;\">sha1 — 将一个字符串进行SHA1算法加密</span><br/><span style=\"color: #0000ff;\">similar_text — 比较两个字符串，返回系统认为的相似字符个数</span><br/>soundex — 判断一个字符串的发音规则<br/><span style=\"color: #0000ff;\">sprintf — 按照要求对数据进行返回，但是不输出</span><br/><span style=\"color: #0000ff;\">sscanf — 可以对字符串进行格式化</span><br/>str_ireplace — 像str_replace()函数一样匹配和替换字符串，但是不区分大小写<br/><span style=\"color: #0000ff;\">str_pad — 对字符串进行两侧的补白</span><br/><span style=\"color: #0000ff;\">str_repeat — 对字符串进行重复组合</span><br/><span style=\"color: #0000ff;\">str_replace — 匹配和替换字符串</span><br/>str_rot13 — 将字符串进行ROT13加密处理<br/><span style=\"color: #0000ff;\">str_shuffle — 对一个字符串里面的字符进行随机排序</span><br/>str_split — 将一个字符串按照字符间距分割为一个数组<br/>str_word_count — 获取字符串里面的英文单词信息<br/><span style=\"color: #0000ff;\">strcasecmp — 对字符串进行大小比较，不区分大小写</span><br/><span style=\"color: #0000ff;\">strchr — 通过比较返回一个字符串的部分strstr()函数的别名</span><br/><span style=\"color: #0000ff;\">strcmp — 对字符串进行大小比较</span><br/>strcoll – 根据本地设置对字符串进行大小比较<br/>strcspn — 返回字符连续非匹配长度的值<br/>strip_tags — 去除一个字符串里面的HTML和PHP代码<br/>stripcslashes — 反转义addcslashes()函数转义处理过的字符串<br/><span style=\"color: #0000ff;\">stripos — 查找并返回首个匹配项的位置，匹配不区分大小写</span><br/>stripslashes — 反转义addslashes()函数转义处理过的字符串<br/><span style=\"color: #0000ff;\">stristr — 通过比较返回一个字符串的部分，比较时不区分大小写</span><br/><span style=\"color: #0000ff;\">strlen — 获取一个字符串的编码长度</span><br/><span style=\"color: #0000ff;\">strnatcasecmp — 使用自然排序法对字符串进行大小比较，不区分大小写</span><br/><span style=\"color: #0000ff;\">strnatcmp — 使用自然排序法对字符串进行大小比较</span><br/><span style=\"color: #0000ff;\">strncasecmp — 对字符串的前N个字符进行大小比较，不区分大小写</span><br/><span style=\"color: #0000ff;\">strncmp — 对字符串的前N个字符进行大小比较</span><br/>strpbrk — 通过比较返回一个字符串的部分<br/><span style=\"color: #0000ff;\">strpos — 查找并返回首个匹配项的位置</span><br/><span style=\"color: #0000ff;\">strrchr — 通过从后往前比较返回一个字符串的部分</span><br/><span style=\"color: #0000ff;\">strrev — 将字符串里面的所有字母反向排列</span><br/>strripos — 从后往前查找并返回首个匹配项的位置，匹配不区分大小写<br/><span style=\"color: #0000ff;\">strrpos – 从后往前查找并返回首个匹配项的位置</span><br/>strspn — 匹配并返回字符连续出现长度的值<br/><span style=\"color: #0000ff;\">strstr — 通过比较返回一个字符串的部分</span><br/>strtok — 用指定的若干个字符来分割字符串<br/><span style=\"color: #0000ff;\">strtolower — 将字符串转变为小写</span><br/><span style=\"color: #0000ff;\">strtoupper –将字符串转变为大写</span><br/><span style=\"color: #0000ff;\">strtr — 对字符串比较替换</span><br/><span style=\"color: #0000ff;\">substr_compare — 对字符串进行截取后的比较</span><br/><span style=\"color: #0000ff;\">substr_count — 计算字符串中某字符段的出现次数</span><br/><span style=\"color: #0000ff;\">substr_replace — 对字符串中的部分字符进行替换</span><br/><span style=\"color: #0000ff;\">substr — 对字符串进行截取</span><br/><span style=\"color: #0000ff;\">trim — 去除字符串两边的空白或者指定的字符</span><br/><span style=\"color: #0000ff;\">ucfirst — 将所给字符串的第一个字母转换为大写</span><br/><span style=\"color: #0000ff;\">ucwords — 将所给字符串的每一个英文单词的第一个字母变成大写</span><br/>vfprintf — 按照要求对数据进行返回，并直接写入文档流<br/>vprintf — 按照要求对数据进行显示<br/>vsprintf — 按照要求对数据进行返回，但是不输出<br/>wordwrap — 按照一定的字符长度分割字符串</p><p><br/></p>','4',0,1,1,0,1531194733,1531194733,'php,字符串，函数','/public/static/index/images/v1.jpg',0);
INSERT INTO `clt_blog` VALUES (31,'正则表达式',4,1,'','正则表达式是用于描述字符排列和匹配模式的一种语法规则。它 主要用于字符串的模式分割、匹配、查找及替换操作。  PHP中，正则表达式有三个作用： 1.匹配，也常常用于从字符串中析取信息。  2.用新文本代替匹配文本。  3.将一个字符串拆分为一组更小的信息块','<p><strong><span style=\"font-size: 16px;\">正则表达式是用于描述字符排列和匹配模式的一种语法规则。它 主要用于字符串的模式分割、匹配、查找及替换操作。<br/></span></strong></p><h3><strong><span style=\"color: rgb(51, 102, 255); font-size: 16px;\">PHP中，正则表达式有三个作用：</span></strong></h3><p><strong><span style=\"font-size: 16px;\">1.匹配，也常常用于从字符串中析取信息。</span></strong></p><p><strong><span style=\"font-size: 16px;\">2.用新文本代替匹配文本。</span></strong></p><p><strong><span style=\"font-size: 16px;\">3.将一个字符串拆分为一组更小的信息块。</span></strong></p><p><strong><span style=\"font-size: 16px;\">一个正则表达式中至少包含一个原子。</span></strong></p><h2><strong><span style=\"color: rgb(255, 102, 0); font-size: 16px;\">行定位符是用来描述字符串的边界。</span></strong></h2><h2><strong><span style=\"font-size: 16px;\">行定位符（^与$）^表示行开始$<br/><span style=\"font-size: 16px; color: rgb(255, 102, 0);\">与Perl兼容的正则表达式函数</span><br/>子符串的匹配与查找函数<br/>字符串的替换函数<br/>字符串的分割与连接</span></strong></h2><h3><strong><span style=\"font-size: 16px;\">与Perl语言兼容的正则表达式处理函数：</span></strong></h3><h2><strong><span style=\"font-size: 16px;\">preg_match() 进行正则表达式匹配<br/>preg_match_all() 进行全局正则表达式匹配<br/>preg_replace() 执行正则表达式的搜索和替换<br/>preg_split() 用正则表达式分割字符串<br/>preg_grep() 返回与模式匹配的数组单元<br/>preg_replace_callback 用回调函数执行正则表达式的搜索和替换</span></strong></h2><p><strong><span style=\"font-size: 16px;\"><span style=\"font-size: 16px; color: rgb(255, 102, 0);\">正则表达式中常用的非打印字符</span><br/><span style=\"font-size: 16px; color: rgb(51, 102, 255);\">原子字符&nbsp; &nbsp;含义描述</span><br/>\\cx &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;匹配由x指明的控制字符。如\\cM匹配一个Control-M或回车符。x的值必须为A~Z或a~z之一。<br/>\\f &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;匹配一个换页符。等价于 \\x0c或\\cL<br/>\\n &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;匹配一个换行符。等价于 \\x0a或\\cJ<br/>\\r &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;匹配一个回车符。等价于 \\x0d或\\cM<br/>\\t &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;匹配一个制表符。等价于 \\x09或\\cI<br/>\\v &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 匹配一个垂直制表符。等价于 \\x0b或\\cK</span></strong></p><h2><strong><span style=\"color: rgb(255, 102, 0); font-size: 16px;\">正则表达式中常用的“通用字符类型”</span></strong></h2><h3><strong><span style=\"font-size: 16px;\"><span style=\"font-size: 16px; color: rgb(51, 102, 255);\">原子字符 &nbsp; &nbsp; 含义描述</span><br/>\\d &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 匹配任意一个十进制数字，等价于[0-9]<br/>\\D &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;匹配任意一个除十进制数字以外的字符，等价于[^0-9]<br/>\\s &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 匹配任意一个空白符，等价于[\\f\\n\\r\\t\\v]<br/>\\S &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;匹配除空白符以外任何字符，等价于[^\\f\\n\\r\\t\\v]<br/>\\w &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 匹配任意一个数字、字母或下画线，等价于[0-9a-zA-Z_]<br/>\\W&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;匹配一个除数字、字母或下画线以外的任意一个字符，等价于[^0-9a-zA-Z_]</span></strong></h3><h2><strong><span style=\"color: rgb(255, 102, 0); font-size: 16px;\"> 元字符</span></strong></h2><h3><strong><span style=\"font-size: 16px;\"><span style=\"font-size: 16px; color: rgb(51, 102, 255);\">元字符 含义描述</span><br/>* 匹配0次、1次或多次其前的原子<br/>+ 匹配1次或多次其前的原子<br/>？ 匹配0次或1次其前的原子<br/>. 匹配除了换行符外的任意一个字符<br/>| 匹配两个或多个分支选择<br/>{n} 表示其前面的原子恰好出现n次<br/>{n,} 表示其前面的原子出现不小于n次<br/>{n,m} 表示其前面的原子至少出现n次，最多出现m次<br/>^或\\A 匹配输入字符串的开始位置（或在多行模式下行的开头，即紧随一个换行符之后）<br/>$或\\Z 匹配输入字符串的结束位置（或在多行模式下行的结尾，即紧随一个换行符之前）<br/>\\b 匹配单词的边界<br/>\\B 匹配除单词边界以外的部分<br/>[] 匹配方括号中指定的任意一个原子<br/>[^] 匹配除方括号中的原子以外的任意一个字符<br/>( ) 匹配其整体为一个原子，即模式单元。可以理解为由多个单个原子组成的大原子</span></strong></h3><p><strong><span style=\"font-size: 16px;\">&nbsp;</span></strong></p><h3><strong><span style=\"font-size: 16px;\"><span style=\"font-size: 16px; color: rgb(255, 102, 0);\">模式修正符</span><br/><span style=\"font-size: 16px; color: rgb(51, 102, 255);\">修正符 含义描述述</span><br/>i 在和模式进行匹配时不区分大小写<br/>m 将字符串视为多行。默认的正则开始“^”和结束“$”将目标字符串作为单一的一“行”字符。加上m<br/>后，那么开始和结束将会指字符串的每一行。<br/>s 如果设定了此修正符，模式中的圆点元字符“.”匹配所有的字符，包括换行符。即将字符串视为单行，<br/>换行符作为普通字符看待<br/>x 模式中的空白忽略不计，除非它已经被转义<br/>e 只用在preg_replace()函数中，在替换字符串中对逆向引用做正常的替换，将其作为 PHP 代码求值，<br/>并用其结果来替换所搜索的字符串。<br/>U 本修正符反转了匹配数量的值使其不是默认的重复，而变成在后面跟上“?”才变得重复。这和 Perl<br/>不兼容。也可以通过在模式之中设定 (U) 修正符或者在数量符之后跟一个问号（如启.*?）来用此选<br/>项。<br/>D 模式中的美元元字符仅匹配目标字符串的结尾。没有此选项时，如果最后一个字符是换行符的话，美<br/>元符号也会匹配此字符之前。如果设定了 m 修正符则忽略此选项</span></strong></h3><p><strong><span style=\"font-size: 16px;\">正则表达式完全手册：</span></strong><a href=\"http://blog.csdn.net/e421083458/article/details/7924959\" style=\"white-space: normal; font-size: 16px; text-decoration: underline;\"><strong><span style=\"font-size: 16px;\">http://blog.csdn.net/e421083458/article/details/7924959</span></strong></a></p>','4',0,1,3,0,1531195013,1531195013,'正则表达式','/public/static/index/images/toppic01.jpg',0);
INSERT INTO `clt_blog` VALUES (32,'js',3,1,'','','<p><strong>1、javaScript的概念:是一种表述语言，也是一种基于对象(Object)和事件驱动(EventDriven)的，安全性好的脚本语言，运行在客户端，从而减轻服务器端的负担，总结如下：</strong></p><p>1.javaScript主要用来向HTML页面找那个添加交互行为。</p><p>2.javaScript是一种脚本语言，语法和java类似。</p><p>3.javaScript一般用来编写客户端脚本。</p><p>4.javaScript是一种解释性语言，边执行边解释。</p><p><strong>2、javaScript由核心语法ECMAScript、浏览器对象模型(BOM) 主要用于管理窗口与窗口之间的通讯，因此其核心对象是window、文档对象模型(DOM)三部分组成.</strong></p><p><strong>3、网页中引入javaScript三种方式:</strong></p><p>1.使用&lt;Script&gt;&lt;/Script&gt;标签内部样式</p><p>2.使用外部js文件</p><p>3.直接在HTML标签中的行内样式。</p><p><strong>4.javaScript的作用</strong></p><p>1.实现页面表单验证</p><p>2.实现页面交互特效</p><p><strong>5.javaScript的特点</strong></p><p>1.被设计用来向Html页面添加交互行为</p><p>2.是一种英特网上最流行的脚本语言</p><p>3.一般用于编写客户端脚本</p><p>4．是一种解释性语言</p><p><strong>6.引入javaScript的方式</strong></p><p>1.使用&lt;Script&gt;标签直接嵌入网页</p><p>2.使用外部js文件</p><p><strong>Js中String对象常用的方法：</strong></p><ol class=\" list-paddingleft-2\"><li><p>toString(包前不包后),2.toLowerCase();toUpperCase();</p></li><li><p>charAt(index);返回在指定位置的字符，indexOf(str,index);指定字符串中首次出现的位置;split(str);将字符串分割为字符串数组</p></li></ol><p>在javaScript中条件语句Switch(){}可以接字符串；</p><p>alert(“提示信息”)；</p><p>var isOk=confirm(“确认框“);//如果确认返回true,否则返回false</p><p>prompt();prompt(“提示信息”，“输入框默认信息”);</p><p>prompt(“请输入姓名”)</p><p>close();</p><p>open();</p><p>setTimeout();在指定毫秒之后调用某个函数</p><p>setInterval();在指定周期毫秒来调用某个函数</p><p>window.open();</p><p><strong>7.Js语法：</strong></p><p>1.区分大小写</p><p>2.注意变量，函数等命名规范</p><p>3.每行代码以分号结束</p><p><strong>Js中的函数：</strong></p><p><strong>1.系统函数&nbsp;</strong></p><p>ParseInt();转换为整数&nbsp; 45.9a转换为45；a6转换返回为NaN(Not a Number)</p><p>isNaN(判断是不是数字)</p><p>typeof(var);判断是什么数据类型</p><p>eval(“5+2”);计算表达式值</p><p><strong>2.自定义函数</strong></p><p>Function 函数名(){javaScript代码}</p><p>Function 函数名(参数1，参数2){javaScript代码&nbsp; return 返回值(可选)}</p><p><strong>Js中函数的调用:</strong></p><ol class=\" list-paddingleft-2\"><li><p>事件名=“函数名(传递的参数值)“;</p></li><li><p>函数名(传递的参数值);</p></li></ol><p>匿名函数:</p><ol class=\" list-paddingleft-2\"><li><p>匿名函数的声明：</p></li></ol><p>Var 变量名=function(参数){&nbsp; 函数体&nbsp; return 返回值；} ;</p><ol class=\" list-paddingleft-2\"><li><p>调用</p></li></ol><p>变量名(参数)</p><p><strong>8.程序调用</strong></p><p>1.添加alert();方法 2.使用fireBug();方法</p><p><strong>9.BOM概述：(Browser Object Model,浏览器对象模型)</strong></p><p>1.window对象的属性</p><table><tbody><tr class=\"firstRow\"><td valign=\"top\" width=\"284\">名称</td><td valign=\"top\" width=\"284\">说明</td></tr><tr><td valign=\"top\" width=\"284\">History</td><td valign=\"top\" width=\"284\">有关客户访问过的URL的信息</td></tr><tr><td valign=\"top\" width=\"284\">Location</td><td valign=\"top\" width=\"284\">有关当前URL的信息</td></tr><tr><td valign=\"top\" width=\"284\">Screen</td><td valign=\"top\" width=\"284\">有关客户端的屏幕和显示性能的信息</td></tr></tbody></table><p>Weindow对象常用的方法：prompt()confirm();setTimeout();setInterval();</p><p>Window对象常用的事件：onload=”” onmouseover=””;onclick</p><p>window.parent.location</p><p><strong>2.History对象</strong></p><p>方法：back() ;forward();go();</p><p><strong>3.Location对象提供当前页面的URL</strong></p><p>属性：host hostname href</p><p>方法:reload() replace();</p><p><strong>4.Document对象</strong></p><p>属性:referrer属性判断是不是通过超链接访问的，不是返回null</p><p><strong>10.javaScript中的对象，</strong></p><p>Date对象:</p><p>创建date对象发方法var date=new Date(MM DD ,YYYY,hh:mm:ss);</p><p>var&nbsp; date=new Date(); date.getDay();</p><p>Math对象：</p><p>Ceil();对数进行向上取整，ceil(25.5)=26;</p><p>Floor();向下取整，floor(25.5)=25;</p><p>Math.round(25.5);在原数的加0.5后向下取整</p><p><strong>11.Dom概述(文档对象模型)</strong></p><p>由CoreDom,XMLDom,HTML Dom组成；</p><p><strong>12.创建数组</strong></p><p>Js中变量的声明:</p><p>Var 数组名称=new Array(size);</p><ol class=\" list-paddingleft-2\"><li><p>先声明再赋值 fruit[0]=””</p></li><li><p>声明同时赋值 var fruit=new Array(“apple”,”orange”);或 var fruit=new Array[“apple”,”orange”];</p></li></ol><p>读取1.使用for循环读取 2.使用for---in读取</p><p>For(var x in fruit){document.write(fruit[x]+”&lt;br/&gt;”)}x为下标</p><p>Fruit.sort();//排序 string str=fruit.join(“-”);//添加字符串后连接成一个字符串</p><p><strong>13、 style 定位方面的样式</strong></p><p>left top &nbsp;position &nbsp;z-index</p><p>鼠标滚动距离：scorllTop:纵向距离</p><p>scorllLeft:横向距离</p><p>鼠标滚动事假：onscorll</p><p>Jquery对象与Dom对象的相互转换</p><ol class=\" list-paddingleft-2\"><li><p>jquery对象转换为DOMD对象，jquery提供两种方法将jquery对象转换为DOM对象，即[index]和get(index),</p></li></ol><p>var $txtName=$(“#txtName”);//jquery对象</p><p>var txtName=$txtName[0];//Dom对象</p><p>alert(txtName.checked);//检测这个checkbox是否被选中</p><p>通过get(index)方法得到对应的Dom对象</p><p>Var $txtName=$(“#txtName”);//jquery对象</p><p>Var txtName=$txtName.get(0);//Dom对象</p><p>alert(txtName.checked);//检测这个checkbox是否被选中</p><ol class=\" list-paddingleft-2\"><li><p>Dom对象转换为jQuery对象</p></li></ol><p>Var txtName=document.getElementById(“txtName”);//dom对象</p><p>Var $txtName=$(txtName);//</p><p>Dom中添加class属性使用obj.className=classname;</p><p>添加类容使用obj.innerHtml=&lt;input /&gt;</p><p>Jquery中添加class属性使用obj.addClaa=classname;</p><p>添加类容使用：obj.html=&lt;input/&gt;;</p><p><strong>Jqurey中的五大选择器：</strong></p><ol class=\" list-paddingleft-2\"><li><p>基本选择器 (#&nbsp; .&nbsp; 标签)</p></li><li><p>层次选择器(后代 &gt;子&nbsp;&nbsp;&nbsp; +相邻&nbsp;&nbsp;&nbsp; ~同辈)</p></li><li><p>属性选择器(P[class=name])</p></li><li><p>过滤选择器(“tr:even”)</p></li><li><p>可见性选择器(“p:hidden” “p:viside”)</p></li></ol><p><strong>Jquery中的事件：</strong></p><p>Obj.bind(“clike”,function(){});</p><p>obj.bind({mousever:function(){},{mouserout:function(){}}});</p><p>obj.unbind();</p><p>obj.hover(function(){},function(){})方法集合onmouseOver和onmouseOut</p><p>obj.toggle();</p><p>$(“.tipsbox”).show();obj.hide();</p><p>$(“img”).fadeIn(1000);</p><p>$(“.txt”).slideUp(1000); obj.slideDown(1000);</p><p>Obj.toggleClass(“class”);//集成了addClass和romoveClass</p><p>$(this).val(“”);//清空文本内容</p><p>Var $newNode=$(&lt;”&lt;li&gt;用jquery创建新元素节点&lt;/li&gt;”&gt;);</p><p><br/></p>','1',0,1,3,0,1531195099,1531195099,'js','/public/static/index/images/toppic01.jpg',0);
INSERT INTO `clt_blog` VALUES (33,'PHP面试题笔试总结高级（1）',4,1,'','','<p>1.如何使用下面的类,并解释下面什么意思?</p><p>class test{</p><p>function Get_test($num){</p><p>$num=md5(md5($num).&quot;En&quot;);</p><p>return $num;</p><p>}</p><p>}</p><p>$t = new test();</p><p>$pass = $t-&gt; Get_test(“123”);</p><p>echo $pass;</p><p>上面的代码是定义了一个test类，内有一个Get_test方法，实现了将参数进行二次md5加密，中间还加了一个En的干扰值。</p><p>&nbsp;</p><p>2.能够使HTML和PHP分离开使用的模板？</p><p>Smarty模板</p><p>&nbsp;</p><p>3.使用哪些工具进行版本控制?</p><p>SVN&nbsp; CVS&nbsp; VSS（微软）GIT</p><p>开源的是SVN（新的，目前使用）和CVS（老版本）</p><p>&nbsp;</p><p>4.简述smarty的工作原理，如何对smarty进行二次开发？</p><p>假如第一次浏览为例：</p><p>①php程序运行时，初始化smarty模版引擎（创建对象，设置属性）</p><p>②加载smarty模版文件(.html或tpl文件)，并对其编译，生成编译文件放置编译目录中。</p><p>③执行编译文件，并做模板替换，生成静态文件。若开启静态缓存，则会将静态缓存文件缓存到cache目录下。</p><p>④最后输出结果到浏览器。</p><p>做Samrty的二次开发：会通过自定义变量调解器、函数等插件方式来实现辅助开发，还有重写smarty的一些方法开扩展开发。</p><p>&nbsp;</p><p>5.谈谈你对MVC的认识,介绍几种目前比较流行的MVC框架？</p><p>MVC是一个经典的设计模式、其中M是数据层、C是控制层、V是视图层。我们网站入口访问的是C控制层，C通过调度M层将我们所需要的数据检索出来，并加载V视图层，然后合成出界面输出给我们。</p><p>Thinkphp、Yii、<strong>CodeIgniter、CakePHP</strong><strong>、Laravel</strong></p><p><strong>&nbsp;</strong></p><p>6.需要设置一个有效期为31天的memcache值，请补充下面的代码</p><p>&lt;?php</p><p>$memcache_obj=new memcache</p><p>$memcache_obj-&gt;connect(‘memcache_host,11211’);</p><p>$memcache_obj-&gt;set(‘varKey’,’varValue’,0,____);</p><p>time()+31*24*3600</p><p>7.不用PHP函数，用方法写一个反转字符串的函数；</p><p>function fun($s){</p><p>$res=&quot;&quot;;</p><p>for($i=strlen($s)-1;$i&gt;=0;$i--){</p><p>$res.=$s[$i];</p><p>}</p><p>return $res;</p><p>}</p><p>&nbsp;</p><p>8.写一个函数，用冒泡法实现排序，输入参数为一个数组</p><p>for($i=0;$i&lt;count($a)-1;$i++){</p><p>for($j=0;$j&lt;count($a)-1-$i;$j++){</p><p>if($a[$j]&gt;$a[$j+1]){</p><p>$tmp = $a[$j];</p><p>$a[$j]=$a[$j+1];</p><p>$a[$j+1]=$tmp;</p><p>}</p><p>}</p><p>}</p><p>&nbsp;</p><p>9.写一个函数，算出两个文件的相对路径</p><p>如：</p><p>$a=’/a/b/c/d/e.php’</p><p>$b=’/a/b/12/34/c.php’</p><p>计算出$b相对于$a的相对路径应该是../../c/d</p><p>&nbsp;</p><p>function fun($m,$n){</p><p>$d1 = explode(&quot;/&quot;,trim(dirname($m),&quot;/&quot;)); //处理并拆分数组</p><p>$d2 = explode(&quot;/&quot;,trim(dirname($n),&quot;/&quot;)); //处理并拆分数组</p><p>&nbsp;</p><p>//去除相同部分(没有相关函数，那么就找分界下标点)</p><p>for($i=0;$i&lt;count($d1);$i++){</p><p>if($d1[$i]!=$d2[$i]){</p><p>break;</p><p>}</p><p>}</p><p>//拼装路径</p><p>$path=&quot;&quot;;</p><p>for($j=$i;$j&lt;count($d2);$j++){</p><p>$path.=&quot;../&quot;;</p><p>}</p><p>for($j=$i;$j&lt;count($d1);$j++){</p><p>$path.=&quot;{$d1[$j]}/&quot;;</p><p>}</p><p>return rtrim($path,&quot;/&quot;);</p><p>}</p><p>&nbsp;</p><p>10.学生科目和成绩保存在三个表中，设定成绩60分为及格：</p><p>学生表：</p><p>CREATE TABLE `USER`(</p><p>`user_id` INT NOT NULL,</p><p>`user_name` VARCHAR(20) NOT NULL</p><p>)</p><p>科目表：</p><p>CREATE TABLE `course`(</p><p>`course_id` INT NOT NULL,</p><p>`course_name` VARCHAR(20) NOT NULL</p><p>)</p><p>成绩表：</p><p>CREATE TABLE `score`(</p><p>`user_id` INT NOT NULL,</p><p>`course_id` INT NOT NULL,</p><p>`score` INT NOT NULL</p><p>)</p><p>请将全部成绩都合格的学生找出，列出ID和姓名。（写出程序代码）</p><p>select user_id,user_name from user where&nbsp; user_id not in(select user_id from score where score&lt;60)</p><p>&nbsp;</p><p>11.设计一个类, 实现用户管理,需求如下(写出文体结构限可)</p><ol class=\" list-paddingleft-2\"><li><p>用文件存储用户信息,用户注册输入用户名,密码和电子邮件;</p></li><li><p>注册后需要通过发送电子邮件来验证用户的信息真实和有效;</p></li><li><p>密码需要加密.保证安全性</p></li><li><p>用户可以登录,退出和注销,并将用户的这些操作行为记录到日志中</p></li><li><p>如果用户没有退出 下次登录自动显示用户名和最后一次登录的信息</p></li></ol><p>class Users{</p><p>public function reg(){ //用于用户注册的信息添加方法</p><p>//获取用户注册的信息，过滤、密码加密、执行信息的存储，以及调用日志记录方法</p><p>}</p><p>//登陆验证方法：</p><p>//日志记录方法</p><p>//注销用户方法</p><p>}</p><p>&nbsp;</p><p>class UsersAction{</p><p>//加载注册页面</p><p>//执行用户注册（用户信息添加，激活邮件的发送）</p><p>//激活用户信息方法。</p><p>//加载登陆界面</p><p>//执行登陆</p><p>//退出方法</p><p>//注销方法</p><p>&nbsp;</p><p>}</p><p>&nbsp;</p><p>12.一列数的规则如下: 1、1、2、3、5、8、13、21、34...... 求第x位数是多少， 用递归算法实现。</p><p>//速度慢效率差</p><p>function foo($num){</p><p>if ($num &lt;= 0){</p><p>return 0;</p><p>}elseif($num &gt; 0 &amp;&amp; $num &lt;= 2){</p><p>return 1;</p><p>}else{</p><p>return foo($num - 1) + foo($num - 2);</p><p>}</p><p>}</p><p>&nbsp;</p><p>&nbsp;</p><p>function test($abc){</p><p>if($abc&lt;1) return 0;</p><p>static $num = 1;</p><p>static $sum = 1;</p><p>static $a = 0;</p><p>static $b = 1;</p><p>if($num != $abc){</p><p>$sum = $a + $b;</p><p>$a = $b;</p><p>$b = $sum;</p><p>$num++;</p><p>test($abc);</p><p>}</p><p>return $sum;</p><p>&nbsp;</p><p>}</p><p>&nbsp;</p><p>13.请写一个函数，求两个日期的差数，传入参数的时间格式为“年-月-日，例如2007-2-5”，要求返回的结果为int值。</p><p>function fun($d1,$d2){</p><p>$m = strtotime($d2)-strtotime($d1);</p><p>return $m/(24*3600);</p><p>}</p><p>&nbsp;</p><p>14.写出结果</p><p>&lt;?php</p><p>$json=’{“a”:1,”b”:2,”c”:{“c1”:100,”c2”:200},”d”:4,”e”:5}’;</p><p>print_r(json_decode($json,true));</p><p>?&gt;</p><p>Array ( [a] =&gt; 1 [b] =&gt; 2 [c] =&gt; Array ( [c1] =&gt; 100 [c2] =&gt; 200 ) [d] =&gt; 4 [e] =&gt; 5 )</p>','4',0,1,3,0,1531199928,1531199928,'php，面试题','/public/static/index/images/toppic02.jpg',0);
INSERT INTO `clt_blog` VALUES (34,'PHP面试题笔试总结高级（2）',4,1,'','','<pre style=\"background-color: rgb(255, 255, 255); font-family: 宋体; font-size: 13.5pt;\">&lt;?}}\r\n\r\n}}\r\n\r\n$$?&gt;\r\n\r\n/*\r\n\r\n&quot;&quot;}\r\n\r\n*/\r\n\r\n$&quot;&quot;&quot;&quot;}$}}\r\n\r\n}\r\n\r\n\r\n\r\n对于公有属性，在类的外部使用&nbsp;“对象名-&gt;”访问。\r\n\r\n对于任何属性，在类的内部使用“$$&quot;&quot;&quot;&quot;/*&nbsp;$&quot;&quot;&quot;&quot;</pre><p><br/></p>','4',0,1,3,0,1531201212,1531201212,'php，面试题','/public/static/index/images/v1.jpg',0);
INSERT INTO `clt_blog` VALUES (35,'PHP面试题笔试总结高级（3）',4,1,'','','<pre style=\"background-color: rgb(255, 255, 255); font-family: 宋体; font-size: 13.5pt;\">{{{{{{{{{{$&quot;&quot;执行的正则替换，实现了单纯的数字循环是//①这是一个②目标：&nbsp;③④包含以下说明：\r\n\r\n===========================================\r\n\r\n============================================\r\n\r\n使用三个修饰符：{&gt;\r\n{/{${/&lt;?$$$&lt;?$}\r\n\r\n++$结果为&nbsp;列出五种以上你使用过的//尝试加载$}\r\n\r\n当实例化一个不存在的类时，会自动调用上面的函数，并将类名传进去\r\n\r\n\r\n\r\n在通过若第二步没有读取到，会创建一个通过$将会不定时的执行清除过时的单一入口应用程序的所有对于这个项目来说，这其实就是一个多入口。\r\n单一入口应用程序优势：可以对由于这些工作都被集中到了单入口文件（我们知道这种不过这个也不是什么大问题，可以采用</pre><p><br/></p>','4',0,1,10,0,1531201268,1531201268,'php，面试题','/public/static/index/images/toppic01.jpg',0);
INSERT INTO `clt_blog` VALUES (36,'mysql面试题',8,1,'','','<pre style=\"background-color: rgb(255, 255, 255); font-family: 宋体; font-size: 13.5pt;\">定义结构的优化（字段类型的选择）\r\n\r\n表操作的优化（重点数据库的配置优化（连接数，数据库自己的缓存，集群，主从）\r\n\r\n外界优化（程序对数据的缓存，硬件（内存））\r\n\r\n&nbsp;\r\n\r\n通过例子&quot;&quot;例子例子&quot;&quot;&quot;&quot;&nbsp;&quot;&quot;在空表常遇到的瓶颈：解决方案：(一)创建新闻发布系统，表名为`````)&nbsp;(二)同样上述新闻发布系统：表现通过查询数据库需要得到以下格式的文章标题列表,并按照回复数量排序，回复最高的排在最前面\r\n\r\n文章用一个(三)上述内容管理系统，表用户输入文章时，通过选择下拉菜单选定文章分类\r\n\r\n写出如何实现这个下拉菜单\r\n\r\n$$}\r\n\r\n可以\r\n\r\n&nbsp;\r\n\r\n避免：加索引、修改表名(字段名称&nbsp;&nbsp;&nbsp;描述&nbsp;要求&nbsp;数据类型&nbsp;&nbsp;&nbsp;\r\n\r\n文本\r\n\r\n写出统计&nbsp;用户前台表单添加学生信息&nbsp;如何防止采用预处理&nbsp;或&nbsp;检测转义添加的内容后再拼装用户姓名&nbsp;&nbsp;用户编号&nbsp;&nbsp;用户手机号,用户通讯地址,用户邮编,杂志编号,杂志名称,杂志种类,用户订阅的杂志编号\r\n\r\n写一个三张表（用户表、杂志表、订阅关联表（多对多））\r\n\r\n\r\n\r\n添加用户信息，并获取添加的自增在订阅关联表中添加用户&gt;&nbsp;&gt;&nbsp;显示字段：城市显示字段：省份写出查询选修&quot;计算机&quot;课的全体女学生姓名的写出查询没有选修&quot;数学&quot;课的学生姓名的</pre>','3,4',0,1,3,0,1531201656,1531201656,'mysql，面试题','/public/static/index/images/toppic01.jpg',0);
INSERT INTO `clt_blog` VALUES (37,'mysql知识总结（1）',8,1,'','','<p style=\"white-space: normal;\">1.mysql数据库优化的一些方法</p><ol class=\" list-paddingleft-2\" style=\"white-space: normal; width: 1463px;\"><li><p>定义结构的优化（字段类型的选择）</p></li><li><p>表操作的优化（重点sql查询的优化）</p></li><li><p>数据库的配置优化（连接数，数据库自己的缓存，集群，主从）</p></li><li><p>外界优化（程序对数据的缓存，硬件（内存））</p></li></ol><p style=\"white-space: normal;\">2.如何判断SQL语句的运行效率？如何优化一个查询SQL？</p><p style=\"white-space: normal;\">通过<strong>show status</strong>命令了解各种SQL的执行频率：<strong>explain&nbsp;</strong>select * from table&nbsp; where id=1000; &nbsp;explain定位执行效率较低的SQL语句&nbsp;优化查询语句<br/>a.最好在相同字段进行比较操作,在建立好的索引字段上尽量减少函数操作<br/>例子1:<br/>SELECT * FROM order WHERE YEAR(orderDate)&lt;2008;(慢)<br/>SELECT * FROM order WHERE orderDate&lt;&quot;2008-01-01&quot;;(快)<br/>例子2:<br/>SELECT * FROM order WHERE addtime/7&lt;24;(慢)<br/>SELECT * FROM order WHERE addtime&lt;24*7;(快)<br/>例子3:<br/>SELECT * FROM order WHERE title like &quot;%good%&quot;;<br/>SELECT * FROM order WHERE title&gt;=&quot;good&quot; and name&lt;&quot;good&quot;;</p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\">3.设定网站的用户数量在千万级，但是活跃用户的数量只有1%，如何通过优化数据库提高活跃用户的访问速度？</p><p style=\"white-space: normal;\">1.对用户信息添加判断是否活跃的字段（最后登录、登录次数）</p><p style=\"white-space: normal;\">2.做数据分离。</p><p style=\"white-space: normal;\">3.对活跃用户做缓存</p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\">4.服务器在运行的过程中，随着用户访问数量的增长，如何通过优化，保证性能？如果数据库已经达到最优化，请设计出继续升级的解决方案。</p><p style=\"white-space: normal;\">1.服务器集群、在负载均衡</p><p style=\"white-space: normal;\">2.配置数据库主从，实现读写分离</p><p style=\"white-space: normal;\">3.提升设备的硬件，如内存</p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\">5.请写出5个常用的SQL操作关键字？</p><p style=\"white-space: normal;\">1.select</p><p style=\"white-space: normal;\">2.update</p><p style=\"white-space: normal;\">3.insert</p><p style=\"white-space: normal;\">4.delete</p><p style=\"white-space: normal;\">5.create</p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\">6.请列出5个常用的PHP操作MySQL的函数？</p><p style=\"white-space: normal;\">1.mysql_connect();</p><p style=\"white-space: normal;\">2.mysql_query()</p><p style=\"white-space: normal;\">3.mysql_num_rows()</p><p style=\"white-space: normal;\">4.mysql_fetch_assoc()</p><p style=\"white-space: normal;\">5.mysql_close()</p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\">7.有两张数据表，表user(id, name)记录了用户的ID和昵称，表article(id,uid,title, content, time)记录了用户发表的文章标题.内容和时间，写一个SQL语句打印出每个用户的昵称及其发表的文章总数</p><p style=\"white-space: normal;\">1.Select&nbsp; u.name,count(a.id) from user u,article a where u.id=a.uid group by u.name</p><p style=\"white-space: normal;\">2.select u.name,count(a.id) from user u left join article a on u.id=a.uid group by u.id</p><ul class=\" list-paddingleft-2\" style=\"white-space: normal; width: 1463px;\"><li><p>在空表News中,字段ID为自增主键,批量插入17条记录之后,发现最后三条数据有误,删除此三条记录后重启Mysql数据库,再重新插入三条记录,请问最后一条记录的ID值是多少？</p></li></ul><p style=\"white-space: normal;\">1.MyISAM:<strong>20&nbsp;&nbsp;</strong><strong>2.</strong><strong>InnoDB:17</strong></p><p style=\"white-space: normal;\">9.有A(id,sex,par,c1,c2),B(id,age,c1,c2)两张表,其中A.id与B.id关联,现在要求写一条SQL语句,将B中age&gt;50的记录的c1.c2更新到A表中统一记录中的c1.c2字段中。</p><p style=\"white-space: normal;\"><strong>1.</strong><strong>replace into A(id,c1,c2) select id,c1,c2 from B where age&gt;50;</strong></p><p style=\"white-space: normal;\"><strong>2.</strong><strong>update A a,B b set a.c1=b.c1,a.c2=b.c2 where a.id=b.id and b.age&gt;50;</strong></p><p style=\"white-space: normal;\">10.数据库设计时，常遇到的性能瓶颈有哪些，常有的解决方案？</p><p style=\"white-space: normal;\">常遇到的瓶颈：1.大存储，2.大访问量，3大数据量。</p><p style=\"white-space: normal;\">解决方案：1.采用第三范式</p><p style=\"white-space: normal;\">2.服务器集群，数据库主从配置，实现读写分离。</p><p style=\"white-space: normal;\">3.对表进行分区</p><p style=\"white-space: normal;\">4.分表处理数据</p>','3',0,1,3,0,1531202071,1531202071,'mysql，面试题','/public/static/index/images/toppic02.jpg',0);
INSERT INTO `clt_blog` VALUES (38,'mysql知识总结（2）',8,1,'','','<p>11.完成以下操作:</p><p>(一)创建新闻发布系统，表名为message有如下字段 (3分)</p><p>id 文章id</p><p>title 文章标题</p><p>content 文章内容</p><p>category_id 文章分类id</p><p>hits 点击量</p><p>&nbsp;</p><p>Create Table: CREATE TABLE `message` (</p><p>`id` int(11) NOT NULL AUTO_INCREMENT,</p><p>`title` varchar(30) NOT NULL,</p><p>`content` varchar(500) NOT NULL,</p><p>`category_id` int(11) NOT NULL,</p><p>`hits` int(11) NOT NULL,</p><p>PRIMARY KEY (`id`)</p><p>) ENGINE=InnoDB DEFAULT CHARSET=utf8</p><p>&nbsp;</p><p>(二)同样上述新闻发布系统：表comment记录用户回复内容，字段如下 (4分)</p><p>comment_id 回复id</p><p>id 文章id，关联message表中的id</p><p>comment_content 回复内容</p><p>现通过查询数据库需要得到以下格式的文章标题列表,并按照回复数量排序，回复最高的排在最前面</p><p>文章id 文章标题 点击量 回复数量</p><p>用一个SQL语句完成上述查询，如果文章没有回复则回复数量显示为0</p><p><strong>select m.id,m.title,m.hits,count(c.comment_id) num from message m left join comment c on m.id=c.id group</strong> <strong>by m.id order by count(c.coment_id) desc;</strong></p><p>&nbsp;</p><p>(三)上述内容管理系统，表category保存分类信息，字段如下 (3分)</p><p>category_id int(4) not null auto_increment;</p><p>categroy_name varchar(40) not null;</p><p>用户输入文章时，通过选择下拉菜单选定文章分类</p><p>写出如何实现这个下拉菜单</p><p>$sql = “select category_id, category_name from category”;</p><p>$result = mysql_query($sql);</p><p>echo “&lt;select name=’ category_id’&gt;”;</p><p>While($row = mysql_fetch_assoc($result)){</p><p>echo “&lt;option value=’{$row[‘category_id’]}’&gt;{$row[‘category_name’]}&lt;/option&gt;”;</p><p>}</p><p>echo “&lt;/select&gt;”;</p><p>&nbsp;</p><p>12.PHP可以和sql server/oracle等数据库连接吗?</p><p><strong>可以</strong></p><p>&nbsp;</p><p>13.数据库</p><p>&nbsp;</p><p>A.写SQL语句，显示所有的产品的：产品名称、类别名称、录入日期</p><p>B.写SQL语句，要求统计点击数前十位的：产品名称和产品点击数量。</p><p>Select p.name,c.name,p.input_date from category c,products p where p.categoryid=c.id</p><p>&nbsp;</p><p>&nbsp;</p><p>Select p.id,p.name, count(h.product_id) num from products p ,product_hit h</p><p>where p.id=h.product_id&nbsp; group by&nbsp; p.id&nbsp; order by num desc limit 10</p><p>&nbsp;</p><p>14.mysql中那些sql语句执行效率很差？如何避免使用这种sql语句？</p><p><strong>show status</strong></p><p><strong>explain</strong></p><p>避免：加索引、修改sql语句、检查和整理数据表</p><p>&nbsp;</p><p>15.选择合适数据库类型写出建立如下学生信息表的SQL语句</p><table width=\"569\"><tbody><tr class=\"firstRow\"><td colspan=\"8\" width=\"568\"><strong>表名</strong><strong>(Student)</strong></td><td width=\"1\"><br/></td></tr><tr><td colspan=\"2\" width=\"142\">字段名称</td><td colspan=\"2\" width=\"142\">描述</td><td colspan=\"2\" width=\"142\">要求</td><td colspan=\"2\" width=\"142\">数据类型</td><td width=\"1\"><br/></td></tr><tr><td width=\"1\"><br/></td><td colspan=\"2\" width=\"142\">ID</td><td colspan=\"2\" width=\"142\">学生证号</td><td colspan=\"2\" width=\"142\">主键</td><td colspan=\"2\" width=\"142\">整数</td></tr><tr><td width=\"1\"><br/></td><td colspan=\"2\" width=\"142\">Name</td><td colspan=\"2\" width=\"142\">姓名</td><td colspan=\"2\" width=\"142\">不能为空</td><td colspan=\"2\" width=\"142\">字符串</td></tr><tr><td width=\"1\"><br/></td><td colspan=\"2\" width=\"142\">Birth</td><td colspan=\"2\" width=\"142\">生日</td><td colspan=\"2\" width=\"142\">不能为空</td><td colspan=\"2\" width=\"142\">时间 date</td></tr><tr><td width=\"1\"><br/></td><td colspan=\"2\" width=\"142\">Gender</td><td colspan=\"2\" width=\"142\">性别</td><td colspan=\"2\" width=\"142\">默认为男</td><td colspan=\"2\" width=\"142\">整数</td></tr><tr><td width=\"1\"><br/></td><td colspan=\"2\" width=\"142\">Desc</td><td colspan=\"2\" width=\"142\">备注信息</td><td colspan=\"2\" width=\"142\"><br/></td><td colspan=\"2\" width=\"142\">文本</td></tr><tr><td width=\"1\"><br/></td><td width=\"141\"><br/></td><td width=\"1\"><br/></td><td width=\"141\"><br/></td><td width=\"1\"><br/></td><td width=\"141\"><br/></td><td width=\"1\"><br/></td><td width=\"141\"><br/></td><td width=\"1\"><br/></td></tr></tbody></table><p>&nbsp;</p><ol class=\" list-paddingleft-2\"><li><p>写出统计 1989-1-1后出生的女生数量的SQL语句</p></li></ol><p>Select count(*) from student where birth &gt;’1989-1-1’ and gender=1;</p><ol class=\" list-paddingleft-2\"><li><p>用户前台表单添加学生信息 如何防止SQL注入,</p></li></ol><p>采用预处理 或 检测转义添加的内容后再拼装sql语句</p><p>&nbsp;</p><p>16.做一个用户订阅杂志的项目,需要在MySQL数据库中保存的数据包括:</p><p>用户姓名&nbsp; 用户编号&nbsp; 用户手机号,用户通讯地址,用户邮编,杂志编号,杂志名称,杂志种类,用户订阅的杂志编号</p><ul class=\" list-paddingleft-2\"><li><p>写一个SQL语句,创建所有你认为需要的表(需要确定表名,字段名,数据类型,键,引擎,字符集.请不要使用中文代替表名,字段名等</p></li></ul><p><strong>三张表（用户表、杂志表、订阅关联表（多对多））</strong></p><p><strong>&nbsp;</strong></p><p>B、有一个新用户(手机号=139000000000,通讯地址=A,邮编=P,用户姓名=N),要订阅某本杂志(杂志编号=100001).请写出需要执行的SQL语句：</p><ol class=\" list-paddingleft-2\"><li><p><strong> 添加用户信息，并获取添加的自增id号（select last_insert_id();）</strong></p></li><li><p><strong> 在订阅关联表中添加用户id和杂志id的关联信息</strong></p></li></ol><p>&nbsp;</p><p>17.两张表city表和province表。分别为城市与省份的关系表</p><p>&gt; select * from city;</p><table width=\"571\"><tbody><tr class=\"firstRow\"><td colspan=\"2\" width=\"206\">id</td><td colspan=\"2\" width=\"181\">name</td><td colspan=\"2\" width=\"183\">province_id</td><td width=\"1\"><br/></td></tr><tr><td width=\"1\"><br/></td><td colspan=\"2\" width=\"206\">1</td><td colspan=\"2\" width=\"181\">广州</td><td colspan=\"2\" width=\"183\">1</td></tr><tr><td width=\"1\"><br/></td><td colspan=\"2\" width=\"206\">2</td><td colspan=\"2\" width=\"181\">深圳</td><td colspan=\"2\" width=\"183\">1</td></tr><tr><td width=\"1\"><br/></td><td colspan=\"2\" width=\"206\">3</td><td colspan=\"2\" width=\"181\">北京</td><td colspan=\"2\" width=\"183\">2</td></tr><tr><td width=\"1\"><br/></td><td colspan=\"2\" width=\"206\">4</td><td colspan=\"2\" width=\"181\">上海</td><td colspan=\"2\" width=\"183\">3</td></tr><tr><td width=\"1\"><br/></td><td colspan=\"2\" width=\"206\"><br/></td><td colspan=\"2\" width=\"181\"><br/></td><td colspan=\"2\" width=\"183\"><br/></td></tr><tr><td width=\"1\"><br/></td><td width=\"205\"><br/></td><td width=\"1\"><br/></td><td width=\"180\"><br/></td><td width=\"1\"><br/></td><td width=\"182\"><br/></td><td width=\"1\"><br/></td></tr></tbody></table><p>&nbsp;</p><p>&gt; select * from province;</p><table width=\"569\"><tbody><tr class=\"firstRow\"><td colspan=\"2\" width=\"284\">id</td><td colspan=\"2\" width=\"284\">name</td><td width=\"1\"><br/></td></tr><tr><td width=\"1\"><br/></td><td colspan=\"2\" width=\"284\">1</td><td colspan=\"2\" width=\"284\">广东</td></tr><tr><td width=\"1\"><br/></td><td colspan=\"2\" width=\"284\">2</td><td colspan=\"2\" width=\"284\">北京</td></tr><tr><td width=\"1\"><br/></td><td colspan=\"2\" width=\"284\">3</td><td colspan=\"2\" width=\"284\">上海</td></tr><tr><td width=\"1\"><br/></td><td width=\"283\"><br/></td><td width=\"1\"><br/></td><td width=\"283\"><br/></td><td width=\"1\"><br/></td></tr></tbody></table><p>&nbsp;</p><p>1)写一条sql语句关系两个表，实现：显示城市的基本信息</p><p>显示字段：城市id，城市名，省份名</p><p>s<strong>elect c.id,c.name,p.name from city c,province p where c.province_id=p.id</strong></p><p>2)要统计每个省份有多少个城市</p><p>显示字段：省份id，省份名，包含多少个城市</p><p><strong>Select p.id,p.name,count(c.id) from city c,province p </strong></p><p><strong>where c.province_id=p.id group by p.id </strong></p><p>&nbsp;</p><p>18.关系S（s#, sname, sex), C (c#, cname), SC(s#, c#) . 其中S#为学生号，sname为学生姓名，sex为性别，c#为课程号，cname为课程名。</p><p>写出查询选修&quot;计算机&quot;课的全体女学生姓名的SQL语句。</p><p>select&nbsp; S.s#，S.sname,S.sex from S,SC WhereS.s#=SC.s# and S.sex=”女” and</p><p>SC.c# in(select c# from C where cname=”计算机”)</p><p>&nbsp;</p><p>select&nbsp; S.sname from S,C,SC where S.s#=SC.s# and C.c#=SC.c#</p><p>and c.cname=’计算机’ and S.sex=‘女’;</p><p>&nbsp;</p><p>写出查询没有选修&quot;数学&quot;课的学生姓名的SQL语句</p><p>select * from S where S.s# not in(Select&nbsp; S.s# from S,SC WhereS.s#=SC.s# and SC.c# in(Select c# from C where cname=” 数学”))</p><p>&nbsp;</p><p>&nbsp;</p><p>19.用root登陆mysql数据库，如果mydb不存在，则在mysql中创建数据库mydb，给root用户分配所有权限从192.168.1.1&nbsp; ip来访问mysdb数据库。（root用户密码为空）</p><p>mysql&gt;create database if not exists mydb;</p><p>mysql&gt;grant all privileges on mydb.* to root@192.168.1.1 identified by &#39;&#39;;</p><p>mysql&gt;flush privileges;//刷新系统权限表</p><p>&nbsp;</p><p>20.表1-message字段如下：</p><p>&nbsp;</p><table width=\"568\"><tbody><tr class=\"firstRow\"><td width=\"284\">id</td><td width=\"284\">自增id</td></tr><tr><td width=\"284\">title</td><td width=\"284\">标题</td></tr><tr><td width=\"284\">content</td><td width=\"284\">内容</td></tr><tr><td width=\"284\">category_id</td><td width=\"284\">分类id</td></tr><tr><td width=\"284\">hits</td><td width=\"284\">点击量</td></tr></tbody></table><p>表2 字段如下comment</p><table width=\"568\"><tbody><tr class=\"firstRow\"><td width=\"284\">comment_id</td><td width=\"284\">回复id</td></tr><tr><td width=\"284\">id</td><td width=\"284\">关联message表中的id</td></tr><tr><td width=\"284\">comment_content</td><td width=\"284\">回复内容</td></tr></tbody></table><p>先通过查询数据库需要得到以下格式的列表，并按照回复数量排序，回复最高的排在最前面。</p><p>“文章id文章标题点击量回复数量”请写出sql：</p><p>select m.id，m.title,m.hits,count(c.id) num from message m left join comment c on m.id=c.id group by m.id order by num desc;</p><p>&nbsp;</p><p>&nbsp;</p><ul class=\" list-paddingleft-2\"><li><p>在平常mysql优化方面，最基本的也是最重要的优化是（添加索引）。</p></li></ul><p>&nbsp;</p><p>22.列出mysql数据库常用的几种表类型HEAP、（MyISAM）、（InnoDB）。<br/>23.请对于据select * from tableExample where ((a and b) and c or (((a and b ) and (c and d)))优化的语句。</p><p><strong>select * from tableExample where a and b and c</strong></p><p>&nbsp;</p><p>24.从表login中选出name字段包含admin的前10条结果所有信息的sql语句</p><p>select * from login where name like “%admin%” limit 10;</p><p>&nbsp;</p><p>25.如何进行防SQL注入: 预处理</p><p>&nbsp;</p><p>26.在数据库test中的一个表student，字段是name，class，score。分别代表姓名、所在班级，分数。</p><p>1) 写出每个班级中的学生，按照成绩降序排序;</p><p>2) 查出每个班的及格人数和不及格人数，格式为：class、及格人数、不及格人数；</p><p>3) 用PHP写入连接数据库(&quot;localhost&quot;,&quot;msuser&quot;,&quot;mspass&quot;)、执行以上SQL、显示结果、判断错误、关闭数据库的过程；</p><p><strong>select class,count(if(score&gt;=60,score,null)), </strong></p><p><strong>count(if(score&lt;60,score,null)) from student group by class</strong></p><p><strong>&nbsp;</strong></p><p><strong>select class,sum(score&gt;=60), </strong></p><p><strong>sum(score&lt;60) from student group by class</strong></p><p><strong>&nbsp;</strong></p><p>&nbsp;</p><ul class=\" list-paddingleft-2\"><li><p>MySQL存储引擎中MyISAM和InnoDB，在同样的应用场景中各有什么优缺点，索引结构如何实现？</p></li><ol class=\" list-paddingleft-2\"><li><p>如果你需要事务处理或是外键，那么InnoDB 可能是比较好的方式。如果你需要全文索引，那么通常来说 MyISAM是好的选择，因为这是系统内建的，然而，我们其实并不会经常地去测试两百万行记录。所以，就算是慢一点，我们可以通过使用Sphinx从InnoDB中获得全文索引。</p></li><li><p>数据的大小，是一个影响你选择什么样存储引擎的重要因素，大尺寸的数据集趋向于选择InnoDB方式，因为其支持事务处理和故障恢复。数据库的在小决定了故障恢复的时间长短，InnoDB可以利用事务日志进行数据恢复，这会比较快。而MyISAM可能会需要几个小时甚至几天来干这些事，InnoDB只需要几分钟。</p></li><li><p>你操作数据库表的习惯可能也会是一个对性能影响很大的因素。比如： COUNT() 在 MyISAM 表中会非常快，而在InnoDB 表下可能会很痛苦。而主键查询则在InnoDB下会相当相当的快，但需要小心的是如果我们的主键太长了也会导致性能问题。大批的inserts 语句在MyISAM下会快一些，但是updates 在InnoDB 下会更快一些——尤其在并发量大的时候。</p></li></ol></ul><p>&nbsp;</p><p>&nbsp;</p><p>28.如下user表结构</p><table width=\"568\"><tbody><tr class=\"firstRow\"><td width=\"142\">名称</td><td width=\"142\">类型</td><td width=\"142\">说明</td><td width=\"142\">备注</td></tr><tr><td width=\"142\">Uid</td><td width=\"142\">Int unsigned</td><td width=\"142\">主键</td><td width=\"142\"><br/></td></tr><tr><td width=\"142\">Name</td><td width=\"142\">Varchar(20)</td><td width=\"142\"><br/></td><td width=\"142\"><br/></td></tr><tr><td width=\"142\">Age</td><td width=\"142\">Tinyint unsigned</td><td width=\"142\"><br/></td><td width=\"142\"><br/></td></tr></tbody></table><p>需求：</p><ul class=\" list-paddingleft-2\"><li><p>增加一个字段性别sex，写出修改语句</p></li></ul><p>alter table user add sex tinyint not null default 1；</p><ul class=\" list-paddingleft-2\"><li><p>查询出年龄介于20岁到30岁之间的用户</p></li></ul><p>select * from user where age between 20 and 30；</p><p>C、如果是一个Web频繁访问的查询，上题的查询如何优化？(为age字段添加索引)</p><p>alter table user add index index_age（age）;</p><p>&nbsp;</p><p>29.本地mysql数据库db_test里已建有表friend，数据库的连接用户为root，密码为123</p><p>friend表字段为：id,name,age,gender,phone,email</p><p>请使用php连接mysql，选择出friend表里age &gt; 20的所有记录打印结果，并统计出查询出的结果总数。</p><p>$link = mysqli_connect(‘localhost’,’root’,’123’,’db_test’);</p><p>&nbsp;</p><p>Mysqli_set_charset($link, ‘utf8’);</p><p>&nbsp;</p><p>$sql = “select *,conut(*) num from friend where age &gt; 20”;</p><p>&nbsp;</p><p>30.以下有两个表</p><p>user表 字段id(int)，name(varchar)</p><p>score表 字段<strong>uid (int</strong>)，subject (varchar) ，score (int)</p><p>score表的uid字段与user表的id字段关联</p><p>要求写出以下的sql语句</p><ul class=\" list-paddingleft-2\"><li><p>在user表里新插入一条记录，在score表里插入与新加入的记录关联的两条记录</p></li></ul><p><strong>select last_insert_id();</strong></p><p>(2)获取score表里uid为2的用户score最高的5条记录</p><p>select * from score where uid=2 order by score desc limit 5</p><p>(3)使用联合查询获取name为“张三”的用户的总分数</p><p>select sum(s.score) from user u,score s where u.id = s.uid and s.name=”张三”；</p><p>(4)删除name为“李四”的用户，包括分数记录</p><p>delete from user u, score s where s.uid=u.id and u.name=’李四’;</p><p>(5)清空score表</p><p>delete from score</p><p>(6)删除user表</p><p>drop table user</p><p>&nbsp;</p><p>31.一张表，里面有ID自增主键，当insert了17条记录之后，删除里15，16，17条记录，再把Mysql重启，再insert一条记录，这条记录的ID是18还是15？</p><p>要看表类型：MyISAM：18&nbsp;&nbsp;&nbsp; InnoDB：15</p><p>&nbsp;</p><p>32.主键和外键表示什么？一般用于做什么？</p><table width=\"568\"><tbody><tr class=\"firstRow\"><td width=\"67\"><br/></td><td width=\"168\">主键</td><td width=\"189\">外键</td><td width=\"144\">索引</td></tr><tr><td width=\"67\">定义：</td><td width=\"168\">唯一标识一条记录，不能有重复的，不允许为空</td><td width=\"189\">表的外键是另一表的主键,&nbsp;外键可以有重复的,&nbsp;可以是空值</td><td width=\"144\">该字段没有重复值，但可以有一个空值</td></tr><tr><td width=\"67\">作用：</td><td width=\"168\">用来保证数据完整性</td><td width=\"189\">用来和其他表建立联系用的</td><td width=\"144\">是提高查询排序的速度</td></tr><tr><td width=\"67\">个数：</td><td width=\"168\">主键只能有一个</td><td width=\"189\">一个表可以有多个外键</td><td width=\"144\">一个表可以有多个惟一索引</td></tr></tbody></table><p>&nbsp;</p><p>&nbsp;</p><p>33.您所知道的MYSQL 数据库备份，还原方式有哪几种？</p><p>（1.命令行mysqldump、2.MySQL操作工具、3.关闭MySQL服务直接拷贝数据文件）</p><p>备份：冷备份、热备份。</p><p>&nbsp;</p><ul class=\" list-paddingleft-2\"><li><p>简述怎么合理的使用memcache缓存？如果缓存数据量过大怎么部署？</p></li></ul><p>1.分布式</p><p>2.缓存时间</p><p>3.优化缓存数据）</p><p>&nbsp;</p><ul class=\" list-paddingleft-2\"><li><p>数据库类型（int,varchar,char,datetime,text）各是什么类型，varchar和char的区别</p></li></ul><p>Int是整型&nbsp;&nbsp;&nbsp; Varchar是字符串类型&nbsp;&nbsp;&nbsp;&nbsp; Char是字符串类型&nbsp;&nbsp; Datetime是时间类型</p><p>Text是字符串类型</p><p>&nbsp;</p><p>char的长度是不可变的，而varchar的长度是可变的，也就是说，定义一个char[10]和varchar[10],如果存进去的是‘csdn’,那么char所占的长度依然为10，除了字符‘csdn’外，后面跟六个空格，而varchar就立马把长度变为4了，取数据的时候，char类型的要用trim()去掉多余的空格，而varchar是不需要的，尽管如此，char的存取数度还是要比varchar要快得多，因为其长度固定，方便程序的存储与查找；但是char也为此付出的是空间的代价，因为其长度固定，所以难免会有多余的空格占位符占据空间，可谓是以空间换取时间效率，而varchar是以空间效率为首位的。再者，char的存储方式是，对英文字符（ASCII）占用1个字节，对一个汉字占用两个字节；而varchar的存储方式是，对每个英文字符占用2个字节，汉字也占用2个字节，两者的存储数据都非unicode的字符数据。</p><p>&nbsp;</p><ul class=\" list-paddingleft-2\"><li><p>数据库索引有几类，分别是什么？什么时候该用索引</p></li></ul><p>MySQL索引类型包括：</p><ul class=\" list-paddingleft-2\"><li><p>普通索引：这是最基本的索引，它没有任何限制。</p></li><li><p>唯一索引：它与前面的普通索引类似，不同的就是：索引列的值必须唯一，但允许有空值。如果是组合索引，则列值的组合必须唯一。</p></li><li><p>主键索引：它是一种特殊的唯一索引，不允许有空值。</p></li><li><p>组合索引：为了形象地对比单列索引和组合索引</p></li></ul><p>&nbsp;</p><p>使用原因：一般来说，在WHERE和JOIN中出现的列需要建立索引，但也不完全如此，因为MySQL只对&lt;，&lt;=，=，&gt;，&gt;=，BETWEEN，IN，以及某些时候的LIKE才会使用索引。</p><p>&nbsp;</p><ul class=\" list-paddingleft-2\"><li><p>MySQL 表的常见类型都有哪些？MyISAM 的表由哪些文件组成？</p></li></ul><p>MyISAM InnoDB</p><p>MyISAM表由 表名.frm &nbsp;表名.MYD 表名 .MYI三部分组成</p><p>&nbsp;</p><p>38.一个article 表含有title、classid、dateline 以及其他字段，请写sql 语句，查询出最新的8篇文章。</p><p>select * from article order by dateline desc limit 8</p><p>&nbsp;</p><p>39.一个article 表字段为id/title/type_id/author/content/dateline/active，另外一个article_type表字段为id/title。要求显示article 表的最新5 条文章作者和文章分类名。</p><p>select a.author,t.title&nbsp; from article a,article_type t where a.type_id=t.id order by dateline desc limit 5</p><p>&nbsp;</p><p>40.从表a 中删除id 大于5 同时sex 为1 的记录。</p><p>delete from a where id&gt;5 and sex=1</p><p>&nbsp;</p><p>41.设b 表和c 表结构完全一样。把b 表的数据全部插入c 表中。写出sql 语句并列出注意事项及这种用法的用途。</p><p>insert into c select * from b；</p><p>这样可以将一个表的数据完全的复制到另一张表中，不过当数据量大的时候，速度会比较慢，建议使用load导入数据</p><p>&nbsp;</p><p>42.写出发帖数最多的十个人名字的SQL，利用下表：</p><p>Members(id,usename,posts,pass,email)</p><p>select * from members order by posts desc limit 10;</p><p>&nbsp;</p><p>43.两张表Company和Job，分别表示公司和职位。Company表中含有字段：Id,ComName分别代表公司ID和公司名称；Job表中含有字段：Id,ComId,City,CreateDate分别表示职位ID，公司Id，城市，创建日期，请按照如下要求编写SQL</p><p>写一条sql实现：显示公司基本信息和职位信息，并按照公司Id正序和职位创建日期倒序&nbsp; &nbsp;。。。。 order by Company.id asc,Job.createDate desc</p><p>&nbsp;</p><p>44.假设您有数据库（dbname=TEST_DB）足够的权限，请为192.168.1.100服务器上的testuser用户开放访问该数据库的所有权限并为其设置访问密码。</p><p>mysql<strong>&gt;grant all privileges on TEST_DB.* to testuser@192.168.1.100 identified by &#39;</strong><strong>密码&#39;;</strong></p><p><strong>mysql&gt;flush privileges;//</strong><strong>刷新系统权限表</strong></p><p><strong>&nbsp;</strong></p><p>45.写出选择出销售额最高的十个产品的SQL语句，利用下表：Products（product_id,product_name,price,sell_num）;&nbsp;&nbsp; 其中product_id为产品id（主键），price为价格，sell_num为销售量。<br/>select * from products order by price*sell_num desc limit 10;</p><p>&nbsp;</p><p>46.MYSQL取得当前时间的函数是?，格式化日期的函数是?</p><p>now();&nbsp;&nbsp;&nbsp; DATE_FORMAT(date,format)</p><p>&nbsp;</p><p>47.现在有一个Mysql数据库表payment记录用户购买订单，表结构如下：</p><p>TABLE payment(</p><p>id int unsigned AUTO_INCREMENT,</p><p>user_id int unsigned comment ‘用户id’,</p><p>quantity smallint unsigned comment ‘本次购买产品数量’,</p><p>pay_time timestamp comment ‘购买时间’,</p><p>PRIMARY KEY(id)</p><p>)</p><p>用户每访问成功付款一笔订单(从进入到离开),会增加一条记录，记录用户的ID(user_id)，以及购买的产品数量。比如：</p><p>1、208,2 //208这个用户购买2个产品</p><p>&nbsp;</p><p>1）、请写出一个SQL语句挑出用户（id=100）最近购买的10条订单。</p><p>select * from payment where user_id=100 order by pay_time desc limit 10</p><p>2）、请写一个SQL语句挑出用户（id=100）最近购买的第10到第20条订单(共10个)</p><p>select * from payment where user_id=100 order by pay_time desc limit 10,10</p><p>&nbsp;</p><p>3)、请写出一个SQL语句挑出购买产品数最多的10个用户(user_id)和对应购买的产品总数。</p><p>select user_id,sum(quantity) from payment group by user_id</p><p>order by sum(quantity) desc limit 10;</p><p>&nbsp;</p><p>48.计算某个表新插入记录的id值（id为主键），不用mysql本身的自增id策略而采用memcached，假设key值不会丢失，请指出方法2错在哪里。</p><p>方法1：</p><p>$lastInsertId = $memcacheObj-&gt;increment($key);</p><p>return $lastInsertId;</p><p>&nbsp;</p><p>方法2：</p><p>$lastInsertId = $memcacheObj-&gt;get ($key);</p><p>$lastInsertId++；</p><p>$memcacheObj-&gt;set($key，$lastInsertId);&nbsp; <strong>//set方法缺少参数</strong></p><p>return $lastInsertId;</p>','3,4',0,1,4,0,1531204730,1531204730,'mysql，面试题','/public/static/index/images/v1.jpg',0);
INSERT INTO `clt_blog` VALUES (39,'PHP之Linux',6,1,'','','<p>一、简答题（26道）</p><p><strong>1.</strong><strong>请解释下列10个shell命令的用途</strong></p><p>top、ps、mv、find、df、cat、chmod、chgrp、grep、wc</p><p>top：该命令提供了实时对系统处理器状态的监控，它能够实时显示系统中各个进程的资源占用情况。该命令可以按照对CPU、内存使用和执行时间对系统任务进程进行排序显示，同时还可以通过交互式命令进行设定显示。<br/>ps：显示系统进程在瞬间的运行动态。<br/>mv：文件/目录改名或变更存储位置。<br/>find：在指定的路径下查找指定文件。<br/>df：检查磁盘空间占用情况。<br/>cat：将文件的内容打印到标准输出。<br/>chmod：改变文件的权限。<br/>chgrp：改变文件所属组。<br/>grep：过滤文本，根据指定的字符串，对文件的每一行进行搜索，如找到，则输出该行内容。<br/>wc：统计指定文件中的字节数、字数、行数，并将统计结果显示输出。</p><p>&nbsp;</p><h6>2.写出15个以上你所知道的常用的Linux命令和它的功能。</h6><p>ls：列出目录<br/>cp：复制<br/>rm：删除<br/>cat：将文件的内容打印到标准输出<br/>mkdir：建立目录<br/>tar：打包压缩<br/>ps：查看进程<br/>top：查看机器使用情况<br/>df：检查磁盘空间占用情况<br/>find：在指定路径下查找指定文件<br/>grep：过滤文本<br/>cd：改变当前工作目录<br/>mount：挂载/卸载指定的文件系统<br/>ifconfig：配置网络或显示当前网络接口状态<br/><a href=\"telnet:%EF%BC%9A%E8%BF%9C%E7%A8%8B%E7%99%BB%E5%BD%95\">telnet:：远程登录</a></p><p>&nbsp;</p><h6>3.vi编辑器中，选中、复制、粘贴、删除的命令各是什么</h6><p>选中：v（以字符为单位），V（以行为单位）<br/>复制：y，如yy，nyy，y1G，yG，y0，y$<br/>粘贴：p（粘贴在光标之后），P（粘贴在光标之前）<br/>删除：d，如dd，ndd，d1G，dG，d$,d0</p><p>&nbsp;</p><h6>4.获取文件行数</h6><p>wc-l filename</p><p>&nbsp;</p><h6>5.输入文件的最后5行到另一个文件中</h6><p>tail-n 5 file1&gt;&gt;file2</p><p>&nbsp;</p><h6>6.查找文件中包含hello的行</h6><p>grep hello filename</p><p>&nbsp;</p><h6>7.查找当前目录下所有目录名为CVS的子目录的命令</h6><p>find./CVS-maxdepth 1-type d-print</p><p>&nbsp;</p><h6>8.如何让一个程序在后台运行并把输入定向到指定的文件</h6><p>可使用命令：nohup程序&gt;&gt;文件名2&gt;&amp;1<br/>注意，2&gt;&amp;1要放在输出文件名的后面）</p><p>&nbsp;</p><h6>9.如何把一个文件的内容添加到另一个文件的末尾</h6><p>cat file1&gt;&gt;file2</p><p>&nbsp;</p><h6>10.如何实时的显示一个文件的输出</h6><p>使用more或者less</p><p>&nbsp;</p><h6>11.vi编辑器中，如何替换指定的字符串</h6><p>使用s命令，例如：<br/>：n1,n2s/word1/word2/g，将第n1行与n2行之间的word1替换为word2<br/>：1,$s/word1/word2/g，从第一行到最后一行中的word1替换为word2</p><p>&nbsp;</p><h6>12.Linux下，如何查看所有用户？</h6><p>cat/etc/passwd</p><p>&nbsp;</p><h6>13.查看磁盘空间使用率的Linux命令是什么？查看有哪些系统进程正在运行命令是什么？检测Linux性能（cpu，磁盘io，内存，网络等）都用到哪些命令？</h6><p>查看磁盘空间使用率的命令：df<br/>查看系统进程命令：top<br/>检测Linux性能的命令：ps，free，vmstat，netstat</p><h6>14.Linux下终止一个进程用什么命令？打包压缩和解包用什么命令？软连接和硬链接有什么区别？建立软连接的命令是？</h6><p>终止进程的命令：kill<br/>打包压缩和解包命令：tar<br/>建立软连接的命令：ln-s源文件目标链接名<br/>硬链接是通过文件系统的inode来产生新文件名，而不是新文件，它只是在某个目录新建一条文件名链接到某inode号码的管理记录而已，而软链接是创建一个独立的文件，该文件会让数据的读取指向它链接的那个文件的文件名，类似于windows中的快捷方式。</p><p>&nbsp;</p><h6>15.说说Linux下的find命令和grep命令的区别</h6><p>find：在磁盘/分区中找到文件，可以配type可以配size time等，通过文件名或文件大小或访问时间找到指定文件。<br/>grep：查找文件里符合条件的字符串，并把匹配的行打印出来，可以使用正则表达式。</p><p>&nbsp;</p><p><strong>16.</strong><strong>设置计划任务每周一到周五下午五点半自动关机</strong></p><p>crontab –e</p><p>30 17 * * 1-5 /sbin/shutdown –h now</p><p>&nbsp;</p><p><strong>17.</strong><strong>若下达rmdir命令来删除某个已存在的目录，但无法成功，请说明可能的原因。</strong></p><p>参考答案：</p><p>此目录可能不存在，</p><p>或者目录不为空，或者目录中有隐含文件存在，</p><p>或者目录被设置了权限，</p><p>解决方法就是先修改权限，在使用rm –rf&nbsp;&nbsp; 命令删除。</p><p>&nbsp;</p><p>18．某系统管理员需每天做一定的重复工作，请按照下列要求，编制一个解决方案：<br/>（1）在下午4 :50删除/abc目录下的全部子目录和全部文件；<br/>（2）从早8:00～下午6:00每小时读取/xyz目录下x1文件中每行第一个域的全部数据加入到/backup目录下的bak01.txt文件内；<br/>（3）每逢星期一下午5:50将/data目录下的所有目录和文件归档并压缩为文件：backup.tar.gz；<br/>（4）在下午5:55将IDE接口的CD-ROM卸载（假设：CD-ROM的设备名为hdc）；<br/>（5）在早晨8:00前开机后启动。<br/>参考答案:<br/>解决方案：<br/>（1）用vi创建编辑一个名为prgx的crontab文件；<br/>（2）prgx文件的内容：<br/>50 16 * * * rm -r /abc/*<br/>0 8-18/1 * * * cut -f1 /xyz/x1 &gt;;&gt;; /backup/bak01.txt<br/>50 17 * * * tar zcvf backup.tar.gz /data<br/>55 17 * * * umount /dev/hdc<br/>（3）由超级用户登录，用crontab执行&nbsp;prgx文件中的内容：<br/><a href=\"mailto:root@xxx:%23crontab\">root@xxx:#crontab</a>&nbsp;prgx；在每日早晨8:00之前开机后即可自动启动crontab。</p><p>&nbsp;</p><p>19.请你谈谈<strong>linux分区</strong></p><p>硬盘的分区主要分为基本分区（Primary Portion）和扩展分区（Extension Portion）两种。只是针对一个硬盘来讲，基本分区和扩展分区的数目之和不能大于4个，且基本分区可以马上被使用但不能再分区。扩展分区必须再进行分区后才能使用，也就是说它必须还要进行二次分区。那么有扩展分区再分下去的是什么呢？它就是逻辑分区（Logical Portion），而且逻辑分区没有数量上限制</p><p>对windows用户来说，有几个分区就有几个驱动器，并且每个分区都会获得一个字母标识符，然后就可以选用这个字母来指定在这个分区上的文件和目录。它们的文件结构都是独立的，非常好理解。但对这些用户初上手Redhat Linux，可就有点恼人了。因为对<strong>Redhat&nbsp;Linux用户来说无论有几个分区，分给哪一个目录使用，它归根结底就只有一个根目录、一个独立且唯一的文件结构</strong>。Redhat Linux中每个分区都是用来组成整个文件系统的一部分。因为它<strong>采用了一种叫“载入”的处理方法</strong>，它的整个文件系统中包含了一整套的文件和目录，并将一个分区和一个目录联系起来。这时要载入的那个分区将使它的存储空间在这个目录下获得。</p><p>&nbsp;</p><p>20.在linux中的每个用户必须属于一个组，不能独立于组外。在linux中每个文件有<strong>所有者、所在组、其它组</strong>的概念 。</p><p>1）所有者：一般为文件的创建者，谁创建了该文件，就天然的成为该文件的所有者。用ls ‐ahl命令可以看到文件的所有者。也可以使用chown 用户名 文件名来修改文件的所有者。<br/>2）文件所在组：当某个用户创建了一个文件后，这个文件的所在组就是该用户所在的组，用ls ‐ahl命令可以看到文件的所有组，也可以使用chgrp 组名 文件名来修改文件所在的组。<br/>3）其它组：除开文件的所有者和所在组的用户外，系统的其它用户都是文件的其它组。</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>21.如何暂停一个正在运行的进程，把其放在后台（不运行）？</p><p>为了停止正在运行的进程，让其在后台（不运行），我们可以使用组合键 Ctrl+Z。（译注：如果希望其在后台运行，还需要使用bg命令并指定其Ctrl+Z得到的任务号，才可以在后台运行。）</p><p>&nbsp;</p><p>22.试解释Apache服务器以下的配置的含义：</p><ul class=\" list-paddingleft-2\"><li><p>port 1080</p></li><li><p>UserDir userdoc</p></li><li><p>DocumentRoot “/home/htdocs”</p></li><li><p>Options Indexes FollowSymLinks</p></li></ul><p>AllowOverride None</p><p>Order deny,allow deny from all allow from 192.168.1.188;</p><ul class=\" list-paddingleft-2\"><li><p>Server Type Standlone</p></li></ul><p>&nbsp;</p><p>含义如下：</p><ul class=\" list-paddingleft-2\"><li><p>将Apache服务器的端口号设定为1080;</p></li><li><p>设定用户网页目录为userdoc;</p></li><li><p>设定Apache服务器的网页根目录为：/home/htdocs;</p></li><li><p>在此Apache服务器上设定一个目录/home/htdocs/inside，且次目录只允许IP地址为192.168.1.188的主机访问;</p></li><li><p>定义Apache服务器的以独立进程的方式访问。</p></li></ul><p>&nbsp;</p><p>&nbsp;</p><p>23.如何用yum安装/删除一个软件包？如何查看某个软件包是否已经安装</p><p>安装：yum install -y tree<br/>删除：yum remove -y tree<br/>查看：rpm -qa | grep “包名” 或&nbsp; rpm -q 包名</p><p>24.cp一个目录中的文件需要什么权限，mv呢？touch呢？rm呢？<br/>cp需要有目录的x权限，mv需要wx权限，touch需要wx权限，rm需要有wx权限；</p><p>&nbsp;</p><p>25.<strong>如何在文本里面进行复制、粘贴，删除行，删除全部，按行查找和按字母查找。</strong></p><p>以下操作全部在命令行状态操作，不要在编辑状态操作。</p><p>在文本里 移动到想要复制的行 &nbsp;按yy&nbsp;想复制到哪就移动到哪，然后按P就黏贴了</p><p>删除行 &nbsp;移动到改行&nbsp;按dd</p><p>删除全部&nbsp;&nbsp;dG&nbsp;&nbsp;这里注意G一定要大写</p><p>按行查找&nbsp;&nbsp;:90&nbsp;这样就是找到第90行</p><p>按字母查找&nbsp;/path&nbsp;&nbsp;这样就是 找到path这个单词所在的位置，文本里可能存在多个,多次查找会显示在不同的位置。</p><p>&nbsp;</p><p>26.解释在Linux中三种不同的权限。<br/>- 读：让用户读取文件或列出目录权限<br/>- 写：让用户写入的新文件和目录的文件的权限<br/>- 执行：使用户能够运行该文件的许可或查找目录中的特定文件</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>二、选择题（33道）</p><p>27.在创建Linux 分区时，一定要创建（&nbsp; D &nbsp;）两个分区</p><ol class=\" list-paddingleft-2\"><li><p>FAT/根分区 B. FAT/SWAP</p></li><li><p>BOOT/SWAP D. SWAP/ 根分区</p></li></ol><p>&nbsp;</p><p>&nbsp;</p><p>28.哪个目录存放用户密码信息 ( &nbsp;B &nbsp;)</p><ol class=\" list-paddingleft-2\"><li><p>/boot　　　B. /etc 　　　 C. /var　　　 D. /dev</p></li></ol><p>&nbsp;</p><p>29.除非特别指定， cp假定要拷贝的文件在下面哪个目录下 ( D )</p><ol class=\" list-paddingleft-2\"><li><p>用户目录　　 B. home目录</p></li><li><p>root目录　　 D. 当前目录</p></li></ol><p>&nbsp;</p><p>30./etc/shadow 文件中存放 （ B ）。</p><p>A.用户账号基本信息&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; B.用户口令的加密信息</p><p>C.用户组信息&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; D. 文件系统信息</p><p>&nbsp;</p><ol class=\" list-paddingleft-2\"><li><p>以下关于yum 命令的说法哪个是错误的？ D</p></li><li><p>yum可以解决软件包依赖关系</p></li><li><p>yum可以方便的实现软件包升级</p></li><li><p>yum也是通过RPM 包安装软件</p></li><li><p>yum不可以更改 yum源</p></li></ol><p>&nbsp;</p><ol class=\" list-paddingleft-2\"><li><p>在给定文件中查找与设定条件相符字符串的命令为： ( A )。</p></li></ol><p>A grep&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; B gzip&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C find&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; D sort</p><p>&nbsp;</p><ol class=\" list-paddingleft-2\"><li><p>下面哪个Linux 命令可以一次显示一页内容？ B</p></li></ol><p>A cat&nbsp;&nbsp;&nbsp;&nbsp; B more&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C pause&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; D grep</p><p>&nbsp;</p><ol class=\" list-paddingleft-2\"><li><p>下列提法中，不属于ifconfig命令作用范围的是&nbsp;D。<br/>A&nbsp;配置本地回环地址&nbsp;B&nbsp;配置网卡的IP地址<br/>C&nbsp;激活网络适配器&nbsp;D&nbsp;加载网卡到内核中</p></li></ol><p>&nbsp;</p><p>&nbsp;</p><p>35．以下命令对中，正确的是：&nbsp;B&nbsp;。<br/>A ls和sl B cat和tac C more和erom D exit和tixe</p><p><span style=\"text-decoration:underline;\">cat</span><span style=\"text-decoration:underline;\">是显示文件夹的命令，这个大家都知道，tac是cat的倒写，意思也和它是相反的。cat是从第一行显示到最后一行，而tac是从最后一行显示到第一行，而rev&nbsp;则是从最后一个字符显示到第一个字符</span></p><p><span style=\"text-decoration:underline;\">&nbsp;</span></p><ol class=\" list-paddingleft-2\"><li><p>系统中有用户user1和user2，同属于users组。在user1用户目录下有一文件file1，它拥有644的权限，如果user2用户想修改user1用户目录下的file1文件，应拥有&nbsp;B权限。<br/>A 744 B 664 C 646 D 746</p></li></ol><p>&nbsp;</p><ol class=\" list-paddingleft-2\"><li><p>已知某用户stud1，其用户目录为/home/stud1。分页显示当前目录下的所有文件的文件或目录名、用户组、用户、文件大小、文件或目录权限、文件创建时间等信息的命令是&nbsp;D。<br/>A more ls –al B more –al ls C more &lt; ls –al D ls –al | more</p></li></ol><p>&nbsp;</p><ol class=\" list-paddingleft-2\"><li><p>在/home/stud1/wang目录下有一文件file，使用D&nbsp;可实现在后台执行命令，此命令将file文件中的内容输出到file.copy文件中。<br/>A cat file &gt;;file.copy B cat &gt;;file.copy</p></li></ol><p>C cat file file.copy &amp;&nbsp;&nbsp; D cat file &gt;;file.copy &amp;</p><p>&nbsp;</p><ol class=\" list-paddingleft-2\"><li><p>将光盘/dev/hdc卸载的命令是&nbsp;C。<br/>A umount /dev/hdc B unmount /dev/hdc<br/>C umount /mnt/cdrom /dev/hdc D unmount /mnt/cdrom /dev/hdc</p></li></ol><p>&nbsp;</p><p>40.将光盘CD-ROM（hdc）安装到文件系统的/mnt/cdrom目录下的命令是&nbsp;C&nbsp;。<br/>A mount /mnt/cdrom&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; B mount /mnt/cdrom /dev/hdc<br/><span style=\"text-decoration:underline;\">C mount /dev/hdc /mnt/cdrom</span>&nbsp;D mount /dev/hdc</p><p>&nbsp;</p><ol class=\" list-paddingleft-2\"><li><p>Apache服务器默认的接听连接端口号是&nbsp;C。<br/>A 1024 B 800&nbsp;&nbsp; C 80 (http)&nbsp; D 8</p></li></ol><p>&nbsp;</p><ol class=\" list-paddingleft-2\"><li><p>文件权限读、写、执行的三种标志符号依次是&nbsp;A&nbsp;。<br/>A rwx B xrw C rdx&nbsp;&nbsp; D srw</p></li></ol><p>&nbsp;</p><ol class=\" list-paddingleft-2\"><li><p>在实际操作中，想了解命令logname&nbsp;的用法，可以键入&nbsp;D&nbsp;得到帮助。<br/>A logname --man B logname/？</p></li></ol><p>C help logname&nbsp;&nbsp;&nbsp; D logname --help</p><p>&nbsp;</p><ol class=\" list-paddingleft-2\"><li><p>建立一个新文件可以使用的命令为&nbsp;D。<br/>A chmod B more</p></li></ol><p>C cp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; D&nbsp;<span style=\"text-decoration:underline;\">touch</span>(指令改变档案的时间记录。)</p><p>&nbsp;</p><ol class=\" list-paddingleft-2\"><li><p>在给定文件中查找与设定条件相符字符串的命令为：&nbsp;A。<br/>A grep B gzip C find D sort</p></li></ol><p>&nbsp;</p><ol class=\" list-paddingleft-2\"><li><p>改变文件所有者的命令为&nbsp;C。<br/>A chmod B touch C chown D cat</p></li></ol><p>&nbsp;</p><ol class=\" list-paddingleft-2\"><li><p>对文件进行归档的命令为&nbsp;D。<br/>A dd B cpio C gzip D tar</p></li></ol><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><ol class=\" list-paddingleft-2\"><li><p>启动samba服务器进程，可以有两种方式：独立启动方式和父进程启动方式，其中前者是在&nbsp;C文件中以独立进程方式启动。<br/>A /usr/sbin/smbd B /usr/sbin/nmbd</p></li></ol><p>C&nbsp;<span style=\"text-decoration:underline;\">rc.samba</span>&nbsp;&nbsp;&nbsp;&nbsp; D /etc/inetd.conf</p><p>&nbsp;</p><ol class=\" list-paddingleft-2\"><li><p>删除文件命令为：&nbsp;D。<br/>A mkdir B rmdir C mv D rm</p></li></ol><p>&nbsp;</p><ol class=\" list-paddingleft-2\"><li><p>在vi编辑器中的命令模式下，删除当前光标处的字符使用&nbsp;A&nbsp;命令。<br/>A &lt;x&gt;; B &lt;d&gt;;&lt;w&gt;; C &lt;D&gt;; D &lt;d&gt;;&lt;d&gt;;</p></li></ol><p>&nbsp;</p><ol class=\" list-paddingleft-2\"><li><p>在vi编辑器中的命令模式下，键入&nbsp;B可在光标当前所在行下添加一新行。<br/>A &lt;a&gt;; B &lt;o&gt;; C &lt;I&gt;; D A</p></li></ol><p>&nbsp;</p><ol class=\" list-paddingleft-2\"><li><p>关闭linux系统（不重新启动）可使用命令B&nbsp;。<br/>A Ctrl+Alt+Del B halt C shutdown -r now D reboot</p></li></ol><p>&nbsp;</p><ol class=\" list-paddingleft-2\"><li><p>Linux文件系统的文件都按其作用分门别类地放在相关的目录中，对于外部设备文件，一般应将其放在&nbsp;C目录中。<br/>A /bin B /etc&nbsp;&nbsp; C /dev&nbsp;&nbsp; D /lib</p></li></ol><p>&nbsp;</p><ol class=\" list-paddingleft-2\"><li><p>WWW服务器是在Internet上使用最为广泛，它采用的是&nbsp;B结构。<br/>A&nbsp;服务器/工作站&nbsp;B&nbsp;B/S C&nbsp;集中式&nbsp;&nbsp; D&nbsp;分布式</p></li></ol><p>&nbsp;</p><p>55.在日常管理中，通常CPU会影响系统性能的情况是：&nbsp;A&nbsp;。<br/>A CPU已满负荷地运转&nbsp;B CPU的运行效率为30%<br/>C CPU的运行效率为50% D CPU的运行效率为80%</p><p>&nbsp;</p><p>56.配置Apache 1.3.19服务器需要修改的配置文件为 A<br/>A httpd.conf B access.conf C srm.conf D named.conf</p><p>&nbsp;</p><ol class=\" list-paddingleft-2\"><li><p>在局域网络内的某台主机用ping命令测试网络连接时发现网络内部的主机都可以连同，而不能与公网连通，问题可能是&nbsp;C。<br/>A&nbsp;主机IP设置有误<br/>B&nbsp;没有设置连接局域网的网关<br/>C&nbsp;局域网的网关或主机的网关设置有误<br/>D&nbsp;局域网DNS服务器设置有误</p></li></ol><p>&nbsp;</p><ol class=\" list-paddingleft-2\"><li><p>在使用mkdir命令创建新的目录时，在其父目录不存在时先创建父目录的选项是&nbsp;D&nbsp;。<br/>A -m B -d C -f&nbsp;&nbsp; D -p</p></li></ol><p>&nbsp;</p><ol class=\" list-paddingleft-2\"><li><p>Linux文件权限一共10位长度，分成四段，第三段表示的内容是&nbsp;C&nbsp;。<br/>A&nbsp;文件类型&nbsp;B&nbsp;文件所有者的权限<br/>C&nbsp;文件所有者所在组的权限&nbsp;D&nbsp;其他用户的权限</p></li></ol><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>三、填空题（16道）</p><ol class=\" list-paddingleft-2\"><li><p>在Linux操作系统中，设备都是通过特殊的<strong>文件</strong>来访问。</p></li></ol><p>&nbsp;</p><ol class=\" list-paddingleft-2\"><li><p>rm命令可删除文件或目录，其主要差别就是是否使用递归开关<strong>-r或-R</strong>。</p></li></ol><p>&nbsp;</p><ol class=\" list-paddingleft-2\"><li><p>将/home/stud1/wang目录做归档压缩，压缩后生成wang.tar.gz文件，并将此文件保存到/home目录下，实现此任务的tar命令格式<strong>tar zcvf /home/wang.tar.gz /home/stud1/wang</strong>。</p></li></ol><p>&nbsp;</p><ol class=\" list-paddingleft-2\"><li><p>在vi编辑环境下，使用<strong>Esc键</strong>进行模式转换。</p></li></ol><p>&nbsp;</p><ol class=\" list-paddingleft-2\"><li><p>&nbsp;在用vi编辑文件时，将文件内容存入test.txt文件中，应在命令模式下键入&nbsp;：<strong>w test.txt</strong>。</p></li></ol><p>&nbsp;</p><ol class=\" list-paddingleft-2\"><li><p>在&nbsp;Linux系统中，压缩文件后生成后缀为.gz文件的命令是<strong>gzip</strong>。</p></li></ol><p>&nbsp;</p><p>66．Apache服务器的进程配置文件是 httpd.conf 。</p><p>&nbsp;</p><ol class=\" list-paddingleft-2\"><li><p>将前一个命令的标准输出作为后一个命令的标准输入，称之为&nbsp;<strong>管道</strong>。</p></li></ol><p>&nbsp;</p><ol class=\" list-paddingleft-2\"><li><p>结束后台进程的命令是<strong>kill&nbsp;</strong>。</p></li></ol><p>&nbsp;</p><ol class=\" list-paddingleft-2\"><li><p>在Linux系统中，用来存放系统所需要的配置文件和子目录的目录是&nbsp;<strong>/etc</strong>。</p></li></ol><p>&nbsp;</p><ol class=\" list-paddingleft-2\"><li><p>Apache是实现WWW服务器功能的应用程序，即通常所说的“浏览web服务器”，在服务器端&nbsp;<strong>为用户提供浏览web服务</strong>的就是apache应用程序。</p></li></ol><p>&nbsp;</p><ol class=\" list-paddingleft-2\"><li><p>vi编辑器具有两种工作模式：<strong>命令模式&nbsp;和&nbsp;输入模式</strong>。</p></li></ol><p>&nbsp;</p><ol class=\" list-paddingleft-2\"><li><p>Ping命令可以<strong>测试</strong>网络中本机系统是否能到达&nbsp;<strong>一台远程主机</strong>，所以常常用于测试网络的&nbsp;连通性&nbsp;。</p></li></ol><p>&nbsp;</p><ol class=\" list-paddingleft-2\"><li><p>在Linux系统中所有内容都被表示为文件，组织文件的各种方法称为&nbsp;<strong>文件系统</strong>。</p></li></ol><p>&nbsp;</p><ol class=\" list-paddingleft-2\"><li><p>安装Linux系统对硬盘分区时，必须有两种分区类型：&nbsp;<strong>文件系统分区&nbsp;和&nbsp;交换分区</strong>。</p></li></ol><p>&nbsp;</p><ol class=\" list-paddingleft-2\"><li><p>在<strong>Linux</strong>系统中，以&nbsp;<strong>文件</strong>方式访问设备</p></li></ol><p>&nbsp;</p><p><br/></p>','3',0,1,4,0,1531205444,1531205444,'Linux','/public/static/index/images/toppic01.jpg',0);
INSERT INTO `clt_blog` VALUES (40,'JavaScript jQuery Ajax面试题笔试总结',3,1,'','','<p><strong>一、选择题</strong><strong>(</strong><strong>共2题)</strong></p><p>1.下列不属于Javascript语法关键/保留字的是</p><p>A.var</p><p>B.$（这是jQuery的）</p><p>C.function</p><p>D.while</p><p>&nbsp;</p><p>2.下列不属于Javascript DOM操作事件的是 ？</p><p>A.onclick</p><p>B.onkeydown</p><p>C.onbodyload</p><p>D.onmouseover</p><p>&nbsp;</p><p><strong>二、填空（共</strong><strong>3</strong><strong>题</strong><strong>）</strong></p><p>1.JS表单弹出对话框的函数是_____alert()__________</p><p>2.弹出对话框需要用户确认的函数是____confirm( )__________</p><p>3.获得输入焦点的函数是____focus( )________</p><p>&nbsp;</p><p><strong>三、问答题（共</strong><strong>54</strong><strong>题</strong><strong>）</strong></p><p>1.ajax技术利用了什么协议？简述ajax的工作机制。</p><p>HTTP协议&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; XMLHttpRequest()</p><p>运行原理：1.&nbsp; 创建请求对象&nbsp; 2. 设置回调函数onreadystatechange</p><ol class=\" list-paddingleft-2\"><li><p>初始化open() 4. 发送请求 send()</p></li></ol><p>&nbsp;</p><p>2.利用ajax开发时，需要考虑浏览器的兼容性么？如果需要，常需要考虑哪些？ajax开发常会遇到哪些问题，试举例说明？</p><p>需要考虑兼容问题如：第一创建ajax请求对象的方式。</p><p>遇到的问题：传输的数据格式（乱码）、跨域问题、安全问题。</p><p>利用ajax传输数据时，一般默认使用的是什么编码方式？如果出现乱码如何处理？</p><p>UTF-8字符编码： json_encode（）</p><p>&nbsp;</p><p>3.通过JS创建一个当前窗口的子窗口，通过程序实现子窗口对父窗口的操作实例？</p><p>window.parent.text(); //调用父窗口的一个函数text</p><p>&nbsp;</p><p>4.通过JS实现页面的前进和后退操作？</p><p>window.history.go(-1); //后退一步</p><p>window.history.back(); //后退一步</p><p>&nbsp;</p><p>window.history.forward();&nbsp; //前进一步</p><p>window.history.go(1);&nbsp; //前进一步</p><p>&nbsp;</p><p>5.JS的转向函数是?怎么引入一个外部JS文件?</p><p>window.location=”新地址”</p><p>&lt;script type=”text/javascript” src=”**.js”&gt;&lt;/script&gt;</p><p>&nbsp;</p><p>6.用javascript编写通过class属性获得html元素的方法（要考虑各种浏览器兼容性）？</p><p>//定义一个函数，用于获取指定class属性的节点</p><p>function fun(classname){</p><p>var list = new Array();</p><p>var nodelist = document.getElementsByTagName(&quot;*&quot;);</p><p>//获取当前文档的所有节点</p><p>for(var i=0;i&lt;nodelist.length;i++){</p><p>if(nodelist[i].className==classname){</p><p>list[list.length]=nodelist[i];</p><p>}</p><p>}</p><p>return list;</p><p>}</p><p>7.javascript的ajax方法：</p><p>open(method,url,async)， send(string)，setRequestHeader(header,value)</p><p>8.php和js 计算数组长度的函数和方法分别是：</p><p>php使用count()函数求数组长度，javascript使用length属性</p><p>php使用strlen()函数求字串长度，而javascript还是使用length属性</p><p>&nbsp;</p><p>9.JS中 为id 是 ”test” 的元素设置样式为 “good”</p><p>document.getElementById(“test”).className=”good”;</p><p>&nbsp;</p><p>10.谈谈你熟悉的js框架,并实现下面DOM元素的获取</p><p>&lt;div drag=&quot;true&quot; index=&quot;1&quot;&gt;&lt;/div&gt;</p><p>&lt;div drag=&quot;true&quot; index=&quot;2&quot;&gt;&lt;/div&gt;</p><p>&lt;div drag=&quot;true&quot;&gt;&lt;/div&gt;</p><p>要求找到drag=&quot;true&quot; 并且 index=&quot;1&quot; 或无index属性的div</p><p>提示: 如果不能一次写出,请完成下来步骤</p><p>使用jquery:</p><p>$(“div[drag=’true’][index=’1’]”)//</p><p>$(&quot;div[drag=&#39;true&#39;]&quot;).not(&quot;div[index]&quot;)//</p><p>&nbsp;</p><p>11.写出一些常用的js事件？</p><p>onclick、onload、onchange、onblur、onfocus、onscroll、onsubmit</p><p>onmousemove、onmouseout、onmouseover</p><p>onmouseup、onmousedown</p><p>&nbsp;</p><p>12.要求使用jQuery事件写在页面元素加载完成之后，动态绑定click事件到btnOK元素。</p><p>&lt;input id=&quot;btnOK&quot; type=&quot;button&quot; /&gt;</p><p>$(function(){</p><p>$(“#btnOK”).click(function(){</p><p>//事件处理代码</p><p>});</p><p>});</p><p>&nbsp;</p><p>13.要求写出jQuery中，可以处理ajax的几种方法。</p><p>$.ajax() / $.get() / $.post()&nbsp; / load()</p><p>14.简述 javascript 的变量作用域规则：</p><ol class=\" list-paddingleft-2\"><li><p>在函数外定义称全局变量，作用域为全局</p></li><li><p>在函数方法内使用var关键字定义的变量为局部变量，作用域仅在函数内有效</p></li><li><p>在函数内不使用var关键字定义的变量默认为全局变量。</p></li></ol><p>15.请描述你对js中 this 的理解</p><p>this是一个对象的引用，表示当前被调用的对象，一般使用在类的方法中</p><p>&nbsp;</p><p>16.请用js大致实现异步请求及错误信息的逻辑处理，并 alert 出错误 信息：（可以使用各种js框架，也可以使用原生方法）</p><p>$.ajax({</p><p><a href=\"url:”**.php\">url:”**.php</a>”,</p><p>type:”GET”,</p><p>async:true,</p><p>success: function(html){</p><p>alert（html）;</p><p>},</p><p>error:function(){</p><p>alert(&#39;请求错误’);</p><p>}</p><p>&nbsp;</p><p>});</p><p>&nbsp;</p><p>17.请用js 实现全选和取消全选的功能，只需要写出js代码（可以使用 jquery框架）</p><p>&lt;input type=”checkbox” id=”checkall” /&gt;全选</p><p>&lt;div class=”list”&gt;</p><p>&lt;input type=”checkbox” name=” type” value=”1” /&gt; 这是1</p><p>&lt;input type=”checkbox” name=”type” value=”2” /&gt; 这是2</p><p>&lt;/div&gt;</p><p>&nbsp;</p><p>$(function(){</p><p>$(&quot;#checkall&quot;).click(function(){</p><p>if($(this).attr(&quot;checked&quot;)){</p><p>$(&quot;div.list input&quot;).attr(&quot;checked&quot;,true);&nbsp;&nbsp; //全选</p><p>}else{</p><p>$(&quot;div.list input&quot;).attr(&quot;checked&quot;,false);&nbsp; //全不选</p><p>}</p><p>});</p><p>});</p><p>&nbsp;</p><p>18.列举你知道的IE 和firefox 之间JS 操作的不同之处</p><ol class=\" list-paddingleft-2\"><li><p>ajax请求对象的获取</p></li><li><p>&nbsp;&nbsp; &nbsp; document.getElementByClassName()</p></li><li><p>&nbsp; window.location.href</p></li><li><p>事件对象event的获取</p></li></ol><p>19.运行的结果？</p><p>function hi(){<br/>var a;<br/>alert(a);<br/>}</p><p>结果：undefined</p><p>&nbsp;</p><p>20.运行的结果？</p><p>function hi(){<br/>var a = null;<br/>alert(a);<br/>}</p><p>结果：null</p><p>&nbsp;</p><p>21.解释JavaScript中定时器的工作？如果有，也可以说明使用定时器的缺点？</p><p>定时器用于在设定的时间执行一段代码，或者在给定的时间间隔内重复该代码。这通过使用函数setTimeout，setInterval和clearInterval来完成。</p><p>setTimeout（function，delay）函数用于启动在所述延迟之后调用特定功能的定时器。</p><p>setInterval（function，delay）函数用于在提到的延迟中重复执行给定的功能，只有在取消时才停止。</p><p>clearInterval（id）函数指示定时器停止。</p><p>定时器在一个线程内运行，因此事件可能需要排队等待执行。</p><p>22.说明如何使用JavaScript提交表单？</p><p>要使用JavaScript提交表单，请使用</p><p>document.form [0] .submit（）;</p><p>23.Void（0）怎么用？</p><p>Void（0）用于防止页面刷新，并在调用时传递参数“zero”。</p><p>Void（0）用于调用另一种方法而不刷新页面。</p><p>&nbsp;</p><p>24.为什么不建议在JavaScript中使用innerHTML？</p><p>innerHTML内容每次刷新，因此很慢。 在innerHTML中没有验证的余地，因此，更容易在文档中插入错误代码，从而使网页不稳定。</p><p>&nbsp;</p><ul class=\" list-paddingleft-2\"><li><p>对WEB标准以及W3C的理解与认识<br/>标签闭合、标签小写、不乱嵌套、提高搜索机器人搜索几率、使用外 链css和js脚本、结构行为表现的分离、文件下载与页面速度更快、内容能被更多的用户所访问、内容能被更广泛的设备所访问、更少的代码和组件，容易维 护、改版方便，不需要变动页面内容、提供打印版本而不需要复制内容、提高网站易用性；</p><p>26.xhtml和html有什么区别<br/>HTML是一种基本的WEB网页设计语言，XHTML是一个基于XML的置标语言<br/>最主要的不同：<br/>XHTML 元素必须被正确地嵌套。<br/>XHTML 元素必须被关闭。<br/>标签名必须用小写字母。<br/>XHTML 文档必须拥有根元素。</p><p>Doctype? 严格模式与混杂模式-如何触发这两种模式，区分它们有何意义?<br/>用于声明文档使用那种规范（html/Xhtml）一般为 严格 过度 基于框架的html文档<br/>加入XMl声明可触发，解析方式更改为IE5.5 拥有IE5.5的bug</p><p>28.行内元素有哪些?块级元素有哪些?CSS的盒模型?<br/>块级元素：div p h1 h2 h3 h4 form ul<br/>行内元素: a b br i span input select<br/>css盒模型:内容，border ,margin，padding</p></li></ul><p>29.CSS引入的方式有哪些? link和@import的区别是?<br/>内联 内嵌 外链 导入<br/>区别 ：同时加载<br/>前者无兼容性，后者CSS2.1以下浏览器不支持<br/>Link 支持使用javascript改变样式，后者不可</p><p>30.CSS选择符有哪些?哪些属性可以继承?优先级算法如何计算?内联和important哪个优先级高?<br/>标签选择符 类选择符 id选择符<br/>继承不如指定 Id&gt;class&gt;标签选择<br/>后者优先级高<br/>31.前端页面有哪三层构成，分别是什么?作用是什么?<br/>结构层 Html 表示层 CSS 行为层 js</p><p>32.css的基本语句构成是?<br/>选择器{属性1:值1;属性2:值2;……}</p><p>33.你做的页面在哪些流览器测试过?这些浏览器的内核分别是什么?<br/>Ie(Ie内核) 火狐（Gecko） 谷歌（webkit） opear(Presto)<br/>34.标签上title与alt属性的区别是什么?<br/>Alt 当图片不显示是 用文字代表。<br/>Title 为该属性提供信息</p><p>35.描述css reset的作用和用途。<br/>Reset重置浏览器的css默认属性 浏览器的品种不同，样式不同，然后重置，让他们统一</p><p>36.解释css sprites，如何使用。<br/>css 精灵 把一堆小的图片整合到一张大的图片上，减轻服务器对图片的请求数量</p><p>37.浏览器标准模式和怪异模式之间的区别是什么?<br/>盒子模型 渲染模式的不同<br/>使用 window.top.document.compatMode 可显示为什么模式</p><p>38.你如何对网站的文件和资源进行优化?期待的解决方案包括：<br/>文件合并<br/>文件最小化/文件压缩<br/>使用CDN托管<br/>缓存的使用</p><p>39.什么是语义化的HTML?<br/>直观的认识标签 对于搜索引擎的抓取有好处</p><p>40.清除浮动的几种方式，各自的优缺点<br/>1.使用空标签清除浮动 clear:both（理论上能清楚任何标签，，，增加无意义的标签）<br/>2.使用overflow:auto（空标签元素清除浮动而不得不增加无意代码的弊端,,使用zoom:1用于兼容IE）<br/>3.是用afert伪元素清除浮动(用于非IE浏览器)</p><p>41.javascript的typeof返回哪些数据类型<br/>object number function boolean underfind</p><p>42.例举3种强制类型转换和2种隐式类型转换?<br/>强制（parseInt,parseFloat,number）<br/>隐式（== – ===）</p><p>43.split() join() 的区别<br/>前者是切割成数组的形式，后者是将数组转换成字符串</p><p>44.数组方法pop() push() unshift() shift()<br/>Push()尾部添加 pop()尾部删除<br/>Unshift()头部添加 shift()头部删除</p><p>45.IE和DOM事件流的区别<br/>1.执行顺序不一样、<br/>2.参数不一样<br/>3.事件加不加on<br/>4.this指向问题</p><p>46.IE和标准下有哪些兼容性的写法<br/>Var ev = ev || window.event<br/>document.documentElement.clientWidth || document.body.clientWidth<br/>Var target = ev.srcElement||ev.target</p><p>47.ajax请求的时候get 和post方式的区别<br/>一个在url后面 一个放在虚拟载体里面<br/>有大小限制<br/>安全问题<br/>应用不同 一个是论坛等只需要请求的，一个是类似修改密码的<br/>48.call和apply的区别<br/>Object.call(this,obj1,obj2,obj3)<br/>Object.apply(this,arguments)</p><p>49.ajax请求时，如何解释json数据<br/>使用eval parse 鉴于安全性考虑 使用parse更靠谱</p><p>50.如何阻止事件冒泡和默认事件<br/>canceBubble return false</p><p>51.添加 删除 替换 插入到某个接点的方法<br/>obj.appendChidl()<br/>obj.innersetBefore<br/>obj.replaceChild<br/>obj.removeChild</p><p>52.解释jsonp的原理，以及为什么不是真正的ajax<br/>动态创建script标签，回调函数<br/>Ajax是页面无刷新请求数据操作</p><p>53.javascript的本地对象，内置对象和宿主对象<br/>本地对象为array obj regexp等可以new实例化<br/>内置对象为gload Math 等不可以实例化的<br/>宿主为浏览器自带的document,window 等</p><p>54.document load 和document ready的区别<br/>Document.onload 是在结构和样式加载完才执行js<br/>Document.ready原生种没有这个方法，jquery中有 $().ready(function)</p><p><br/></p>','1',0,1,10,1,1531205497,1531205497,'JavaScript,jQuery Ajax','/public/static/index/images/toppic01.jpg',0);
INSERT INTO `clt_blog` VALUES (41,'php转换类型',4,1,'','','<p><br/></p><p>PHP数据类型转换(字符转数字,数字转字符)<br/>PHP的数据类型转换属于强制转换，允许转换的PHP数据类型有：</p><p>（int）、（integer）：转换成整形<br/>（float）、（double）、（real）：转换成浮点型<br/>（string）：转换成字符串<br/>（bool）、（boolean）：转换成布尔类型<br/>（array）：转换成数组<br/>（object）：转换成对象<br/>PHP数据类型有三种转换方式：</p><p>在要转换的变量之前加上用括号括起来的目标类型<br/>使用3个具体类型的转换函数，intval()、floatval()、strval()<br/>使用通用类型转换函数settype(mixed var,string type)<br/>第一种转换方式： (int)&nbsp; &nbsp;(bool)&nbsp; &nbsp;(float)&nbsp; &nbsp;(string)&nbsp; &nbsp;(array) (object)<br/>&lt;?php<br/>$num1=3.14;<br/>$num2=(int)$num1;<br/>var_dump($num1);&nbsp; //输出float(3.14)<br/>var_dump($num2);&nbsp; //输出int(3)<br/>?&gt;<br/>第二种转换方式：&nbsp; &nbsp;intval()&nbsp; &nbsp;floatval()&nbsp; &nbsp;strval()<br/>&lt;?php<br/>$str=&quot;123.9abc&quot;;<br/>$int=intval($str);&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; //转换后数值：123<br/>$float=floatval($str);&nbsp; //转换后数值：123.9<br/>$str=strval($float);&nbsp; &nbsp; &nbsp; //转换后字符串：&quot;123.9&quot;<br/>?&gt;<br/>第三种转换方式：&nbsp; &nbsp;settype();<br/>&lt;?php<br/>$num4=12.8;<br/>$flg=settype($num4,&quot;int&quot;);<br/>var_dump($flg);&nbsp; &nbsp; //输出bool(true)<br/>var_dump($num4);&nbsp; //输出int(12)<br/>?&gt;</p><p><br/></p>','1',0,1,9,0,1531205602,1531205602,'php,转换类型','/public/static/index/images/toppic02.jpg',0);
INSERT INTO `clt_blog` VALUES (42,'有用的服务器配置地址',5,1,'','','<p>phpstudy配置ssl：<a href=\"https://www.wosign.com/faq/faq-phpstudy-ssl.htm\">https://www.wosign.com/faq/faq-phpstudy-ssl.htm</a><br/>阿里云HTTPS安全加密认证：<a href=\"http://www.taiyangxiao.com/post/301.html\">http://www.taiyangxiao.com/post/301.html</a></p><p>国外服务器申请：<a href=\"http://blog.csdn.net/qq_34877548/article/details/53444769\">http://blog.csdn.net/qq_34877548/article/details/53444769</a></p><p>视频播放<a href=\"https://www.cnblogs.com/kiter/archive/2013/02/25/2932157.html\">https://www.cnblogs.com/kiter/archive/2013/02/25/2932157.html</a></p><p>&nbsp;</p><p><a href=\"http://www.linuxidc.com/Linux/2016-04/130520.htm\">http://www.linuxidc.com/Linux/2016-04/130520.htm</a></p><p><a href=\"http://linux.linuxidc.com/index.php?folder=cHViLzIwMTcvTGludXg=\">http://linux.linuxidc.com/index.php?folder=cHViLzIwMTcvTGludXg=</a></p><p>lamp一键安装包：<a href=\"https://lamp.sh/\">https://lamp.sh/</a></p><p>lnmp一键安装包：<a href=\"https://lnmp.org/install.html\">https://lnmp.org/install.html</a></p><p>vim 重装：<a href=\"http://blog.csdn.net/qwsamxy/article/details/50533621\">http://blog.csdn.net/qwsamxy/article/details/50533621</a><br/>ssh安装：<a href=\"http://www.linuxidc.com/Linux/2013-07/87368.htm\">http://www.linuxidc.com/Linux/2013-07/87368.htm</a></p><p>修改静态地址：<a href=\"http://www.mamicode.com/info-detail-2096944.html\">http://www.mamicode.com/info-detail-2096944.html</a></p><p>find [路径] &lt;表达式&gt;<br/>查找文件<br/>-name &lt;表达式&gt; 根据文件名查找文件<br/>-iname &lt;表达式&gt; 根据文件名查找文件，忽略大小写<br/>dbshaozi1021<br/>ZtoiGhFrejAAkmEA<br/>添加网站(虚拟主机):<a href=\"https://lnmp.org/faq/lnmp-vhost-add-howto.html\">https://lnmp.org/faq/lnmp-vhost-add-howto.html</a></p><p>Lnmp下pureftpd新建FTP账户权限不足解决方法:<a href=\"http://www.uedbox.com/lnmp-pureftpd-ftp-user-permitted/\">http://www.uedbox.com/lnmp-pureftpd-ftp-user-permitted/</a></p><p>MySQL5.7 添加用户、删除用户与授权:<a href=\"https://www.cnblogs.com/xujishou/p/6306765.html\">https://www.cnblogs.com/xujishou/p/6306765.html</a></p><p><br/></p>','3,4',0,1,6,0,1531205674,1531205674,'服务器','/public/static/index/images/v1.jpg',0);
INSERT INTO `clt_blog` VALUES (43,'Nginx下实现pathinfo模式',5,1,'','','<p>文章转载至：http://www.thinkphp.cn/topic/3138.html</p><p>打开Nginx的配置文件 /usr/local/nginx/conf/nginx.conf 一般是在这个路径，根据你的安装路径可能有所变化。如果你配置了vhost，而且只需要你这一个vhost支持pathinfo的话，可以直接打开你的vhost的配置文件。找到类似如下代码（不同版本的nginx可能稍有不同，但是相差不会很远）：<br/>location ~ .*.(php|php5)?$<br/>{<br/>#原有代码<br/>}<br/>复制代码<br/>修改成以下代码：<br/>#去掉$是为了不匹配行末，即可以匹配.php/，以实现pathinfo<br/>#如果你不需要用到php5后缀，也可以将其去掉<br/>location ~ .php<br/>{<br/>#原有代码</p><p>#定义变量 $path_info ，用于存放pathinfo信息<br/>set $path_info &quot;&quot;;<br/>#定义变量 $real_script_name，用于存放真实地址<br/>set $real_script_name $fastcgi_script_name;<br/>#如果地址与引号内的正则表达式匹配<br/>if ($fastcgi_script_name ~ &quot;^(.+?\\.php)(/.+)$&quot;) {<br/>#将文件地址赋值给变量 $real_script_name<br/>set $real_script_name $1;<br/>#将文件地址后的参数赋值给变量 $path_info<br/>set $path_info $2;<br/>}<br/>#配置fastcgi的一些参数<br/>fastcgi_param SCRIPT_FILENAME $document_root$real_script_name;<br/>fastcgi_param SCRIPT_NAME $real_script_name;<br/>fastcgi_param PATH_INFO $path_info;<br/>}<br/>复制代码<br/>这样，nginx服务器就可以支持pathinfo了。但是如果要支持ThinkPHP的URL_MODE设置为2的模式，还需要配置rewrite规则。找到access_log语句，在其上方加上以下语句：<br/>#如果请求既不是一个文件，也不是一个目录，则执行一下重写规则<br/>if (!-e $request_filename)<br/>{<br/>#地址作为将参数rewrite到index.php上。<br/>rewrite ^/(.*)$ /index.php/$1;<br/>#若是子目录则使用下面这句，将subdir改成目录名称即可。<br/>#rewrite ^/subdir/(.*)$ /subdir/index.php/$1;<br/>}<br/>复制代码<br/>最后，保存配置文件，重启nginx服务，把ThinkPHP的URL_MODEL设置为2，访问下你的页面，如果能正常访问，恭喜你pathinfo配置成功了^_^</p><p><br/></p>','3',0,1,5,0,1531205728,1531205728,'Nginx，pathinfo','/public/static/index/images/toppic01.jpg',0);
INSERT INTO `clt_blog` VALUES (44,'HTTP referer的作用',4,1,'','','<p>简言之，HTTP Referer是header的一部分，当浏览器向<a href=\"http://www.so.com/s?q=web%E6%9C%8D%E5%8A%A1%E5%99%A8&ie=utf-8&src=wenda_link\" target=\"_blank\">web服务器</a>发送请求的时候，一般会带上Referer，告诉服务器我是从哪个页面链接过来的，服务器籍此可以获得一些信息用于处理。比如从我主页上链接到一个朋友那里，他的服务器就能够从HTTP Referer中统计出每天有多少用户点击我主页上的链接访问他的网站。 Referer其实应该是英文单词Referrer，不过拼错的人太多了，所以编写标准的人也就将错就错了。 Request.ServerVariables(&quot;HTTP_REFERER&quot;)的用法(防<a href=\"http://www.so.com/s?q=%E5%A4%96%E8%BF%9E%E6%8E%A5&ie=utf-8&src=wenda_link\" target=\"_blank\">外连接</a>)</p><h5 class=\"resolved-cnt\" style=\"padding-left: 30px;\">下列情况是从浏览器的地址栏正常取得Request.ServerVariables(&quot;HTTP_REFERER&quot;)：</h5><p>1) 直接用&lt;a href=&quot;&quot;&gt;</p><p>2) 用Submit或&lt;input type=&quot;image&quot;&gt;提交的表单(POST或GET)</p><p>3) 使用JAvaScript提交的表单(POST或GET)</p><h5 class=\"resolved-cnt\" style=\"padding-left: 30px;\"><strong>下面我们再看看Request.ServerVariables(&quot;HTTP_REFERER&quot;)不能正常取值的情况：</strong></h5><p>1) 从收藏夹链接</p><p>2) 单击主页或自定义的地址</p><p>3) 在浏览器中直接输地址</p><p>4) 使用JavaScript的Location.href或者是Location.replace()</p><p>5) &lt;%Response.Redirect%&gt;</p><p>6) &lt;%Response.AddHeader%&gt;或者是&lt;mete http-equiv=&quot;refresh&quot;&gt;转向</p><p>7) 用XML加载地址 防外链代码例子（C#）： if (Request.ServerVariables[&quot;HTTP_REFERER&quot;] == null || !Request.ServerVariables[&quot;HTTP_REFERER&quot;].ToString().Contains(Request.ServerVariables[&quot;HTTP_HOST&quot;].ToString())) { Server.Transfer(&quot;Error.aspx&quot;); }</p><p>&nbsp;显然，Request.ServerVariables(&quot;HTTP_REFERER&quot;)在多数情况下是不能正常工作的，下面我们看一个例子:</p><p>ref.asp &lt;% response.write &quot;You came from: &quot; &amp; request.servervariables(&quot;http_referer&quot;) %&gt; ref.htm &lt;% Response.AddHeader &quot;Refresh&quot;, &quot;10;URL=ref.asp&quot; %&gt; &lt;meta http-equiv=&#39;refresh&#39; content=&#39;10;URL=ref.asp&#39;&gt; &lt;form method=GET action=ref.asp name=getform&gt; &lt;input type=submit value=&#39; Go there (GET) &gt;&gt; &#39;&gt; &lt;input type=image style=&#39;cursor:hand&#39;&gt; &lt;/form&gt;&lt;p&gt;</p><p>看看上面的代码会得到什么的结果.</p><p>&lt;form method=POST action=ref.asp name=postform&gt; &lt;input type=submit value=&#39; Go there (POST) &gt;&gt; &#39;&gt; &lt;input type=image style=&#39;cursor:hand&#39;&gt; &lt;/form&gt;</p><p>&lt;p&gt; &lt;a href=&#39;ref.asp&#39;&gt;直接链接&lt;/a&gt;</p><p>&lt;p&gt; &lt;a href=&#39;#&#39; onclick=&#39;window.location.href=&quot;ref.asp&quot;;return false;&#39;&gt;Javascript location&lt;/a&gt;</p><p>&lt;p&gt;<span style=\"line-height: 1.6471;\">&lt;a &nbsp;href=&#39;#&#39;onclick=&#39;window.location.replace(&quot;ref.asp&quot;);return false;&#39;&gt;Javascript replace&lt;/a&gt;</span></p><p><span style=\"line-height: 1.6471;\">&lt;p&gt;</span><span style=\"line-height: 1.6471;\">&lt;a href=&#39;#&#39; onclick=&#39;document.getform.submit();return false;&#39;&gt;javascript GET&lt;/a&gt;</span></p><p><span style=\"line-height: 1.6471;\">&lt;p&gt;</span>&lt;a href=&#39;#&#39; onclick=&#39;document.postform.submit();return false;&#39;&gt;javascript POST&lt;/a&gt;</p><p>Request.ServerVariables(HTTP_REFERER)的工作方式</p><p>在JSP中获取REFERER的方式是：request.getHeader(&quot;REFERER&quot;);</p><p>在PHP中获取REFERER的方式是：$_SERVER[&#39;HTTP_REFERER&#39;];</p><p><br/></p>','4',0,1,16,0,1531205860,1531205860,'HTTP，referer','/public/static/index/images/toppic01.jpg',0);
INSERT INTO `clt_blog` VALUES (45,'MySQL优化面试问题',8,1,'','','<p>文章出自：<a href=\"http://blog.csdn.net/zhaoliang831214/article/details/50977150\">http://blog.csdn.net/zhaoliang831214/article/details/50977150</a> 第一方面：30种mysql优化sql语句查询的方法</p><p>1.对查询进行优化，应尽量避免全表扫描，首先应考虑在 where 及 order by 涉及的列上建立索引。 2.应尽量避免在 where 子句中使用!=或&lt;&gt;操作符，否则将引擎放弃使用索引而进行全表扫描。 3.应尽量避免在 where 子句中对字段进行 null 值判断，否则将导致引擎放弃使用索引而进行全表扫描，如： select id from t where num is null 可以在num上设置默认值0，确保表中num列没有null值，然后这样查询： select id from t where num=0 4.应尽量避免在 where 子句中使用 or 来连接条件，否则将导致引擎放弃使用索引而进行全表扫描，如： select id from t where num=10 or num=20 可以这样查询： select id from t where num=10 union all select id from t where num=20 5.下面的查询也将导致全表扫描： select id from t where name like &#39;%abc%&#39; 若要提高效率，可以考虑全文检索。 6.in 和 not in 也要慎用，否则会导致全表扫描，如： select id from t where num in(1,2,3) 对于连续的数值，能用 between 就不要用 in 了： select id from t where num between 1 and 3 7.如果在 where 子句中使用参数，也会导致全表扫描。因为SQL只有在运行时才会解析局部变量，但优化程序不能将访问计划的选择推迟到运行时;它必须在编译时进行选择。然而，如果在编译时建立访问计划，变量的值还是未知的，因而无法作为索引选择的输入项。如下面语句将进行全表扫描： select id from t where num=@num 可以改为强制查询使用索引： select id from t with(index(索引名)) where num=@num 8.应尽量避免在 where 子句中对字段进行表达式操作，这将导致引擎放弃使用索引而进行全表扫描。如： select id from t where num/2=100 应改为: select id from t where num=100*2 9.应尽量避免在where子句中对字段进行函数操作，这将导致引擎放弃使用索引而进行全表扫描。如： select id from t where substring(name,1,3)=&#39;abc&#39;--name以abc开头的id select id from t where datediff(day,createdate,&#39;2005-11-30&#39;)=0--&#39;2005-11-30&#39;生成的id 应改为: select id from t where name like &#39;abc%&#39; select id from t where createdate&gt;=&#39;2005-11-30&#39; and createdate&lt;&#39;2005-12-1&#39; 10.不要在 where 子句中的“=”左边进行函数、算术运算或其他表达式运算，否则系统将可能无法正确使用索引。 11.在使用索引字段作为条件时，如果该索引是复合索引，那么必须使用到该索引中的第一个字段作为条件时才能保证系统使用该索引，否则该索引将不会被使用，并且应尽可能的让字段顺序与索引顺序相一致。 12.不要写一些没有意义的查询，如需要生成一个空表结构： select col1,col2 into #t from t where 1=0 这类代码不会返回任何结果集，但是会消耗系统资源的，应改成这样： create table #t(...)13.很多时候用 exists 代替 in 是一个好的选择： select num from a where num in(select num from b) 用下面的语句替换： select num from a where exists(select 1 from b where num=a.num) 14.并不是所有索引对查询都有效，SQL是根据表中数据来进行查询优化的，当索引列有大量数据重复时，SQL查询可能不会去利用索引，如一表中有字段sex，male、female几乎各一半，那么即使在sex上建了索引也对查询效率起不了作用。 15.索引并不是越多越好，索引固然可以提高相应的 select 的效率，但同时也降低了 insert 及 update 的效率，因为 insert 或 update 时有可能会重建索引，所以怎样建索引需要慎重考虑，视具体情况而定。一个表的索引数最好不要超过6个，若太多则应考虑一些不常使用到的列上建的索引是否有必要。 16.应尽可能的避免更新 clustered 索引数据列，因为 clustered 索引数据列的顺序就是表记录的物理存储顺序，一旦该列值改变将导致整个表记录的顺序的调整，会耗费相当大的资源。若应用系统需要频繁更新 clustered 索引数据列，那么需要考虑是否应将该索引建为 clustered 索引。 17.尽量使用数字型字段，若只含数值信息的字段尽量不要设计为字符型，这会降低查询和连接的性能，并会增加存储开销。这是因为引擎在处理查询和连接时会逐个比较字符串中每一个字符，而对于数字型而言只需要比较一次就够了。 18.尽可能的使用 varchar/nvarchar 代替 char/nchar ，因为首先变长字段存储空间小，可以节省存储空间，其次对于查询来说，在一个相对较小的字段内搜索效率显然要高些。 19.任何地方都不要使用 select * from t ，用具体的字段列表代替“*”，不要返回用不到的任何字段。 20.尽量使用表变量来代替临时表。如果表变量包含大量数据，请注意索引非常有限(只有主键索引)。 21.避免频繁创建和删除临时表，以减少系统表资源的消耗。 22.临时表并不是不可使用，适当地使用它们可以使某些例程更有效，例如，当需要重复引用大型表或常用表中的某个数据集时。但是，对于一次性事件，最好使用导出表。 23.在新建临时表时，如果一次性插入数据量很大，那么可以使用 select into 代替 create table，避免造成大量 log ，以提高速度;如果数据量不大，为了缓和系统表的资源，应先create table，然后insert。 24.如果使用到了临时表，在存储过程的最后务必将所有的临时表显式删除，先 truncate table ，然后 drop table ，这样可以避免系统表的较长时间锁定。 25.尽量避免使用游标，因为游标的效率较差，如果游标操作的数据超过1万行，那么就应该考虑改写。 26.使用基于游标的方法或临时表方法之前，应先寻找基于集的解决方案来解决问题，基于集的方法通常更有效。 27.与临时表一样，游标并不是不可使用。对小型数据集使用 FAST_FORWARD 游标通常要优于其他逐行处理方法，尤其是在必须引用几个表才能获得所需的数据时。在结果集中包括“合计”的例程通常要比使用游标执行的速度快。如果开发时间允许，基于游标的方法和基于集的方法都可以尝试一下，看哪一种方法的效果更好。 28.在所有的存储过程和触发器的开始处设置 SET NOCOUNT ON ，在结束时设置 SET NOCOUNT OFF 。无需在执行存储过程和触发器的每个语句后向客户端发送 DONE_IN_PROC 消息。 29.尽量避免向客户端返回大数据量，若数据量过大，应该考虑相应需求是否合理。 30.尽量避免大事务操作，提高系统并发能力。上面有几句写的有问题。</p><h3><strong><span style=\"color: #000000;\">第二方面：</span></strong> <em><strong><span style=\"color: #ff0000;\">select Count (*)和Select Count(1)以及Select Count(column)区别</span></strong></em> <em><strong><span style=\"color: #ff0000;\"> 一般情况下，Select Count (*)和Select Count(1)两着返回结果是一样的</span></strong></em> <em><strong><span style=\"color: #ff0000;\"> 假如表沒有主键(Primary key), 那么count(1)比count(*)快，</span></strong></em> <em><strong><span style=\"color: #ff0000;\"> 如果有主键的話，那主键作为count的条件时候count(主键)最快</span></strong></em> <em><strong><span style=\"color: #ff0000;\"> 如果你的表只有一个字段的话那count(*)就是最快的</span></strong></em> <em><strong><span style=\"color: #ff0000;\"> count(*) 跟 count(1) 的结果一样，都包括对NULL的统计，而count(column) 是不包括NULL的统计</span></strong></em></h3><p><span style=\"color: #000000;\"><strong>第三方面：</strong></span> 索引列上计算引起的索引失效及优化措施以及注意事项 创建索引、优化查询以便达到更好的查询优化效果。但实际上，MySQL有时并不按我们设计的那样执行查询。MySQL是根据统计信息来生成执行计划的，这就涉及索引及索引的刷选率，表数据量，还有一些额外的因素。 Each table index is queried, and the best index is used unless the optimizer believes that it is more efficient to use a table scan. At one time, a scan was used based on whether the best index spanned more than 30% of the table, but a fixed percentage no longer determines the choice between using an index or a scan. The optimizer now is more complex and bases its estimate on additional factors such as table size, number of rows, and I/O block size. 简而言之，当MYSQL认为符合条件的记录在30%以上，它就不会再使用索引，因为mysql认为走索引的代价比不用索引代价大，所以优化器选择了自己认为代价最小的方式。事实也的确如此 是MYSQL认为记录是30%以上，而不是实际MYSQL去查完再决定的。都查完了，还用什么索引啊？！ <a class=\"replace_word\" title=\"MySQL知识库\" href=\"http://lib.csdn.net/base/mysql\" target=\"_blank\">MySQL</a>会先估算，然后决定是否使用索引。 https://www.douban.com/note/345871485/</p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\"><strong>1. 查看当前MYSQL支持的存储引擎</strong></p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\"><strong>show engines;</strong></p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\"><strong>2. 查看某一用户的权限</strong></p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\"><strong>show grants for UserName;</strong></p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\"><strong>3. 如何得知当前Binary Log文件和Position值</strong></p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\"><strong>show master status;</strong></p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\"><strong>4. 用什么命令切换Binary Log</strong></p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\"><strong>flush logs;</strong></p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\"><strong>5. 用什么命令修复MyISAM表</strong></p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\"><strong>repaire table TabName;</strong></p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\"><strong>6. 用什么命令整理表数据文件的碎片</strong></p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\"><strong>optimize table TabName;</strong></p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\"><strong>7. 如何得到TabA表的建表语句</strong></p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\"><strong>show create table TabA;</strong></p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\"><strong>8. 创建TabB表，完整拷贝TabA表的结构和索引，不要数据</strong></p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\"><strong>create table TabB like TabA;</strong></p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\"><strong>9. 为TabA表新增字段ColA，精度无偏差的小数型，10位整数，2位小数，加索引</strong></p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\"><strong>alter table TabA add ColA decimal(12,2), add key (ColA);</strong></p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\"><strong>10. 如何清空TabB表的数据</strong></p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\"><strong>truncate table TabB;</strong></p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\"><strong>11. 如何不进入mysql客户端，执行一条SQL命令，帐号User，密码Passwd，库名DBName，SQL为&quot;select sysdate();&quot;</strong></p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\"><strong>mysql -uUser -pPasswd -D DBName -e &quot;select sysdate();&quot;</strong></p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\"><strong>12. 如何从slow log中分析出所有的select语句，按次数以倒序输出前20条，日志名为slow_log.file</strong></p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\"><strong>mysqldumpslow -g &#39;select&#39; -s c -r slow_log.file</strong></p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\"><strong>13. 如何从BinLog中分析出时间从&quot;2012-10-27 13:00:00&quot;到&quot;2012-10-27 18:00:00&quot;的anjuke库的SQL语句，日志名为bin_log.file</strong></p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\"><strong>mysqlbinlog -d anjuke --start-datetime=&#39;2012-10-27 13:00:00&#39; --stop-datetime=&#39;2012-10-27 18:00:00&#39; bin_log.file</strong></p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\"><strong>14. 创建用户，用户名为iamdba，密码为mypasswd，访问来源10.11.8.X，即8段IP都允许，对anjuke库所有表拥有“增删改查”权限</strong></p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\"><strong>grant insert,delete,update,select on anjuke.* to iamdba@&#39;10.10.8.%&#39; identified by &#39;mypasswd&#39;;</strong></p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\"><strong>15. 如何执行一个SQL文件，帐号User，密码Passwd，库名DBName，SQL文件名为sql.file</strong></p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\"><strong>mysql -uUser -pPasswd -D DBName</strong></p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\"><strong>16. 用select方式导出TabA的所有数据到/tmp/TabA.txt文件</strong></p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\"><strong>select * from TabA into outfile &#39;/tmp/TabA.txt&#39;;</strong></p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\"><strong>17. 导入TabA.txt数据到TabB表，如主键或唯一键冲突，覆盖tabB表中的数据</strong></p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\"><strong>load data [local] infile &#39;/tmp/TabA.txt&#39; replace into table TabB;</strong></p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\"><strong>18. 用mysqldump命令导出anjuke库里的TabB表中满足“ColA &gt; 100”的数据到TabB.sql文件，不要导出建表语句，帐号User，密码Passwd</strong></p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\"><strong>mysqldump -uUser -pPasswd --no-create-info anjuke TabB -w &quot;ColA &gt; 100&quot; &gt;TabB.sql</strong></p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\"><strong>PS: --no-create-info 也可以写为 -t</strong></p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\"><strong>19. 切换同步到master 10.11.8.11，端口为3307，用户名repl，密码为passwd，起点BinLog为db-master.000001，位置123456</strong></p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\"><strong>change master to master_host=&#39;10.11.8.11&#39;, master_port=3307, master_user=&#39;repl&#39;, master_password=&#39;passwd&#39;, master_log_file=&#39;db-master.000001&#39;, master_log_pos=123456;</strong></p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\"><strong>20. 启动slave的sql进程，并在同步到master的db-master.000003文件123456位置上停止</strong></p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\"><strong>start slave sql_thread util master_log_file=&#39;db-master.000003&#39;, master_log_pos=123456;</strong></p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\"><strong>21. 建一个满足以下五种条件的最优索引</strong></p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\"><strong>where a=? and b=? and c=?</strong></p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\"><strong>where a=? and b&gt;? and c=?</strong></p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\"><strong>where a=? and b in (?) and c=?</strong></p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\"><strong>where a=? and c=? order by b</strong></p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\"><strong>where a=? order by c,b</strong></p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\"><strong>创建顺序为(a,c,b)的复合索引</strong></p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\"><strong>22. 有二个复合索引(a,b)和(c,d)，以下语句会怎样使用索引？可以做怎样的优化？</strong></p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\"><strong>select * from Tab where (a=? and b=?) or (c=? and d=?)</strong></p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\"><strong>根据MYSQL的机制，只会使用到一个筛选效果好的复合索引，可以做如下优化</strong></p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\"><strong>select * from Tab where a=? and b=?</strong></p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\"><strong>union</strong></p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\"><strong>select * from Tab where c=? and d=?</strong></p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\"><strong>23. 如何统计文件a.txt有多少非空行？</strong></p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\"><strong>grep -c &#39;^..*$&#39; a.txt</strong></p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\"><strong>或</strong></p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\"><strong>grep -v &#39;^$&#39; a.txt | wc -l</strong></p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\"><strong>24. 文件b.txt，每行以“:”符分成5列，如“1:apple:3:2012-10-25:very good”，如何得到所有行第三列的总合值</strong></p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\"><strong>awk &#39;BEGIN {FS=&quot;:&quot;; s=0} {s+=$3} END {print s}&#39; b.txt</strong></p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\"><strong>25. 截取文件c.txt的第60至480行记录，忽略大小写，统计出重复次数最多的那条记录，及重复次数</strong></p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\"><strong>sed -n &#39;60,480&#39;p c.txt | sort | uniq -i -c | sort -rn | head -n 1</strong></p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\">二、简答题 5x5</p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\">1. MyISAM和InnoDB各有哪些特性？分别适用在怎样的场景下？</p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\">MyISAM，表锁，不支持事务，表损坏率较高，分为MYD数据文件和MYI索引二个文件，读写并发不如InnoDB，适用于insert较多的场景，且支持直接复制文件，用以备份数据</p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\">InnoDB，行锁，支持事务，crash后具有recove机制，只有ibd文件，分为数据区和索引区，有较好的读写并发能力，但做count()运算时相当消耗CPU</p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\">2. MySQL原生支持的备份方式有哪些，并说出其优缺点？</p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\">(1) 直接拷贝数据文件，必须是MyISAM表，且使用flush tables with read lock;语句，优点是简单方便，缺点是须要锁写，且只能在同版本的MySQL上恢复使用</p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\">(2) mysqldump，导出的是SQL语句，所以可以跨版本恢复，但是需要导入数据和重建索引，恢复用时会较长，如果是MyISAM表，同样需要锁表，如果是InnoDB表，可以使用--single-transaction参数避免此问题</p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\">3. 在创建和使用索引时，有哪些要注意的地方，有什么规则？</p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\">避免索引过多，会影响写性能</p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\">给筛选效果低的字段加索引，几乎无效，如性别、状态标志等</p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\">每条查询执行时，只会使用一个索引，有需要时应该创建复合索引</p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\">复合索引使用时遵守“从左到右”原则，严禁左百分号</p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\">不要在索引字段上有运算操作和使用函数，将无法使用索引</p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\">4. 如何分析一条SQL语句的执行性能，关注哪些信息？</p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\">不论性能如何，不要有子查询和嵌套SQL，尽量不要有join查询</p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\">使用explain命令，观察type列，可以知道是否是全表扫描，和索引的使用形式，观察key可以知道使用了哪个索引，观察key_len可以知道索引是否使用完成，观察rows可以知道扫描的行数是否过多，观察extra可以知道是否使用了临时表和进行了额外的排序操作</p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\">5. MySQL通过什么机制来控制访问权限？</p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\">mysql库中，从user表到host表和db表，再到tables_priv表和colums_priv表</p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\">三、聊天题</p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\">1. 对于一台DB服务器，有哪些是必须监控的基础指标，如何得到这些值？</p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\">2. 简单介绍一个你用过的MYSQL状态探测或监控工具，第三方的或自己写的都可以，说出你觉得最好用的地方</p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\">3. 简单介绍一个你用过的MySQL日志(slow/general/binary log)分析工具，第三方的或自己写的都可以，说出你觉得最好用的地方</p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\">4. 介绍一件遇到过的DB服务器故障</p><p style=\"color: #444444; line-height: 21px; padding-top: 0px; padding-bottom: 0px; font-family: Tahoma,&#39;Microsoft Yahei&#39;,Simsun; font-size: 14px; margin-top: 0px; margin-bottom: 0px; word-wrap: break-word;\">5. 如果出现Too many connections，应该采取哪些措施？</p><p>http://bbs.it-home.org/thread-16612-1-1.html</p><p>&nbsp;</p><p style=\"color: #333333; line-height: 22.39px; font-family: &#39;Helvetica Neue&#39;,Helvetica,Arial,&#39;PingFang SC&#39;,&#39;Hiragino Sans GB&#39;,&#39;WenQuanYi Micro Hei&#39;,&#39;Microsoft Yahei&#39;,sans-serif; font-size: 14px; margin-top: 0px; margin-bottom: 1.5em;\">where a=1 and b=1 where b=1 where b=1 order by time desc</p><p style=\"color: #333333; line-height: 22.39px; font-family: &#39;Helvetica Neue&#39;,Helvetica,Arial,&#39;PingFang SC&#39;,&#39;Hiragino Sans GB&#39;,&#39;WenQuanYi Micro Hei&#39;,&#39;Microsoft Yahei&#39;,sans-serif; font-size: 14px; margin-top: 1.5em; margin-bottom: 1.5em;\">请问这三条sql 如何建索引 只建一条怎么建</p><p style=\"color: #333333; line-height: 22.39px; font-family: &#39;Helvetica Neue&#39;,Helvetica,Arial,&#39;PingFang SC&#39;,&#39;Hiragino Sans GB&#39;,&#39;WenQuanYi Micro Hei&#39;,&#39;Microsoft Yahei&#39;,sans-serif; font-size: 14px; margin-top: 1.5em; margin-bottom: 0px;\">还有一个问题 就是 mysql 优化器会自动调整 where 条件的前后顺序吗</p><p><span style=\"color: #333333; line-height: 22.39px; font-family: &#39;Helvetica Neue&#39;,Helvetica,Arial,&#39;PingFang SC&#39;,&#39;Hiragino Sans GB&#39;,&#39;WenQuanYi Micro Hei&#39;,&#39;Microsoft Yahei&#39;,sans-serif; font-size: 14px;\">具体问题具体分析吧，mysql版本之间的差别比较大，需要针对不同的版本要看对索引的支持如何，</span><br/><span style=\"color: #333333; line-height: 22.39px; font-family: &#39;Helvetica Neue&#39;,Helvetica,Arial,&#39;PingFang SC&#39;,&#39;Hiragino Sans GB&#39;,&#39;WenQuanYi Micro Hei&#39;,&#39;Microsoft Yahei&#39;,sans-serif; font-size: 14px;\">这三条查询中，b字段的查询频率最高，所以b字段要加入到索引中，多列索引中，索引的列顺序很重要。</span><br/><span style=\"color: #333333; line-height: 22.39px; font-family: &#39;Helvetica Neue&#39;,Helvetica,Arial,&#39;PingFang SC&#39;,&#39;Hiragino Sans GB&#39;,&#39;WenQuanYi Micro Hei&#39;,&#39;Microsoft Yahei&#39;,sans-serif; font-size: 14px;\">只想建立单个索引，index(b,time)最合适。</span><br/><span style=\"color: #333333; line-height: 22.39px; font-family: &#39;Helvetica Neue&#39;,Helvetica,Arial,&#39;PingFang SC&#39;,&#39;Hiragino Sans GB&#39;,&#39;WenQuanYi Micro Hei&#39;,&#39;Microsoft Yahei&#39;,sans-serif; font-size: 14px;\">“where a=1 and b=1”应该改为“where b=1 and a=1”</span></p><p><br/></p>','3,4',0,1,4,0,1531205955,1531205955,'MySQL','/public/static/index/images/toppic02.jpg',0);
INSERT INTO `clt_blog` VALUES (46,'小程序与php 实现微信支付',4,1,'','','<p><span style=\"color: #00ccff;\"><a style=\"color: #00ccff;\" href=\"http://www.wxapp-union.com/article-2558-1.html\">http://www.wxapp-union.com/article-2558-1.html</a></span></p><p>小程序访问地址：payfee.PHP: view plain copyinclude &#39;WeixinPay.php&#39;; $appid=&#39;&#39;; $openid= $_GET; $mch_id=&#39;&#39;; $key=&#39;&#39;; $out_trade_no = $mch_id. time(); $total_fee = $_GET; if(empty($total_fee)) //押金 { ...</p><table class=\"vwtb\"><tbody><tr class=\"firstRow\"><td><p style=\"margin: 0px 0px 20px; color: #2c3e50; line-height: 27px; font-family: &#39;PingFang SC&#39;, &#39;Hiragino Sans GB&#39;, &#39;Helvetica Neue&#39;, &#39;Microsoft Yahei&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 16px; background-color: #f9f9f5;\"><a class=\"relatedlink\" href=\"http://www.wxapp-union.com/\" target=\"_blank\">小程序</a>访问地址： <br/>payfee.PHP:</p><p>&nbsp;</p><ol class=\"linenums list-paddingleft-2\"><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"><span class=\"pun\">[</span><span class=\"pln\">php</span><span class=\"pun\">]</span><span class=\"pln\"> view plain copy</span></code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"><span class=\"pln\">include </span><span class=\"str\">&#39;WeixinPay.php&#39;</span><span class=\"pun\">;</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"><span class=\"pln\">$appid</span><span class=\"pun\">=</span><span class=\"str\">&#39;&#39;</span><span class=\"pun\">;</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"><span class=\"pln\">$openid</span><span class=\"pun\">=</span><span class=\"pln\"> $_GET</span><span class=\"pun\">[</span><span class=\"str\">&#39;id&#39;</span><span class=\"pun\">];</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"><span class=\"pln\">$mch_id</span><span class=\"pun\">=</span><span class=\"str\">&#39;&#39;</span><span class=\"pun\">;</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"><span class=\"pln\">$key</span><span class=\"pun\">=</span><span class=\"str\">&#39;&#39;</span><span class=\"pun\">;</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"><span class=\"pln\">$out_trade_no </span><span class=\"pun\">=</span><span class=\"pln\"> $mch_id</span><span class=\"pun\">.</span><span class=\"pln\"> time</span><span class=\"pun\">();</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"><span class=\"pln\">$total_fee </span><span class=\"pun\">=</span><span class=\"pln\"> $_GET</span><span class=\"pun\">[</span><span class=\"str\">&#39;fee&#39;</span><span class=\"pun\">];</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"><span class=\"kwd\">if</span><span class=\"pun\">(</span><span class=\"pln\">empty</span><span class=\"pun\">(</span><span class=\"pln\">$total_fee</span><span class=\"pun\">))</span> <span class=\"com\">//押金 &nbsp;</span></code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"><span class=\"pun\">{</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"><span class=\"pln\"> &nbsp; &nbsp;$body </span><span class=\"pun\">=</span> <span class=\"str\">&quot;充值押金&quot;</span><span class=\"pun\">;</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"><span class=\"pln\"> &nbsp; &nbsp;$total_fee </span><span class=\"pun\">=</span><span class=\"pln\"> floatval</span><span class=\"pun\">(</span><span class=\"lit\">99</span><span class=\"pun\">*</span><span class=\"lit\">100</span><span class=\"pun\">);</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"><span class=\"pun\">}</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"> <span class=\"kwd\">else</span> <span class=\"pun\">{</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"><span class=\"pln\"> &nbsp; &nbsp; $body </span><span class=\"pun\">=</span> <span class=\"str\">&quot;充值余额&quot;</span><span class=\"pun\">;</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"><span class=\"pln\"> &nbsp; &nbsp; $total_fee </span><span class=\"pun\">=</span><span class=\"pln\"> floatval</span><span class=\"pun\">(</span><span class=\"pln\">$total_fee</span><span class=\"pun\">*</span><span class=\"lit\">100</span><span class=\"pun\">);</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"> <span class=\"pun\">}</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"><span class=\"pln\">$weixinpay </span><span class=\"pun\">=</span> <span class=\"kwd\">new</span> <span class=\"typ\">WeixinPay</span><span class=\"pun\">(</span><span class=\"pln\">$appid</span><span class=\"pun\">,</span><span class=\"pln\">$openid</span><span class=\"pun\">,</span><span class=\"pln\">$mch_id</span><span class=\"pun\">,</span><span class=\"pln\">$key</span><span class=\"pun\">,</span><span class=\"pln\">$out_trade_no</span><span class=\"pun\">,</span><span class=\"pln\">$body</span><span class=\"pun\">,</span><span class=\"pln\">$total_fee</span><span class=\"pun\">);</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"><span class=\"pln\">$return</span><span class=\"pun\">=</span><span class=\"pln\">$weixinpay</span><span class=\"pun\">-&gt;</span><span class=\"pln\">pay</span><span class=\"pun\">();</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"></code><br/></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"><span class=\"pln\">echo json_encode</span><span class=\"pun\">(</span><span class=\"pln\">$return</span><span class=\"pun\">);</span> &nbsp;</code></p></li></ol><p style=\"margin: 0px 0px 20px; color: #2c3e50; line-height: 27px; font-family: &#39;PingFang SC&#39;, &#39;Hiragino Sans GB&#39;, &#39;Helvetica Neue&#39;, &#39;Microsoft Yahei&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 16px; background-color: #f9f9f5;\">WeixinPay.php:</p><p>&nbsp;</p><ol class=\"linenums list-paddingleft-2\"><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"><span class=\"pun\">[</span><span class=\"pln\">php</span><span class=\"pun\">]</span><span class=\"pln\"> view plain copy</span></code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"><span class=\"pun\">&lt;?</span><span class=\"pln\">php &nbsp;</span></code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"></code><br/></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"></code><br/></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"><span class=\"com\">/* </span></code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"><span class=\"com\"> * 小程序微信支付 </span></code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"><span class=\"com\"> */</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"></code><br/></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"></code><br/></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"><span class=\"kwd\">class</span> <span class=\"typ\">WeixinPay</span> <span class=\"pun\">{</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"></code><br/></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"></code><br/></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"> &nbsp; &nbsp;<span class=\"kwd\">protected</span><span class=\"pln\"> $appid</span><span class=\"pun\">;</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"> &nbsp; &nbsp;<span class=\"kwd\">protected</span><span class=\"pln\"> $mch_id</span><span class=\"pun\">;</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"> &nbsp; &nbsp;<span class=\"kwd\">protected</span><span class=\"pln\"> $key</span><span class=\"pun\">;</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"> &nbsp; &nbsp;<span class=\"kwd\">protected</span><span class=\"pln\"> $openid</span><span class=\"pun\">;</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"> &nbsp; &nbsp;<span class=\"kwd\">protected</span><span class=\"pln\"> $out_trade_no</span><span class=\"pun\">;</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"> &nbsp; &nbsp;<span class=\"kwd\">protected</span><span class=\"pln\"> $body</span><span class=\"pun\">;</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"> &nbsp; &nbsp;<span class=\"kwd\">protected</span><span class=\"pln\"> $total_fee</span><span class=\"pun\">;</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span class=\"kwd\">function</span><span class=\"pln\"> __construct</span><span class=\"pun\">(</span><span class=\"pln\">$appid</span><span class=\"pun\">,</span><span class=\"pln\"> $openid</span><span class=\"pun\">,</span><span class=\"pln\"> $mch_id</span><span class=\"pun\">,</span><span class=\"pln\"> $key</span><span class=\"pun\">,</span><span class=\"pln\">$out_trade_no</span><span class=\"pun\">,</span><span class=\"pln\">$body</span><span class=\"pun\">,</span><span class=\"pln\">$total_fee</span><span class=\"pun\">)</span> <span class=\"pun\">{</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"><span class=\"pln\"> &nbsp; &nbsp; &nbsp; &nbsp;$this</span><span class=\"pun\">-&gt;</span><span class=\"pln\">appid </span><span class=\"pun\">=</span><span class=\"pln\"> $appid</span><span class=\"pun\">;</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"><span class=\"pln\"> &nbsp; &nbsp; &nbsp; &nbsp;$this</span><span class=\"pun\">-&gt;</span><span class=\"pln\">openid </span><span class=\"pun\">=</span><span class=\"pln\"> $openid</span><span class=\"pun\">;</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"><span class=\"pln\"> &nbsp; &nbsp; &nbsp; &nbsp;$this</span><span class=\"pun\">-&gt;</span><span class=\"pln\">mch_id </span><span class=\"pun\">=</span><span class=\"pln\"> $mch_id</span><span class=\"pun\">;</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"><span class=\"pln\"> &nbsp; &nbsp; &nbsp; &nbsp;$this</span><span class=\"pun\">-&gt;</span><span class=\"pln\">key </span><span class=\"pun\">=</span><span class=\"pln\"> $key</span><span class=\"pun\">;</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"><span class=\"pln\"> &nbsp; &nbsp; &nbsp; &nbsp;$this</span><span class=\"pun\">-&gt;</span><span class=\"pln\">out_trade_no </span><span class=\"pun\">=</span><span class=\"pln\"> $out_trade_no</span><span class=\"pun\">;</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"><span class=\"pln\"> &nbsp; &nbsp; &nbsp; &nbsp;$this</span><span class=\"pun\">-&gt;</span><span class=\"pln\">body </span><span class=\"pun\">=</span><span class=\"pln\"> $body</span><span class=\"pun\">;</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"><span class=\"pln\"> &nbsp; &nbsp; &nbsp; &nbsp;$this</span><span class=\"pun\">-&gt;</span><span class=\"pln\">total_fee </span><span class=\"pun\">=</span><span class=\"pln\"> $total_fee</span><span class=\"pun\">;</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"> &nbsp; &nbsp;<span class=\"pun\">}</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"></code><br/></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"></code><br/></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"> &nbsp; &nbsp;<span class=\"kwd\">public</span> <span class=\"kwd\">function</span><span class=\"pln\"> pay</span><span class=\"pun\">()</span> <span class=\"pun\">{</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"> &nbsp; &nbsp; &nbsp; &nbsp;<span class=\"com\">//统一下单接口 &nbsp;</span></code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"><span class=\"pln\"> &nbsp; &nbsp; &nbsp; &nbsp;$return </span><span class=\"pun\">=</span><span class=\"pln\"> $this</span><span class=\"pun\">-&gt;</span><span class=\"pln\">weixinapp</span><span class=\"pun\">();</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"> &nbsp; &nbsp; &nbsp; &nbsp;<span class=\"kwd\">return</span><span class=\"pln\"> $return</span><span class=\"pun\">;</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"> &nbsp; &nbsp;<span class=\"pun\">}</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"></code><br/></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"></code><br/></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"> &nbsp; &nbsp;<span class=\"com\">//统一下单接口 &nbsp;</span></code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"> &nbsp; &nbsp;<span class=\"kwd\">private</span> <span class=\"kwd\">function</span><span class=\"pln\"> unifiedorder</span><span class=\"pun\">()</span> <span class=\"pun\">{</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"><span class=\"pln\"> &nbsp; &nbsp; &nbsp; &nbsp;$url </span><span class=\"pun\">=</span> <span class=\"str\">&#39;https://api.mch.weixin.qq.com/pay/unifiedorder&#39;</span><span class=\"pun\">;</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"><span class=\"pln\"> &nbsp; &nbsp; &nbsp; &nbsp;$parameters </span><span class=\"pun\">=</span><span class=\"pln\"> array</span><span class=\"pun\">(</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span class=\"str\">&#39;appid&#39;</span> <span class=\"pun\">=&gt;</span><span class=\"pln\"> $this</span><span class=\"pun\">-&gt;</span><span class=\"pln\">appid</span><span class=\"pun\">,</span> <span class=\"com\">//小程序ID &nbsp;</span></code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span class=\"str\">&#39;mch_id&#39;</span> <span class=\"pun\">=&gt;</span><span class=\"pln\"> $this</span><span class=\"pun\">-&gt;</span><span class=\"pln\">mch_id</span><span class=\"pun\">,</span> <span class=\"com\">//商户号 &nbsp;</span></code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span class=\"str\">&#39;nonce_str&#39;</span> <span class=\"pun\">=&gt;</span><span class=\"pln\"> $this</span><span class=\"pun\">-&gt;</span><span class=\"pln\">createNoncestr</span><span class=\"pun\">(),</span> <span class=\"com\">//随机字符串 &nbsp;</span></code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"><span class=\"com\">// &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&#39;body&#39; =&gt; &#39;test&#39;, //商品描述 &nbsp;</span></code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span class=\"str\">&#39;body&#39;</span> <span class=\"pun\">=&gt;</span><span class=\"pln\"> $this</span><span class=\"pun\">-&gt;</span><span class=\"pln\">body</span><span class=\"pun\">,</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"><span class=\"com\">// &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&#39;out_trade_no&#39; =&gt; &#39;2015450806125348&#39;, //商户订单号 &nbsp;</span></code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span class=\"str\">&#39;out_trade_no&#39;</span><span class=\"pun\">=&gt;</span><span class=\"pln\"> $this</span><span class=\"pun\">-&gt;</span><span class=\"pln\">out_trade_no</span><span class=\"pun\">,</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"><span class=\"com\">// &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&#39;total_fee&#39; =&gt; floatval(0.01 * 100), //总金额 单位 分 &nbsp;</span></code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span class=\"str\">&#39;total_fee&#39;</span> <span class=\"pun\">=&gt;</span><span class=\"pln\"> $this</span><span class=\"pun\">-&gt;</span><span class=\"pln\">total_fee</span><span class=\"pun\">,</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"><span class=\"com\">// &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&#39;spbill_create_ip&#39; =&gt; $_SERVER[&#39;REMOTE_ADDR&#39;], //终端IP &nbsp;</span></code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span class=\"str\">&#39;spbill_create_ip&#39;</span> <span class=\"pun\">=&gt;</span> <span class=\"str\">&#39;192.168.0.161&#39;</span><span class=\"pun\">,</span> <span class=\"com\">//终端IP &nbsp;</span></code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span class=\"str\">&#39;notify_url&#39;</span> <span class=\"pun\">=&gt;</span> <span class=\"str\">&#39;http://www.weixin.qq.com/wxpay/pay.php&#39;</span><span class=\"pun\">,</span> <span class=\"com\">//通知地址 &nbsp;确保外网能正常访问 &nbsp;</span></code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span class=\"str\">&#39;openid&#39;</span> <span class=\"pun\">=&gt;</span><span class=\"pln\"> $this</span><span class=\"pun\">-&gt;</span><span class=\"pln\">openid</span><span class=\"pun\">,</span> <span class=\"com\">//用户id &nbsp;</span></code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span class=\"str\">&#39;trade_type&#39;</span> <span class=\"pun\">=&gt;</span> <span class=\"str\">&#39;JSAPI&#39;</span><span class=\"com\">//交易类型 &nbsp;</span></code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"> &nbsp; &nbsp; &nbsp; &nbsp;<span class=\"pun\">);</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"> &nbsp; &nbsp; &nbsp; &nbsp;<span class=\"com\">//统一下单签名 &nbsp;</span></code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"><span class=\"pln\"> &nbsp; &nbsp; &nbsp; &nbsp;$parameters</span><span class=\"pun\">[</span><span class=\"str\">&#39;sign&#39;</span><span class=\"pun\">]</span> <span class=\"pun\">=</span><span class=\"pln\"> $this</span><span class=\"pun\">-&gt;</span><span class=\"pln\">getSign</span><span class=\"pun\">(</span><span class=\"pln\">$parameters</span><span class=\"pun\">);</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"><span class=\"pln\"> &nbsp; &nbsp; &nbsp; &nbsp;$xmlData </span><span class=\"pun\">=</span><span class=\"pln\"> $this</span><span class=\"pun\">-&gt;</span><span class=\"pln\">arrayToXml</span><span class=\"pun\">(</span><span class=\"pln\">$parameters</span><span class=\"pun\">);</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"><span class=\"pln\"> &nbsp; &nbsp; &nbsp; &nbsp;$return </span><span class=\"pun\">=</span><span class=\"pln\"> $this</span><span class=\"pun\">-&gt;</span><span class=\"pln\">xmlToArray</span><span class=\"pun\">(</span><span class=\"pln\">$this</span><span class=\"pun\">-&gt;</span><span class=\"pln\">postXmlCurl</span><span class=\"pun\">(</span><span class=\"pln\">$xmlData</span><span class=\"pun\">,</span><span class=\"pln\"> $url</span><span class=\"pun\">,</span> <span class=\"lit\">60</span><span class=\"pun\">));</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"> &nbsp; &nbsp; &nbsp; &nbsp;<span class=\"kwd\">return</span><span class=\"pln\"> $return</span><span class=\"pun\">;</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"> &nbsp; &nbsp;<span class=\"pun\">}</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"></code><br/></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"></code><br/></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"> &nbsp; &nbsp;<span class=\"kwd\">private</span> <span class=\"kwd\">static</span> <span class=\"kwd\">function</span><span class=\"pln\"> postXmlCurl</span><span class=\"pun\">(</span><span class=\"pln\">$xml</span><span class=\"pun\">,</span><span class=\"pln\"> $url</span><span class=\"pun\">,</span><span class=\"pln\"> $second </span><span class=\"pun\">=</span> <span class=\"lit\">30</span><span class=\"pun\">)</span> &nbsp; </code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"> &nbsp; &nbsp;<span class=\"pun\">{</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"><span class=\"pln\"> &nbsp; &nbsp; &nbsp; &nbsp;$ch </span><span class=\"pun\">=</span><span class=\"pln\"> curl_init</span><span class=\"pun\">();</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"> &nbsp; &nbsp; &nbsp; &nbsp;<span class=\"com\">//设置超时 &nbsp;</span></code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"><span class=\"pln\"> &nbsp; &nbsp; &nbsp; &nbsp;curl_setopt</span><span class=\"pun\">(</span><span class=\"pln\">$ch</span><span class=\"pun\">,</span><span class=\"pln\"> CURLOPT_TIMEOUT</span><span class=\"pun\">,</span><span class=\"pln\"> $second</span><span class=\"pun\">);</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"><span class=\"pln\"> &nbsp; &nbsp; &nbsp; &nbsp;curl_setopt</span><span class=\"pun\">(</span><span class=\"pln\">$ch</span><span class=\"pun\">,</span><span class=\"pln\"> CURLOPT_URL</span><span class=\"pun\">,</span><span class=\"pln\"> $url</span><span class=\"pun\">);</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"><span class=\"pln\"> &nbsp; &nbsp; &nbsp; &nbsp;curl_setopt</span><span class=\"pun\">(</span><span class=\"pln\">$ch</span><span class=\"pun\">,</span><span class=\"pln\"> CURLOPT_SSL_VERIFYPEER</span><span class=\"pun\">,</span><span class=\"pln\"> FALSE</span><span class=\"pun\">);</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"><span class=\"pln\"> &nbsp; &nbsp; &nbsp; &nbsp;curl_setopt</span><span class=\"pun\">(</span><span class=\"pln\">$ch</span><span class=\"pun\">,</span><span class=\"pln\"> CURLOPT_SSL_VERIFYHOST</span><span class=\"pun\">,</span><span class=\"pln\"> FALSE</span><span class=\"pun\">);</span> <span class=\"com\">//严格校验 &nbsp;</span></code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"> &nbsp; &nbsp; &nbsp; &nbsp;<span class=\"com\">//设置header &nbsp;</span></code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"><span class=\"pln\"> &nbsp; &nbsp; &nbsp; &nbsp;curl_setopt</span><span class=\"pun\">(</span><span class=\"pln\">$ch</span><span class=\"pun\">,</span><span class=\"pln\"> CURLOPT_HEADER</span><span class=\"pun\">,</span><span class=\"pln\"> FALSE</span><span class=\"pun\">);</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"> &nbsp; &nbsp; &nbsp; &nbsp;<span class=\"com\">//要求结果为字符串且输出到屏幕上 &nbsp;</span></code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"><span class=\"pln\"> &nbsp; &nbsp; &nbsp; &nbsp;curl_setopt</span><span class=\"pun\">(</span><span class=\"pln\">$ch</span><span class=\"pun\">,</span><span class=\"pln\"> CURLOPT_RETURNTRANSFER</span><span class=\"pun\">,</span><span class=\"pln\"> TRUE</span><span class=\"pun\">);</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"> &nbsp; &nbsp; &nbsp; &nbsp;<span class=\"com\">//post提交方式 &nbsp;</span></code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"><span class=\"pln\"> &nbsp; &nbsp; &nbsp; &nbsp;curl_setopt</span><span class=\"pun\">(</span><span class=\"pln\">$ch</span><span class=\"pun\">,</span><span class=\"pln\"> CURLOPT_POST</span><span class=\"pun\">,</span><span class=\"pln\"> TRUE</span><span class=\"pun\">);</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"><span class=\"pln\"> &nbsp; &nbsp; &nbsp; &nbsp;curl_setopt</span><span class=\"pun\">(</span><span class=\"pln\">$ch</span><span class=\"pun\">,</span><span class=\"pln\"> CURLOPT_POSTFIELDS</span><span class=\"pun\">,</span><span class=\"pln\"> $xml</span><span class=\"pun\">);</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"></code><br/></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"></code><br/></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"><span class=\"pln\"> &nbsp; &nbsp; &nbsp; &nbsp;curl_setopt</span><span class=\"pun\">(</span><span class=\"pln\">$ch</span><span class=\"pun\">,</span><span class=\"pln\"> CURLOPT_CONNECTTIMEOUT</span><span class=\"pun\">,</span> <span class=\"lit\">20</span><span class=\"pun\">);</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"><span class=\"pln\"> &nbsp; &nbsp; &nbsp; &nbsp;curl_setopt</span><span class=\"pun\">(</span><span class=\"pln\">$ch</span><span class=\"pun\">,</span><span class=\"pln\"> CURLOPT_TIMEOUT</span><span class=\"pun\">,</span> <span class=\"lit\">40</span><span class=\"pun\">);</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"><span class=\"pln\"> &nbsp; &nbsp; &nbsp; &nbsp;set_time_limit</span><span class=\"pun\">(</span><span class=\"lit\">0</span><span class=\"pun\">);</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"></code><br/></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"></code><br/></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"> &nbsp; &nbsp; &nbsp; &nbsp;<span class=\"com\">//运行curl &nbsp;</span></code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"><span class=\"pln\"> &nbsp; &nbsp; &nbsp; &nbsp;$data </span><span class=\"pun\">=</span><span class=\"pln\"> curl_exec</span><span class=\"pun\">(</span><span class=\"pln\">$ch</span><span class=\"pun\">);</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"> &nbsp; &nbsp; &nbsp; &nbsp;<span class=\"com\">//返回结果 &nbsp;</span></code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"> &nbsp; &nbsp; &nbsp; &nbsp;<span class=\"kwd\">if</span> <span class=\"pun\">(</span><span class=\"pln\">$data</span><span class=\"pun\">)</span> <span class=\"pun\">{</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"><span class=\"pln\"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;curl_close</span><span class=\"pun\">(</span><span class=\"pln\">$ch</span><span class=\"pun\">);</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span class=\"kwd\">return</span><span class=\"pln\"> $data</span><span class=\"pun\">;</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"> &nbsp; &nbsp; &nbsp; &nbsp;<span class=\"pun\">}</span> <span class=\"kwd\">else</span> <span class=\"pun\">{</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"><span class=\"pln\"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;$error </span><span class=\"pun\">=</span><span class=\"pln\"> curl_errno</span><span class=\"pun\">(</span><span class=\"pln\">$ch</span><span class=\"pun\">);</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"><span class=\"pln\"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;curl_close</span><span class=\"pun\">(</span><span class=\"pln\">$ch</span><span class=\"pun\">);</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span class=\"kwd\">throw</span> <span class=\"kwd\">new</span> <span class=\"typ\">WxPayException</span><span class=\"pun\">(</span><span class=\"str\">&quot;curl出错，错误码:$error&quot;</span><span class=\"pun\">);</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"> &nbsp; &nbsp; &nbsp; &nbsp;<span class=\"pun\">}</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"> &nbsp; &nbsp;<span class=\"pun\">}</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"></code><br/></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"></code><br/></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"></code><br/></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"> &nbsp; &nbsp;<span class=\"com\">//数组转换成xml &nbsp;</span></code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"> &nbsp; &nbsp;<span class=\"kwd\">private</span> <span class=\"kwd\">function</span><span class=\"pln\"> arrayToXml</span><span class=\"pun\">(</span><span class=\"pln\">$arr</span><span class=\"pun\">)</span> <span class=\"pun\">{</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"><span class=\"pln\"> &nbsp; &nbsp; &nbsp; &nbsp;$xml </span><span class=\"pun\">=</span> <span class=\"str\">&quot;&lt;root&gt;&quot;</span><span class=\"pun\">;</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"> &nbsp; &nbsp; &nbsp; &nbsp;<span class=\"kwd\">foreach</span> <span class=\"pun\">(</span><span class=\"pln\">$arr </span><span class=\"kwd\">as</span><span class=\"pln\"> $key </span><span class=\"pun\">=&gt;</span><span class=\"pln\"> $val</span><span class=\"pun\">)</span> <span class=\"pun\">{</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span class=\"kwd\">if</span> <span class=\"pun\">(</span><span class=\"pln\">is_array</span><span class=\"pun\">(</span><span class=\"pln\">$val</span><span class=\"pun\">))</span> <span class=\"pun\">{</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"><span class=\"pln\"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;$xml </span><span class=\"pun\">.=</span> <span class=\"str\">&quot;&lt;&quot;</span> <span class=\"pun\">.</span><span class=\"pln\"> $key </span><span class=\"pun\">.</span> <span class=\"str\">&quot;&gt;&quot;</span> <span class=\"pun\">.</span><span class=\"pln\"> arrayToXml</span><span class=\"pun\">(</span><span class=\"pln\">$val</span><span class=\"pun\">)</span> <span class=\"pun\">.</span> <span class=\"str\">&quot;&lt;/&quot;</span> <span class=\"pun\">.</span><span class=\"pln\"> $key </span><span class=\"pun\">.</span> <span class=\"str\">&quot;&gt;&quot;</span><span class=\"pun\">;</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span class=\"pun\">}</span> <span class=\"kwd\">else</span> <span class=\"pun\">{</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"><span class=\"pln\"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;$xml </span><span class=\"pun\">.=</span> <span class=\"str\">&quot;&lt;&quot;</span> <span class=\"pun\">.</span><span class=\"pln\"> $key </span><span class=\"pun\">.</span> <span class=\"str\">&quot;&gt;&quot;</span> <span class=\"pun\">.</span><span class=\"pln\"> $val </span><span class=\"pun\">.</span> <span class=\"str\">&quot;&lt;/&quot;</span> <span class=\"pun\">.</span><span class=\"pln\"> $key </span><span class=\"pun\">.</span> <span class=\"str\">&quot;&gt;&quot;</span><span class=\"pun\">;</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span class=\"pun\">}</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"> &nbsp; &nbsp; &nbsp; &nbsp;<span class=\"pun\">}</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"><span class=\"pln\"> &nbsp; &nbsp; &nbsp; &nbsp;$xml </span><span class=\"pun\">.=</span> <span class=\"str\">&quot;&lt;/root&gt;&quot;</span><span class=\"pun\">;</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"> &nbsp; &nbsp; &nbsp; &nbsp;<span class=\"kwd\">return</span><span class=\"pln\"> $xml</span><span class=\"pun\">;</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"> &nbsp; &nbsp;<span class=\"pun\">}</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"></code><br/></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"></code><br/></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"> &nbsp; &nbsp;<span class=\"com\">//xml转换成数组 &nbsp;</span></code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"> &nbsp; &nbsp;<span class=\"kwd\">private</span> <span class=\"kwd\">function</span><span class=\"pln\"> xmlToArray</span><span class=\"pun\">(</span><span class=\"pln\">$xml</span><span class=\"pun\">)</span> <span class=\"pun\">{</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"></code><br/></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"></code><br/></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"> &nbsp; &nbsp; &nbsp; &nbsp;<span class=\"com\">//禁止引用外部xml实体 &nbsp; </span></code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"></code><br/></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"></code><br/></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"><span class=\"pln\"> &nbsp; &nbsp; &nbsp; &nbsp;libxml_disable_entity_loader</span><span class=\"pun\">(</span><span class=\"kwd\">true</span><span class=\"pun\">);</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"></code><br/></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"></code><br/></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"><span class=\"pln\"> &nbsp; &nbsp; &nbsp; &nbsp;$xmlstring </span><span class=\"pun\">=</span><span class=\"pln\"> simplexml_load_string</span><span class=\"pun\">(</span><span class=\"pln\">$xml</span><span class=\"pun\">,</span> <span class=\"str\">&#39;SimpleXMLElement&#39;</span><span class=\"pun\">,</span><span class=\"pln\"> LIBXML_NOCDATA</span><span class=\"pun\">);</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"></code><br/></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"></code><br/></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"><span class=\"pln\"> &nbsp; &nbsp; &nbsp; &nbsp;$val </span><span class=\"pun\">=</span><span class=\"pln\"> json_decode</span><span class=\"pun\">(</span><span class=\"pln\">json_encode</span><span class=\"pun\">(</span><span class=\"pln\">$xmlstring</span><span class=\"pun\">),</span> <span class=\"kwd\">true</span><span class=\"pun\">);</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"></code><br/></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"></code><br/></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"> &nbsp; &nbsp; &nbsp; &nbsp;<span class=\"kwd\">return</span><span class=\"pln\"> $val</span><span class=\"pun\">;</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"> &nbsp; &nbsp;<span class=\"pun\">}</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"></code><br/></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"></code><br/></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"> &nbsp; &nbsp;<span class=\"com\">//<a class=\"relatedlink\" href=\"http://www.wxapp-union.com/\" target=\"_blank\">微信小程序</a>接口 &nbsp;</span></code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"> &nbsp; &nbsp;<span class=\"kwd\">private</span> <span class=\"kwd\">function</span><span class=\"pln\"> weixinapp</span><span class=\"pun\">()</span> <span class=\"pun\">{</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"> &nbsp; &nbsp; &nbsp; &nbsp;<span class=\"com\">//统一下单接口 &nbsp;</span></code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"><span class=\"pln\"> &nbsp; &nbsp; &nbsp; &nbsp;$unifiedorder </span><span class=\"pun\">=</span><span class=\"pln\"> $this</span><span class=\"pun\">-&gt;</span><span class=\"pln\">unifiedorder</span><span class=\"pun\">();</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"><span class=\"com\">// &nbsp; &nbsp; &nbsp; &nbsp;print_r($unifiedorder); &nbsp;</span></code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"><span class=\"pln\"> &nbsp; &nbsp; &nbsp; &nbsp;$parameters </span><span class=\"pun\">=</span><span class=\"pln\"> array</span><span class=\"pun\">(</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span class=\"str\">&#39;appId&#39;</span> <span class=\"pun\">=&gt;</span><span class=\"pln\"> $this</span><span class=\"pun\">-&gt;</span><span class=\"pln\">appid</span><span class=\"pun\">,</span> <span class=\"com\">//小程序ID &nbsp;</span></code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span class=\"str\">&#39;timeStamp&#39;</span> <span class=\"pun\">=&gt;</span> <span class=\"str\">&#39;&#39;</span> <span class=\"pun\">.</span><span class=\"pln\"> time</span><span class=\"pun\">()</span> <span class=\"pun\">.</span> <span class=\"str\">&#39;&#39;</span><span class=\"pun\">,</span> <span class=\"com\">//时间戳 &nbsp;</span></code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span class=\"str\">&#39;nonceStr&#39;</span> <span class=\"pun\">=&gt;</span><span class=\"pln\"> $this</span><span class=\"pun\">-&gt;</span><span class=\"pln\">createNoncestr</span><span class=\"pun\">(),</span> <span class=\"com\">//随机串 &nbsp;</span></code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span class=\"str\">&#39;package&#39;</span> <span class=\"pun\">=&gt;</span> <span class=\"str\">&#39;prepay_id=&#39;</span> <span class=\"pun\">.</span><span class=\"pln\"> $unifiedorder</span><span class=\"pun\">[</span><span class=\"str\">&#39;prepay_id&#39;</span><span class=\"pun\">],</span> <span class=\"com\">//数据包 &nbsp;</span></code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span class=\"str\">&#39;signType&#39;</span> <span class=\"pun\">=&gt;</span> <span class=\"str\">&#39;MD5&#39;</span><span class=\"com\">//签名方式 &nbsp;</span></code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"> &nbsp; &nbsp; &nbsp; &nbsp;<span class=\"pun\">);</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"> &nbsp; &nbsp; &nbsp; &nbsp;<span class=\"com\">//签名 &nbsp;</span></code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"><span class=\"pln\"> &nbsp; &nbsp; &nbsp; &nbsp;$parameters</span><span class=\"pun\">[</span><span class=\"str\">&#39;paySign&#39;</span><span class=\"pun\">]</span> <span class=\"pun\">=</span><span class=\"pln\"> $this</span><span class=\"pun\">-&gt;</span><span class=\"pln\">getSign</span><span class=\"pun\">(</span><span class=\"pln\">$parameters</span><span class=\"pun\">);</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"> &nbsp; &nbsp; &nbsp; &nbsp;<span class=\"kwd\">return</span><span class=\"pln\"> $parameters</span><span class=\"pun\">;</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"> &nbsp; &nbsp;<span class=\"pun\">}</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"></code><br/></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"></code><br/></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"> &nbsp; &nbsp;<span class=\"com\">//作用：产生随机字符串，不长于32位 &nbsp;</span></code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0px currentColor; color: inherit; font-family: Monaco, Menlo, Consolas, &#39;Courier New&#39;, monospace; background-color: transparent;\"> &nbsp; &nbsp;<span class=\"kwd\">private</span> <span class=\"kwd\">function</span><span class=\"pln\"> createNoncestr</span><span class=\"pun\">(</span><span class=\"pln\">$length </span><span class=\"pun\">=</span> <span class=\"lit\">32</span><span class=\"pun\">)</span> <span class=\"pun\">{</span> &nbsp;</code></p></li><li><p><code style=\"padding: 0px; border-radius: 4px; border: 0p','4',0,1,9,0,1531206064,1531206064,'小程序，php，微信支付','/public/static/index/images/v1.jpg',0);
INSERT INTO `clt_blog` VALUES (47,'微信小程序的ajax数据请求wx.request',4,1,'','','<h1 class=\"ptit\">微信小程序的ajax数据请求wx.request</h1><p>参考链接：<span style=\"color: #3366ff;\">http://www.51xuediannao.com/xiaochengxu/wx_request.html</span></p><p><cite>来源：<a href=\"http://www.51xuediannao.com/\" target=\"_blank\">web前端开发</a> 作者： 懒人建站 日期：2016-10-17 人气:12387 <span class=\"t-primary\">QQ交流群:4188479</span></cite></p><p>微信小程序的ajax数据请求，很多同学找不到api在哪个位置，微信小程序的请求就是wx.request这个api，微信小程序中使用fetch做ajax请求</p><p>&nbsp;</p><p><a href=\"http://www.51xuediannao.com/xiaochengxu/\" target=\"_blank\"><span style=\"text-decoration:underline;\">微信小程序</span></a>的ajax数据请求，很多同学找不到api在哪个位置，这里单独把小程序的ajax请求给列出来，<a href=\"http://www.51xuediannao.com/xiaochengxu/\" target=\"_blank\"><span style=\"text-decoration:underline;\">微信小程序</span></a>的请求就是wx.request这个api，wx.request(一些对象参数)，微信小程序不同于浏览器的ajax请求，可以直接跨域请求不用考虑跨域问题。</p><h2>使用小程序官方提供的数据请求api发起数据请求</h2><h3>wx.request(OBJECT)</h3><p>wx.request发起的是https请求。一个微信小程序，同时只能有5个网络请求连接。</p><p>OBJECT参数说明：</p><table><thead><tr class=\"firstRow\"><th>参数名</th><th>类型</th><th>必填</th><th>说明</th></tr></thead><tbody><tr><td>url</td><td>String</td><td>是</td><td>开发者服务器接口地址</td></tr><tr><td>data</td><td>Object、String</td><td>否</td><td>请求的参数</td></tr><tr><td>header</td><td>Object</td><td>否</td><td>设置请求的 header , header 中不能设置 Referer</td></tr><tr><td>method</td><td>String</td><td>否</td><td>默认为 GET，有效值：OPTIONS, GET, HEAD, POST, PUT, DELETE, TRACE, CONNECT</td></tr><tr><td>success</td><td>Function</td><td>否</td><td>收到开发者服务成功返回的回调函数，res = {data: &#39;开发者服务器返回的内容&#39;}</td></tr><tr><td>fail</td><td>Function</td><td>否</td><td>接口调用失败的回调函数</td></tr><tr><td>complete</td><td>Function</td><td>否</td><td>接口调用结束的回调函数（调用成功、失败都会执行）</td></tr></tbody></table><p>示例代码：</p><pre class=\"hljs javascript\">wx.request({&nbsp;&nbsp;url:&nbsp;&#39;test.php&#39;,&nbsp;&nbsp;data:&nbsp;{&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;x:&nbsp;&#39;&#39;&nbsp;,&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;y:&nbsp;&#39;&#39;\r\n&nbsp;&nbsp;},&nbsp;&nbsp;header:&nbsp;{&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#39;Content-Type&#39;:&nbsp;&#39;application/json&#39;\r\n&nbsp;&nbsp;},&nbsp;&nbsp;success:&nbsp;function(res)&nbsp;{&nbsp;&nbsp;&nbsp;&nbsp;console.log(res.data)\r\n&nbsp;&nbsp;}\r\n})</pre><h2>微信小程序中使用fetch做ajax请求</h2><p>fetch是一种新的ajax请求规范，经<a href=\"http://www.51xuediannao.com/\" target=\"_blank\"><span style=\"text-decoration:underline;\">懒人建站</span></a>测试，fetch在小程序中也是支持的，测试ajax请求代码如下：<br/>then中带代码是测试，这里是节选了小部分代码，实际使用需要自行修改。</p><pre class=\"hljs javascript\">fetch(&#39;http://www.51xuediannao.com/json.php?typeid=34&amp;page=1&amp;pagesize=10&#39;)\r\n&nbsp;&nbsp;&nbsp;&nbsp;.then(function(response){&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(response.status==200){\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;that.data.page++;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;response.json();\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}\r\n&nbsp;&nbsp;&nbsp;&nbsp;}).then(function(data){&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;console.log(data);&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//更新数据\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;that.setData({&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;listArr:that.data.page==1&nbsp;?&nbsp;data&nbsp;:&nbsp;that.data.listArr.concat(data)\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;})&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;console.log(that.data.listArr);\r\n&nbsp;&nbsp;&nbsp;&nbsp;})</pre><p>了解更多fetch相关知识：<a href=\"http://www.51xuediannao.com/javascript/fetchdyf_1142.html\" target=\"_blank\">fetch的用法</a></p><p><br/></p>','4',0,1,10,2,1531206114,1531206114,'微信小程序，ajax数据请求，wx.request','/public/static/index/images/toppic01.jpg',0);
INSERT INTO `clt_blog` VALUES (48,'微信小程序--后台交互/wx.request({})方法/渲染页面方法 解析',4,1,'','','<h2>http://www.cnblogs.com/bellagao/ 作者:高辉彩</h2><p>小程序的后台获取数据方式get/post具体函数格式如下：<strong>wx.request({})</strong></p><table><tbody><tr class=\"firstRow\"><td class=\"gutter\"><div class=\"line number1 index0 alt2\">1</div><div class=\"line number2 index1 alt1\">2</div><div class=\"line number3 index2 alt2\">3</div><div class=\"line number4 index3 alt1\">4</div><div class=\"line number5 index4 alt2\">5</div><div class=\"line number6 index5 alt1\">6</div><div class=\"line number7 index6 alt2\">7</div><div class=\"line number8 index7 alt1\">8</div><div class=\"line number9 index8 alt2\">9</div><div class=\"line number10 index9 alt1\">10</div><div class=\"line number11 index10 alt2\">11</div><div class=\"line number12 index11 alt1\">12</div><div class=\"line number13 index12 alt2\">13</div><div class=\"line number14 index13 alt1\">14</div><div class=\"line number15 index14 alt2\">15</div><div class=\"line number16 index15 alt1\">16</div><div class=\"line number17 index16 alt2\">17</div><div class=\"line number18 index17 alt1\">18</div><div class=\"line number19 index18 alt2\">19</div><div class=\"line number20 index19 alt1\">20</div><div class=\"line number21 index20 alt2\">21</div><div class=\"line number22 index21 alt1\">22</div><div class=\"line number23 index22 alt2\">23</div><div class=\"line number24 index23 alt1\">24</div><div class=\"line number25 index24 alt2\">25</div><div class=\"line number26 index25 alt1\">26</div><div class=\"line number27 index26 alt2\">27</div><div class=\"line number28 index27 alt1\">28</div><div class=\"line number29 index28 alt2\">29</div><div class=\"line number30 index29 alt1\">30</div><div class=\"line number31 index30 alt2\">31</div><div class=\"line number32 index31 alt1\">32</div><div class=\"line number33 index32 alt2\">33</div><div class=\"line number34 index33 alt1\">34</div><div class=\"line number35 index34 alt2\">35</div><div class=\"line number36 index35 alt1\">36</div><div class=\"line number37 index36 alt2\">37</div></td><td class=\"code\"><div class=\"line number1 index0 alt2\"><code class=\"javascript plain\">data: {</code></div><div class=\"line number2 index1 alt1\"><code class=\"javascript spaces\">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class=\"javascript plain\">logs:[]</code></div><div class=\"line number3 index2 alt2\"><code class=\"javascript spaces\">&nbsp;&nbsp;</code><code class=\"javascript plain\">},</code></div><div class=\"line number4 index3 alt1\"><code class=\"javascript plain\">onLoad:</code><code class=\"javascript keyword\">function</code><code class=\"javascript plain\">(){</code></div><div class=\"line number5 index4 alt2\"><code class=\"javascript keyword\">this</code><code class=\"javascript plain\">.getdata();</code></div><div class=\"line number6 index5 alt1\">&nbsp;</div><div class=\"line number7 index6 alt2\"><code class=\"javascript plain\">}</code></div><div class=\"line number8 index7 alt1\"><code class=\"javascript plain\">getdata:</code><code class=\"javascript keyword\">function</code><code class=\"javascript plain\">(){</code><code class=\"javascript comments\">//定义函数名称</code></div><div class=\"line number9 index8 alt2\"><code class=\"javascript keyword\">var</code> <code class=\"javascript plain\">that=</code><code class=\"javascript keyword\">this</code><code class=\"javascript plain\">;&nbsp;&nbsp; </code><code class=\"javascript comments\">// 这个地方非常重要，重置data{}里数据时候setData方法的this应为以及函数的this, 如果在下方的sucess直接写this就变成了wx.request()的this了</code></div><div class=\"line number10 index9 alt1\"><code class=\"javascript spaces\">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class=\"javascript plain\">wx.request({</code></div><div class=\"line number11 index10 alt2\"><code class=\"javascript spaces\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class=\"javascript plain\">url:</code><code class=\"javascript string\">&#39;http://www.phonegap100.com/appapi.php?a=getPortalCate&#39;</code><code class=\"javascript plain\">,//请求地址</code></div><div class=\"line number12 index11 alt1\"><code class=\"javascript spaces\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class=\"javascript plain\">data:{</code><code class=\"javascript comments\">//发送给后台的数据</code></div><div class=\"line number13 index12 alt2\"><code class=\"javascript spaces\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class=\"javascript plain\">name:</code><code class=\"javascript string\">&quot;bella&quot;</code><code class=\"javascript plain\">,</code></div><div class=\"line number14 index13 alt1\"><code class=\"javascript spaces\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class=\"javascript plain\">age:20</code></div><div class=\"line number15 index14 alt2\"><code class=\"javascript spaces\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class=\"javascript plain\">},</code></div><div class=\"line number16 index15 alt1\"><code class=\"javascript spaces\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class=\"javascript plain\">header:{</code><code class=\"javascript comments\">//请求头</code></div><div class=\"line number17 index16 alt2\"><code class=\"javascript spaces\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class=\"javascript string\">&quot;Content-Type&quot;</code><code class=\"javascript plain\">:</code><code class=\"javascript string\">&quot;applciation/json&quot;</code></div><div class=\"line number18 index17 alt1\"><code class=\"javascript spaces\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class=\"javascript plain\">},</code></div><div class=\"line number19 index18 alt2\"><code class=\"javascript spaces\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class=\"javascript plain\">method:</code><code class=\"javascript string\">&quot;GET&quot;</code><code class=\"javascript plain\">,</code><code class=\"javascript comments\">//get为默认方法/POST</code></div><div class=\"line number20 index19 alt1\"><code class=\"javascript spaces\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class=\"javascript plain\">success:</code><code class=\"javascript keyword\">function</code><code class=\"javascript plain\">(res){</code></div><div class=\"line number21 index20 alt2\"><code class=\"javascript spaces\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class=\"javascript plain\">console.log(res.data);</code><code class=\"javascript comments\">//res.data相当于ajax里面的data,为后台返回的数据</code></div><div class=\"line number22 index21 alt1\"><code class=\"javascript plain\">　　　　　　that.setData({</code><code class=\"javascript comments\">//如果在sucess直接写this就变成了wx.request()的this了.必须为getdata函数的this,不然无法重置调用函数</code></div><div class=\"line number23 index22 alt2\">&nbsp;</div><div class=\"line number24 index23 alt1\"><code class=\"javascript plain\">　　　　　　logs:res.data.result</code></div><div class=\"line number25 index24 alt2\">&nbsp;</div><div class=\"line number26 index25 alt1\"><code class=\"javascript plain\">　　　　　　　　　　})</code></div><div class=\"line number27 index26 alt2\">&nbsp;</div><div class=\"line number28 index27 alt1\"><code class=\"javascript spaces\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class=\"javascript plain\">},</code></div><div class=\"line number29 index28 alt2\"><code class=\"javascript spaces\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class=\"javascript plain\">fail:</code><code class=\"javascript keyword\">function</code><code class=\"javascript plain\">(err){},</code><code class=\"javascript comments\">//请求失败</code></div><div class=\"line number30 index29 alt1\"><code class=\"javascript spaces\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class=\"javascript plain\">complete:</code><code class=\"javascript keyword\">function</code><code class=\"javascript plain\">(){}</code><code class=\"javascript comments\">//请求完成后执行的函数</code></div><div class=\"line number31 index30 alt2\"><code class=\"javascript spaces\">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class=\"javascript plain\">})</code></div><div class=\"line number32 index31 alt1\"><code class=\"javascript spaces\">&nbsp;&nbsp;</code><code class=\"javascript plain\">},</code></div><div class=\"line number33 index32 alt2\"><code class=\"javascript plain\">　　wxml页面：</code></div><div class=\"line number34 index33 alt1\">&nbsp;</div><div class=\"line number35 index34 alt2\"><code class=\"javascript plain\">&lt;view&nbsp; wx:</code><code class=\"javascript keyword\">for</code><code class=\"javascript plain\">=</code><code class=\"javascript string\">&quot;{{logs}}&quot;</code> <code class=\"javascript plain\">wx:</code><code class=\"javascript keyword\">for</code><code class=\"javascript plain\">-item=</code><code class=\"javascript string\">&quot;value&quot;</code><code class=\"javascript plain\">&gt;</code></div><div class=\"line number36 index35 alt1\"><code class=\"javascript spaces\">&nbsp;&nbsp;</code><code class=\"javascript plain\">{{value.catname}}</code></div><div class=\"line number37 index36 alt2\"><code class=\"javascript plain\">&lt;/view&gt;</code></div></td></tr></tbody></table><p>&nbsp;</p><p><strong>页面结果：</strong></p><p><img src=\"http://images2015.cnblogs.com/blog/1093000/201701/1093000-20170119110712015-1070696712.png\" alt=\"\"/></p><p>&nbsp;</p><p><strong>　　</strong></p><p><br/></p>','4',0,1,9,0,1531206185,1531206185,'微信小程序，后台交互','/public/static/index/images/toppic01.jpg',0);
INSERT INTO `clt_blog` VALUES (49,'jQuery Mobile',3,1,'','','<p>PHP中文网：<a href=\"http://www.php.cn/\">http://www.php.cn</a></p><p><strong class=\"text\"><a class=\"manual-title\" title=\"返回文档首页\" href=\"http://www.php.cn/manual/471\">jQuery Mobile参考手册</a>：<a href=\"http://www.php.cn/manual/view/20005.html\">http://www.php.cn/manual/view/20005.html</a></strong></p><p>jQuery Mobile 是一个用于创建移动端web应用的的前端框架。</p><h2>什么是 jQuery Mobile?</h2><p>jQuery Mobile 是针对触屏智能手机与平板电脑的网页开发框架。</p><p>jQuery Mobile 工作与所有主流的智能手机和平板电脑上：</p><h2><img src=\"../image/5615faff0c3bd.jpg\" width=\"717\" height=\"117\"/></h2><p>jQuery Mobile 构建于 jQuery 以及 jQuery UI类库之上，如果您了解 jQuery，您可以很容易的学习 jQuery Mobile。</p><p>jQuery Mobile 使用了极少的 HTML5、CSS3、JavaScript 和 AJAX 脚本代码来完成页面的布局渲染。</p><hr/><h2>为什么使用 jQuery Mobile?</h2><p>通过使用jQuery Mobile 可以 &quot;写更少的代码，做更多的事情&quot; : 它可以通过一个灵活及简单的方式来布局网页，且兼容所有移动设备。</p><table class=\"lamp\"><tbody><tr class=\"firstRow\"><th width=\"34\">&nbsp;</th><td><p>不同设备使用了不同开发语言，jQuery Mobile可以很好的兼容不容的设备或操作系统：</p><ul class=\"list-group list-paddingleft-2\"><li><p>Android 和 Blackberry（黑莓） 使用JAVA语言。</p></li><li><p>iOS 使用 Objective C 语言</p></li><li><p>Windows Phone 使用 C# 和 .net, 等。</p></li></ul><p><strong>jQuery Mobile 解决了不同设备兼容的问题，因为它只使用HTML，CSS和 JavaScript，这是所有移动网络浏览器的标准！</strong></p></td></tr></tbody></table><hr/><h2>最好的阅读体验</h2><p>尽管jQuery Mobile兼容所有的移动设备，但是并不能完全兼容PC机（由于有限的CSS3支持）。</p><p><br/></p>','1',0,1,38,1,1531206228,1531206228,'jQuery，Mobile','/public/static/index/images/toppic02.jpg',0);
INSERT INTO `clt_blog` VALUES (50,'Linux常见命令',6,1,'','','<p>Ubuntu 16.04安装vsftpd<br/>使用下列命令安装</p><p>sudo apt-get install vsftpd</p><p>完全卸载vsftpd：<br/>sudo apt-get purge vsftpd</p><p>安装完后，ftp的配置文件在</p><p>/etc/vsftpd.conf<br/>可以使用下列命令来打开，关闭，重启ftp服务</p><p>sudo /etc/init.d/vsftpd start<br/>sudo /etc/init.d/vsftpd stop<br/>sudo /etc/init.d/vsftpd restart<br/>使用下列命令，可以看到系统中多了ftp用户组和ftp用户</p><p>cat /etc/group<br/>cat /etc/passwd</p><p>创建ftp用户<br/>方法一：直接在系统设置添加用户<br/>方法二：<br/>创建用户目录 sudo mkdir /home/uftp<br/>创建用户 sudo useradd -d /home/uftp -s /bin/bash uftp<br/>修改密码 sudo passwd uftp</p><p>配置vsftpd.conf</p><p>sudo vi /etc/vsftpd.conf</p><p>编辑vsftpd.conf文件</p><p>userlist_deny=NO<br/>userlist_enable=YES<br/>#允许登录的用户<br/>userlist_file=/etc/allowed_users<br/>seccomp_sandbox=NO<br/>#默认ftp下载目录<br/>local_root=/home/uftp/</p><p>local_enable=YES<br/>#设置文件上传<br/>write_enable=YES<br/>#使用utf8<br/>utf8_filesystem=YES</p><p>添加允许登录的用户</p><p>sudo gedit /etc/allowed_users</p><p>5、启动停止重启服务<br/>sudo /etc/init.d/vsftpd start<br/>sudo /etc/init.d/vsftpd stop<br/>sudo /etc/init.d/vsftpd restart</p><p>3、更改用户相应的权限设置：</p><p>运行命令：“usermod -s /sbin/nologin test”　　//限定用户test不能telnet，只能ftp</p><p>运行命令：“usermod -s /sbin/bash test”　　//用户test恢复正常</p><p>运行命令：“usermod -d /test test”　　//更改用户test的主目录为/test</p><p>4、限制用户只能访问/home/test，不能访问其他路径</p><p>修改/etc/vsftpd/vsftpd.conf如下：</p><p>chroot_list_enable=YES<br/># (default follows)<br/>chroot_list_file=/etc/vsftpd/vsftpd.chroot_list<br/>编辑上面的内容</p><p>第一行：chroot_list_enable=YES　　//限制访问自身目录</p><p>第三行：编辑vsftpd.chroot_list。根据第三行说指定的目录，找到chroot_list文件。（因主机不同，文件名也许略有不同）</p><p>编辑vsftpd.chroot_list，将受限制的用户添加进去，每个用户名一行</p><p>文件夹赋权限：<br/>权限 目录<br/>chmod -R 777 /home/mypackage</p><p>有用的网址：<br/>https://www.linuxidc.com/Linux/2017-01/139233.htm</p><p><br/></p>','3',0,1,15,1,1531206305,1531206305,'linux,命令','/public/static/index/images/v1.jpg',0);
INSERT INTO `clt_blog` VALUES (51,'laravel交流社区',4,1,'','','<p><a href=\"https://laravel-china.org/\">https://laravel-china.org/</a></p>','4',0,1,20,0,1531206352,1531206352,'laravel','/public/static/index/images/toppic01.jpg',0);
INSERT INTO `clt_blog` VALUES (52,'ubuntu配置ssh远程连接',6,1,'','','<p>1.更新源</p><p><code class=\"hljs vbscript has-numbering\"><span class=\"hljs-keyword\"><span class=\"hljs-built_in\"><code>apt-get update</code></span></span></code></p><p>2.安装ssh</p><pre class=\"prettyprint\">sudo&nbsp;apt-get&nbsp;install&nbsp;openssh-server</pre><p>3.安装好后查看SSH是否启动&nbsp;</p><pre class=\"prettyprint\"><br/></pre><p><code>sudo ps -e |grep ssh</code></p><pre class=\"prettyprint\"><br/></pre><p>&nbsp;</p><pre class=\"prettyprint\">有sshd,说明ssh服务已经启动，如果没有启动，输入</pre><p><code>sudo service ssh start</code></p><p>4.修改配置文件:</p><p>vim /etc/ssh/sshd_config</p><p>把配置文件中的</p><p>PermitRootLogin without-password 后加一个#号,把它注释掉<br/>将末尾的</p><p>PermitRootLogin no<br/>改为：<br/>PermitRootLogin yes<br/>保存，修改成功</p><p>5.重启ssh:</p><p>sudo service ssh restart</p><p><br/></p>','3',0,1,33,0,1531206410,1531206410,'Ubuntu，ssh','/public/static/index/images/toppic01.jpg',0);
INSERT INTO `clt_blog` VALUES (55,'ubuntu配置ssh远程连接',6,1,'','ssh远程连接','<p>1.更新源</p><p><code class=\"hljs vbscript has-numbering\"><span class=\"hljs-keyword\"><span class=\"hljs-built_in\"><code>apt-get update</code></span></span></code></p><p>2.安装ssh</p><pre class=\"prettyprint\">sudo&nbsp;apt-get&nbsp;install&nbsp;openssh-server</pre><p>3.安装好后查看SSH是否启动&nbsp;</p><p><code>sudo ps -e |grep ssh</code></p><p>&nbsp;</p><pre class=\"prettyprint\">有sshd,说明ssh服务已经启动，如果没有启动，输入</pre><p><code>sudo service ssh start</code></p><p>4.修改配置文件:</p><p>vim /etc/ssh/sshd_config</p><p>把配置文件中的</p><p>PermitRootLogin without-password 后加一个#号,把它注释掉<br>将末尾的</p><p>PermitRootLogin no<br>改为：<br>PermitRootLogin yes<br>保存，修改成功</p><p>5.重启ssh:</p><p>sudo service ssh restart</p><p><br></p>','3',0,1,122,42,1531812115,1533884096,'Ubuntu，ssh',0,0);
INSERT INTO `clt_blog` VALUES (57,'Widget在ThinkPHP3.2中的用法',4,1,'','ThinkPHP中的Widget扩展','<p style=\"text-align: justify;\">1、在index模块下下面建立一个Widget文件夹，比如index/Widget</p><p style=\"text-align: justify;\">2、在Widget下面建立一个HeadWidget.class.php</p><p style=\"text-align: justify;\">3、内容如下,把结果返回即可</p><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"syntaxhighlighter  php  layui-table\"><tbody><tr><td class=\"gutter\"><div class=\"line number1 index0 alt2\" style=\"text-align: right;\">1</div><div class=\"line number2 index1 alt1\" style=\"text-align: right;\">2</div><div class=\"line number3 index2 alt2\" style=\"text-align: right;\">3</div><div class=\"line number4 index3 alt1\" style=\"text-align: right;\">4</div><div class=\"line number5 index4 alt2\" style=\"text-align: right;\">5</div><div class=\"line number6 index5 alt1\" style=\"text-align: right;\">6</div><div class=\"line number7 index6 alt2\" style=\"text-align: right;\">7</div><div class=\"line number8 index7 alt1\" style=\"text-align: right;\">8</div><div class=\"line number9 index8 alt2\" style=\"text-align: right;\">9</div><div class=\"line number10 index9 alt1\" style=\"text-align: right;\">10</div><div class=\"line number11 index10 alt2\" style=\"text-align: right;\">11</div><div class=\"line number12 index11 alt1\" style=\"text-align: right;\">12</div><div class=\"line number13 index12 alt2\" style=\"text-align: right;\">13</div><div class=\"line number14 index13 alt1\" style=\"text-align: right;\">14</div><div class=\"line number15 index14 alt2\" style=\"text-align: right;\">15</div></td><td class=\"code\"><div class=\"container\"><p><font face=\"monospace\">&lt;?php&nbsp;</font></p><p><font face=\"monospace\">namespace index\\Widget;</font></p><p><font face=\"monospace\">use Think\\Controller;</font></p><p><font face=\"monospace\">class HeadWidget extends Controller{</font></p><p><font face=\"monospace\">&nbsp; &nbsp; public function head(){</font></p><p><font face=\"monospace\">&nbsp; &nbsp; &nbsp; &nbsp; $head=M(\'navigation\')-&gt;where(\'status=1 and pid=0\')</font></p><p><font face=\"monospace\"><br></font></p><p><font face=\"monospace\">&nbsp; &nbsp; &nbsp; &nbsp; -&gt;field(\'id,title\')-&gt;select();</font></p><p><font face=\"monospace\">&nbsp; &nbsp; &nbsp; &nbsp; foreach($_cate as $k=&gt;$v){</font></p><p><font face=\"monospace\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; $_cate[$k][\'child\']=M(\'channel\')</font></p><p><font face=\"monospace\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; -&gt;where(\'status=1 and pid=\'.$v[\'id\'])</font></p><p><font face=\"monospace\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; -&gt;field(\'id,title\')-&gt;select();</font></p><p><font face=\"monospace\">&nbsp; &nbsp; &nbsp; &nbsp; }</font></p><p><font face=\"monospace\">&nbsp; &nbsp; &nbsp; &nbsp; return $head;</font></p><p><font face=\"monospace\">&nbsp; &nbsp; }</font></p><p><font face=\"monospace\">}</font></p><div class=\"line number15 index14 alt2\"><code class=\"php plain\">}</code></div></div></td></tr></tbody></table><div class=\"line number1 index0 alt2\"><br></div><p style=\"text-align: justify;\">4、前台页面接收如下：</p><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"syntaxhighlighter  html   layui-table\"><tbody><tr><td class=\"gutter\"><div class=\"line number1 index0 alt2\" style=\"text-align: right;\">1</div><div class=\"line number2 index1 alt1\" style=\"text-align: right;\">2</div><div class=\"line number3 index2 alt2\" style=\"text-align: right;\">3</div><div class=\"line number4 index3 alt1\" style=\"text-align: right;\">4</div><div class=\"line number5 index4 alt2\" style=\"text-align: right;\">5</div><div class=\"line number6 index5 alt1\" style=\"text-align: right;\">6</div><div class=\"line number7 index6 alt2\" style=\"text-align: right;\">7</div><div class=\"line number8 index7 alt1\" style=\"text-align: right;\">8</div><div class=\"line number9 index8 alt2\" style=\"text-align: right;\">9</div></td><td class=\"code\"><div class=\"container\"><p><code class=\"html plain\">&lt;?</code><code class=\"html keyword\">php</code>&nbsp;<span>foreach(W(\'Head/head\')&nbsp;as&nbsp;$v)&nbsp;{?&gt;</span></p><div class=\"line number2 index1 alt1\"><code class=\"html spaces\">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class=\"html plain\">&lt;</code><code class=\"html keyword\">li</code>&nbsp;<code class=\"html color1\">class</code><code class=\"html plain\">=</code><code class=\"html string\">\"c-cat-depth-1\"</code><code class=\"html plain\">&gt;&lt;</code><code class=\"html keyword\">a</code>&nbsp;<code class=\"html color1\">href</code><code class=\"html plain\">=</code><code class=\"html string\">\"#\"</code><code class=\"html plain\">&gt;&lt;?=$v[\'title\']?&gt;&lt;/</code><code class=\"html keyword\">a</code><code class=\"html plain\">&gt;</code></div><div class=\"line number3 index2 alt2\"><code class=\"html spaces\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class=\"html plain\">&lt;</code><code class=\"html keyword\">ul</code><code class=\"html plain\">&gt;</code></div><div class=\"line number4 index3 alt1\"><code class=\"html spaces\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class=\"html plain\">&lt;?</code><code class=\"html keyword\">php</code>&nbsp;<code class=\"html plain\">foreach($v[\'child\']&nbsp;as&nbsp;$v1)&nbsp;{?&gt;</code></div><div class=\"line number5 index4 alt2\"><code class=\"html spaces\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class=\"html plain\">&lt;</code><code class=\"html keyword\">li</code>&nbsp;<code class=\"html color1\">class</code><code class=\"html plain\">=</code><code class=\"html string\">\"c-cat-depth-2\"</code><code class=\"html plain\">&gt;&lt;</code><code class=\"html keyword\">a</code>&nbsp;<code class=\"html color1\">href</code><code class=\"html plain\">=</code><code class=\"html string\">\"#\"</code><code class=\"html plain\">&gt;&lt;?=$v1[\'title\']?&gt;&lt;/</code><code class=\"html keyword\">a</code><code class=\"html plain\">&gt;&lt;/</code><code class=\"html keyword\">li</code><code class=\"html plain\">&gt;</code></div><div class=\"line number6 index5 alt1\"><code class=\"html spaces\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class=\"html plain\">&lt;?</code><code class=\"html keyword\">php</code>&nbsp;<code class=\"html plain\">}&nbsp;?&gt;</code></div><div class=\"line number7 index6 alt2\"><code class=\"html spaces\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class=\"html plain\">&lt;/</code><code class=\"html keyword\">ul</code><code class=\"html plain\">&gt;</code></div><div class=\"line number8 index7 alt1\"><code class=\"html spaces\">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class=\"html plain\">&lt;/</code><code class=\"html keyword\">li</code><code class=\"html plain\">&gt;</code></div><div class=\"line number9 index8 alt2\"><code class=\"html spaces\">&nbsp;</code><code class=\"html plain\">&lt;?</code><code class=\"html keyword\">php</code>&nbsp;<code class=\"html plain\">}&nbsp;?&gt;</code></div></div></td></tr></tbody></table>','4',0,1,22,0,1533800047,1533879325,'ThinkPHP3.2,tp,Widget',0,0);
INSERT INTO `clt_blog` VALUES (58,'widget在Thinkphp5中的用法',4,1,'','Widget在tp5中叫分层控制器','<p>&nbsp; &nbsp; &nbsp; widget&nbsp;<b>左侧分类导航</b><span>和</span><b>面包屑等</b>，<span>3.2版本就用过，很好用，tp5中稍微调整过了，但影响不大。</span></p><p></p><p><span>首先在</span>（index）模块下建立一个widget文件夹。</p><p><span>新建控制器Widgets如下：</span></p><pre>&lt;?php<br>namespace app\\index\\widget;<br>use Think\\Controller;<br>class Widget extends Controller<br>{<br>    public function header()<br>    {<br>        $str = \'http://\'.$_SERVER[\'HTTP_HOST\'].$_SERVER[\'PHP_SELF\'];<br>        $url = substr($str,0,strpos($str, \'/index.php\'));<br>        $where[\'status\'] = 1;<br>//        $where[\'type\'] = 0;<br>        $nav = Db(\'navigation\')-&gt;where($where)-&gt;order(\'sort asc\')-&gt;select();//导航栏<br>        foreach ($nav as $value){<br>            if($value[\'pid\']==0){<br>                $value[\'url\'] = $url.$value[\'url\'];<br>                foreach ($nav as $item){<br>                    if ($item[\'pid\']==$value[\'id\']){<br>                        $value[\'son\'][] = $item;<br>                    }<br>                }<br>                $arr[] = $value;<br>            }<br>        }<br>        $this-&gt;assign(\'nav\',$arr);<br>        return $this-&gt;fetch(\'public/header\');//当然得有视图了<br><p><span>    </span><span>}</span></p><p><span>}</span></p></pre><p><span><b>在view文件夹下简历public文件夹，再建立header.html文件如下：</b></span></p><pre>&lt;div id=\"mnav\"&gt;<br>    &lt;h2&gt;&lt;a href=\"http://www.yangqq.com\" class=\"mlogo\"&gt;个人博客&lt;/a&gt;&lt;span class=\"navicon\"&gt;&lt;/span&gt;&lt;/h2&gt;<br>    &lt;dl class=\"list_dl\"&gt;<br>        {volist name=\"nav\" id=\"vo\"}<br>            {notempty name=\"vo.son\"}<br>                &lt;dd class=\"list_dd\"&gt;<br>                    &lt;ul&gt;<br>                        {volist name=\"vo.son\" id=\"vo2\" empty=\"dsf\"}<br>                        &lt;li&gt;&lt;a href=\"{$vo2.url}\"&gt;{$vo2.navigation}&lt;/a&gt;&lt;/li&gt;<br>                        &lt;!--&lt;li&gt;&lt;a href=\"{$vo2.url}\"&gt;{$vo2.navigation}&lt;/a&gt;&lt;/li&gt;--&gt;<br>                        {/volist}<br>                    &lt;/ul&gt;<br>                &lt;/dd&gt;<br>        {else /}<br>        &lt;dt class=\"list_dt\"&gt; &lt;a href=\"{$vo.url}\"&gt;{$vo.navigation}&lt;/a&gt; &lt;/dt&gt;<br>            {/notempty}<br>        {/volist}<br>    &lt;/dl&gt;<br>&lt;/div&gt;</pre><p><span>最后在模板中调用如下：</span></p><pre>{:widget(\'Widget/header\')}</pre><p><span><br></span></p><p></p>','4',0,1,46,0,1533800706,1533885598,'widget,tp5',0,0);
INSERT INTO `clt_blog` VALUES (59,'而',1,1,'','热','','6',0,1,10,0,1533801155,1533806095,'而同仁堂',0,0);
INSERT INTO `clt_blog` VALUES (61,'官方SVN各版本下载',5,1,'','svn','<p>网址：<a target=\"_blank\" href=\"https://sourceforge.net/projects/tortoisesvn/files/\">https://sourceforge.net/projects/tortoisesvn/files/</a><br></p>','3',0,1,24,0,1534227083,1534227083,'svn',0,0);
--
-- 表的结构 `clt_category`
-- 
DROP TABLE IF EXISTS `clt_category`;
CREATE TABLE `clt_category` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `catname` varchar(255) NOT NULL DEFAULT '',
  `catdir` varchar(30) NOT NULL DEFAULT '',
  `parentdir` varchar(50) NOT NULL DEFAULT '',
  `parentid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `moduleid` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `module` char(24) NOT NULL DEFAULT '',
  `arrparentid` varchar(255) NOT NULL DEFAULT '',
  `arrchildid` varchar(100) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(150) NOT NULL DEFAULT '',
  `keywords` varchar(200) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ishtml` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ismenu` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `image` varchar(100) NOT NULL DEFAULT '',
  `child` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `url` varchar(100) NOT NULL DEFAULT '',
  `template_list` varchar(20) NOT NULL DEFAULT '',
  `template_show` varchar(20) NOT NULL DEFAULT '',
  `pagesize` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `readgroup` varchar(100) NOT NULL DEFAULT '',
  `listtype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parentid` (`parentid`),
  KEY `listorder` (`listorder`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- 
-- 导出`clt_category`表中的数据 `clt_category`
--
INSERT INTO `clt_category` VALUES (1,'博客','news','',0,2,'article','0','1,5,6,16,17,18,19',0,'技术博客','最新动态','最新动态',0,0,1,0,'',1,'','article_list','article_show',0,'1,2,3',0,0);
INSERT INTO `clt_category` VALUES (2,'技术','about','',0,1,'page','0','2',0,'关于我们','CLTPHP内容管理系统，微信公众平台、APP移动应用设计、HTML5网站API定制开发。大型企业网站、个人博客论坛、手机网站定制开发。更高效、更快捷的进行定制开发。','CLTPHP内容管理系统，微信公众平台、APP移动应用设计、HTML5网站API定制开发。大型企业网站、个人博客论坛、手机网站定制开发。更高效、更快捷的进行定制开发。',0,0,1,0,'',0,'','','',0,'',0,0);
INSERT INTO `clt_category` VALUES (4,'php','system','',2,3,'picture','0','4',0,'CLTPHP系统操作','CLTPHP系统操作,CLTPHP,CLTPHP内容管理系统','CLTPHP系统操作,CLTPHP,CLTPHP内容管理系统',2,0,1,0,'',0,'','','',0,'1,2,3',0,0);
INSERT INTO `clt_category` VALUES (3,'前端','services','',2,2,'article','0','3',0,'产品服务-CLTPHP','产品服务,CLTPHP,CLTPHP内容管理系统','产品服务',1,0,1,0,'',0,'','','',15,'1,2,3',0,0);
INSERT INTO `clt_category` VALUES (8,'mysql','contact','',2,1,'page','0','8',0,'联系我们','联系我们','联系我们',7,0,1,0,'',0,'','page_show_contace','page_show_contace',0,'',0,0);
INSERT INTO `clt_category` VALUES (7,'windows','team','',5,6,'team','0','7',0,'精英团队','精英团队','精英团队',5,0,1,0,'',0,'','','',0,'',0,0);
INSERT INTO `clt_category` VALUES (5,'服务器','news','news/',0,2,'article','0,1','5',0,'最新动态','CLTPHP动态','CLTPHP动态',0,0,1,0,'',0,'','','',0,'1,2,3',0,0);
INSERT INTO `clt_category` VALUES (6,'linux','news','news/',5,2,'article','0,1','6',0,'技术博客','CLTPHP相关知识','CLTPHP相关知识',0,0,1,0,'',0,'','','',0,'1,2,3',0,0);
INSERT INTO `clt_category` VALUES (16,'16','news','news/',1,2,'article','0,1','16',1,'php','php,thinkphp','',0,0,1,0,'',0,'','','',0,'',0,0);
INSERT INTO `clt_category` VALUES (17,'17','news','news/',1,2,'article','0,1','17',1,'前端','HTML js css','',0,0,1,0,'',0,'','','',0,'',0,0);
INSERT INTO `clt_category` VALUES (18,'18','news','news/',1,2,'article','0,1','18,19',1,'','','',0,0,1,0,'',1,'','article_list','article_show',0,'1,2,3',0,0);
--
-- 表的结构 `clt_category1`
-- 
DROP TABLE IF EXISTS `clt_category1`;
CREATE TABLE `clt_category1` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `catname` varchar(255) NOT NULL DEFAULT '',
  `catdir` varchar(30) NOT NULL DEFAULT '',
  `parentdir` varchar(50) NOT NULL DEFAULT '',
  `parentid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `moduleid` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `module` char(24) NOT NULL DEFAULT '',
  `arrparentid` varchar(255) NOT NULL DEFAULT '',
  `arrchildid` varchar(100) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(150) NOT NULL DEFAULT '',
  `keywords` varchar(200) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ishtml` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ismenu` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `image` varchar(100) NOT NULL DEFAULT '',
  `child` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `url` varchar(100) NOT NULL DEFAULT '',
  `template_list` varchar(20) NOT NULL DEFAULT '',
  `template_show` varchar(20) NOT NULL DEFAULT '',
  `pagesize` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `readgroup` varchar(100) NOT NULL DEFAULT '',
  `listtype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parentid` (`parentid`),
  KEY `listorder` (`listorder`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- 
-- 导出`clt_category1`表中的数据 `clt_category1`
--
INSERT INTO `clt_category1` VALUES (1,'博客','news','',0,2,'article','0','1,5,6,16,17,18,19',0,'技术博客','最新动态','最新动态',4,0,1,0,'',1,'','article_list','article_show',0,'1,2,3',0,0);
INSERT INTO `clt_category1` VALUES (2,'技术','about','',0,1,'page','0','2',0,'关于我们','CLTPHP内容管理系统，微信公众平台、APP移动应用设计、HTML5网站API定制开发。大型企业网站、个人博客论坛、手机网站定制开发。更高效、更快捷的进行定制开发。','CLTPHP内容管理系统，微信公众平台、APP移动应用设计、HTML5网站API定制开发。大型企业网站、个人博客论坛、手机网站定制开发。更高效、更快捷的进行定制开发。',0,0,1,0,'',0,'','','',0,'',0,0);
INSERT INTO `clt_category1` VALUES (4,'系统操作','system','',0,3,'picture','0','4',0,'CLTPHP系统操作','CLTPHP系统操作,CLTPHP,CLTPHP内容管理系统','CLTPHP系统操作,CLTPHP,CLTPHP内容管理系统',2,0,1,0,'',0,'','','',0,'1,2,3',0,0);
INSERT INTO `clt_category1` VALUES (3,'CLTPHP服务','services','',0,2,'article','0','3',0,'产品服务-CLTPHP','产品服务,CLTPHP,CLTPHP内容管理系统','产品服务',1,0,1,0,'',0,'','','',15,'1,2,3',0,0);
INSERT INTO `clt_category1` VALUES (8,'联系我们','contact','',0,1,'page','0','8',0,'联系我们','联系我们','联系我们',7,0,1,0,'',0,'','page_show_contace','page_show_contace',0,'',0,0);
INSERT INTO `clt_category1` VALUES (7,'精英团队','team','',0,6,'team','0','7',0,'精英团队','精英团队','精英团队',5,0,1,0,'',0,'','','',0,'',0,0);
INSERT INTO `clt_category1` VALUES (5,'最新资讯','news','news/',1,2,'article','0,1','5',0,'最新动态','CLTPHP动态','CLTPHP动态',0,0,1,0,'',0,'','','',0,'1,2,3',0,0);
INSERT INTO `clt_category1` VALUES (6,'技术博客','news','news/',1,2,'article','0,1','6',0,'技术博客','CLTPHP相关知识','CLTPHP相关知识',0,0,1,0,'',0,'','','',0,'1,2,3',0,0);
INSERT INTO `clt_category1` VALUES (16,'php相关知识','news','news/',1,2,'article','0,1','16',0,'php','php,thinkphp','',0,0,1,0,'',0,'','','',0,'',0,0);
INSERT INTO `clt_category1` VALUES (17,'html&js&css','news','news/',1,2,'article','0,1','17',0,'前端','HTML js css','',0,0,1,0,'',0,'','','',0,'',0,0);
INSERT INTO `clt_category1` VALUES (18,'服务器','news','news/',1,2,'article','0,1','18,19',0,'','','',0,0,1,0,'',1,'','article_list','article_show',0,'1,2,3',0,0);
INSERT INTO `clt_category1` VALUES (19,'和豆腐干','newsinfo','news/news/',18,1,'page','0,1,18','19',0,'','tgtrwe','wertrewt',0,0,1,0,'/uploads/20180426/1624cda0ceb9a30d771ce6b4274152d7.jpg',1,'','','',0,'1,2,3',0,0);
--
-- 表的结构 `clt_config`
-- 
DROP TABLE IF EXISTS `clt_config`;
CREATE TABLE `clt_config` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `name` varchar(50) DEFAULT NULL COMMENT '配置的key键名',
  `value` varchar(512) DEFAULT NULL COMMENT '配置的val值',
  `inc_type` varchar(64) DEFAULT NULL COMMENT '配置分组',
  `desc` varchar(50) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=90 DEFAULT CHARSET=utf8;

-- 
-- 导出`clt_config`表中的数据 `clt_config`
--
INSERT INTO `clt_config` VALUES (16,'is_mark','0','water','0');
INSERT INTO `clt_config` VALUES (17,'mark_txt','','water','0');
INSERT INTO `clt_config` VALUES (18,'mark_img','/public/upload/public/2017/01-20/10cd966bd5f3549833c09a5c9700a9b8.jpg','water','0');
INSERT INTO `clt_config` VALUES (19,'mark_width','','water','0');
INSERT INTO `clt_config` VALUES (20,'mark_height','','water','0');
INSERT INTO `clt_config` VALUES (21,'mark_degree','54','water','0');
INSERT INTO `clt_config` VALUES (22,'mark_quality','56','water','0');
INSERT INTO `clt_config` VALUES (23,'sel','9','water','0');
INSERT INTO `clt_config` VALUES (24,'sms_url','https://yunpan.cn/OcRgiKWxZFmjSJ','sms','0');
INSERT INTO `clt_config` VALUES (25,'sms_user','','sms','0');
INSERT INTO `clt_config` VALUES (26,'sms_pwd','访问密码 080e','sms','0');
INSERT INTO `clt_config` VALUES (27,'regis_sms_enable','1','sms','0');
INSERT INTO `clt_config` VALUES (28,'sms_time_out','1200','sms','0');
INSERT INTO `clt_config` VALUES (38,'__hash__','8d9fea07e44955760d3407524e469255_6ac8706878aa807db7ffb09dd0b02453','sms','0');
INSERT INTO `clt_config` VALUES (39,'__hash__','8d9fea07e44955760d3407524e469255_6ac8706878aa807db7ffb09dd0b02453','sms','0');
INSERT INTO `clt_config` VALUES (56,'sms_appkey','123456789','sms','0');
INSERT INTO `clt_config` VALUES (57,'sms_secretKey','123456789','sms','0');
INSERT INTO `clt_config` VALUES (58,'sms_product','CLTPHP','sms','0');
INSERT INTO `clt_config` VALUES (59,'sms_templateCode','SMS_101234567890','sms','0');
INSERT INTO `clt_config` VALUES (60,'smtp_server','smtp.163.com','smtp','0');
INSERT INTO `clt_config` VALUES (61,'smtp_port','25','smtp','0');
INSERT INTO `clt_config` VALUES (62,'smtp_user','15617774662@163.com','smtp','0');
INSERT INTO `clt_config` VALUES (63,'smtp_pwd','wzh000wzh','smtp','0');
INSERT INTO `clt_config` VALUES (64,'regis_smtp_enable','1','smtp','0');
INSERT INTO `clt_config` VALUES (65,'test_eamil','vzinger@163.com','smtp','0');
INSERT INTO `clt_config` VALUES (70,'forget_pwd_sms_enable','1','sms','0');
INSERT INTO `clt_config` VALUES (71,'bind_mobile_sms_enable','1','sms','0');
INSERT INTO `clt_config` VALUES (72,'order_add_sms_enable','1','sms','0');
INSERT INTO `clt_config` VALUES (73,'order_pay_sms_enable','1','sms','0');
INSERT INTO `clt_config` VALUES (74,'order_shipping_sms_enable','1','sms','0');
INSERT INTO `clt_config` VALUES (88,'email_id','vzinger','smtp','0');
INSERT INTO `clt_config` VALUES (89,'test_eamil_info',' 您好！这是一封来自CLTPHP的测试邮件！','smtp','0');
--
-- 表的结构 `clt_debris`
-- 
DROP TABLE IF EXISTS `clt_debris`;
CREATE TABLE `clt_debris` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `type_id` int(6) DEFAULT NULL,
  `title` varchar(120) DEFAULT NULL,
  `content` text,
  `addtime` int(13) DEFAULT NULL,
  `sort` int(11) DEFAULT '50',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- 
-- 导出`clt_debris`表中的数据 `clt_debris`
--
INSERT INTO `clt_debris` VALUES (15,0,'初识jquery','<p>1.<strong>你为什么要用jquery？</strong></p><p>答：因为jQuery是轻量级的框架，大小不到30kb,它有强大的选择器，出色的DOM操作的封装，有可靠的事件处理机制(jQuery在处理事件绑定的时候相当的可靠)，完善的ajax(它的ajax封装的非常的好，不需要考虑复杂浏览器的兼容性和XMLHttpRequest对象的创建和使用的问题。)&nbsp;出色的浏览器的兼容性。&nbsp;而且支持链式操作，隐式迭代。行为层和结构层的分离，还支持丰富的插件，jquery的文档也非常的丰富。</p><p><strong>&nbsp;</strong></p><p><strong>2</strong> <strong>举例说明jquery对象和dom对象如何相互转化的</strong></p><p>答: jquery 对象 $(‘#id’)转成dom对象 $(‘#id’)[0]</p><p>dom对象 Var id = document.getElementById(‘id’);</p><p>转成jquery对象 Var id = $(id);</p><p><strong>Jquery02</strong><strong>天</strong></p><ol class=\" list-paddingleft-2\"><li><p><strong> 1 &lt;div&gt;2&lt;p&gt;&lt;/p&gt;3&lt;/div&gt;4 </strong><strong>想在1234 分别插入节点用的是哪几个方法？</strong></p></li></ol><p>答:befor prepend append after</p><ol class=\" list-paddingleft-2\"><li><p><strong>删除节点常用的是哪两个方法，并简述区别</strong></p></li></ol><p>答: empty（）删除元素中所有子节点</p><p>Remove（）删除元素本身</p><p><strong>5.window.onload()，$(function(){})两者的作用和区别是什么？</strong></p><p>答：都是在页面加载完成之后, 调用，window.onload用于js，只能执行一次，后面覆盖前面，$(function(){})可以执行多少</p><p><strong>6.</strong><strong>jquery</strong><strong>克隆节点是哪个方法，里面的参数表示什么含义？</strong></p><p>答: &nbsp;clone(),参数默认为false 表示不克隆事件，只克隆节点</p><ol class=\" list-paddingleft-2\"><li><p><strong>关于jquery内容操作，html(),text(),val()三者有何区别？</strong></p></li></ol><p>答: html()获取包含标签的文本，text()获取纯文本，val()获取input value值</p><ol class=\" list-paddingleft-2\"><li><p><strong>写出jquery获取&lt;input type=’text’ id =’txt’name=’username’class=‘txt’&gt;对象的几种方式？</strong></p></li></ol><p>$(‘inpu’) $(‘input[type = text]) $(‘#txt’) $(‘.txt’)</p><p><strong>Jquery03</strong><strong>天</strong></p><ol class=\" list-paddingleft-2\"><li><p><strong>解释事件绑定中bind() unbind() one()三者的含义？</strong></p></li></ol><p>答:bind()绑定事件，unbind()取消绑定的事件，one()绑定事件触发一次</p><ol class=\" list-paddingleft-2\"><li><p>10.<strong> jquery</strong><strong>动画常用的几个方法是，都是什么作用？</strong></p></li></ol><p>Show() 显示 hide()隐藏 fadeIn 淡入 fadeOut淡出 fadeTo()透明度 淡入 slideDown 下拉 slideUp 上卷 animate()动画</p><p><br></p>',1503293255,1);
INSERT INTO `clt_debris` VALUES (16,1,'JavaScript面试题','<p><b>rrertetrrte</b></p>',1503293273,2);
INSERT INTO `clt_debris` VALUES (17,1,'简单、高效、低门槛','<p><span style=\"text-align: center;\">CLTPHP内容管理系统，全程鼠标操作，不用手动建立数据库，不用画网站结构图，也不用打开代码编译器。模版编辑，再高效建站的同时，让网站建设达到前所未有的极致简单。</span></p>',1503293291,3);
INSERT INTO `clt_debris` VALUES (21,1,'人脸识别','点击<a target=\"_blank\" href=\"http://sunshinecom.cn/project/orc/face\">这里</a>进入人脸识别',1524562155,50);
INSERT INTO `clt_debris` VALUES (22,1,'名片识别','点击<a target=\"_blank\" href=\"http://www.sunshinecom.cn\">这里</a>进入名片识别',1524562232,50);
INSERT INTO `clt_debris` VALUES (23,0,'hjg','ghjfh',1533025959,50);
INSERT INTO `clt_debris` VALUES (24,0,'jhgfh','hgjhgfjhg',1533025974,50);
--
-- 表的结构 `clt_debris_type`
-- 
DROP TABLE IF EXISTS `clt_debris_type`;
CREATE TABLE `clt_debris_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(120) DEFAULT NULL,
  `sort` int(1) DEFAULT '50',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- 
-- 导出`clt_debris_type`表中的数据 `clt_debris_type`
--
INSERT INTO `clt_debris_type` VALUES (1,'【首页】中部碎片',1);
INSERT INTO `clt_debris_type` VALUES (5,'【测试】',2);
--
-- 表的结构 `clt_donation`
-- 
DROP TABLE IF EXISTS `clt_donation`;
CREATE TABLE `clt_donation` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `name` varchar(120) NOT NULL DEFAULT '' COMMENT '用户名',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '捐赠金额',
  `addtime` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- 
-- 导出`clt_donation`表中的数据 `clt_donation`
--
INSERT INTO `clt_donation` VALUES (3,'高飞','10.00','1466566714');
INSERT INTO `clt_donation` VALUES (4,'王磊','5.50','1466566733');
INSERT INTO `clt_donation` VALUES (5,'一匹忧郁的狼','11.11','1466566780');
INSERT INTO `clt_donation` VALUES (6,'神盾','50.00','1467517788');
INSERT INTO `clt_donation` VALUES (7,'赵云的枪','20.00','1469582594');
INSERT INTO `clt_donation` VALUES (8,'王@楠','5.00','1473155340');
INSERT INTO `clt_donation` VALUES (9,'王宁','10.00','1473647377');
INSERT INTO `clt_donation` VALUES (11,'幽鸣','100.00','1483080600');
INSERT INTO `clt_donation` VALUES (12,'得水','6.60','1484874321');
INSERT INTO `clt_donation` VALUES (13,'挨踢男','50.00','1485224098');
INSERT INTO `clt_donation` VALUES (14,'郭强','6.60','1486343033');
INSERT INTO `clt_donation` VALUES (15,'周超','5.00','1487570095');
INSERT INTO `clt_donation` VALUES (16,'栖息地','20.00','1488507544');
INSERT INTO `clt_donation` VALUES (17,'杨萍','11.00','1489368971');
INSERT INTO `clt_donation` VALUES (18,'杨蹦蹦V587','20.00','1490608429');
INSERT INTO `clt_donation` VALUES (19,'锋行天下','20.00','1499765536');
INSERT INTO `clt_donation` VALUES (20,'周伟','50.00','1500014307');
INSERT INTO `clt_donation` VALUES (21,'王者不荣耀','20.00','1500368368');
INSERT INTO `clt_donation` VALUES (22,'老虎的虎','5.00','1500867256');
INSERT INTO `clt_donation` VALUES (23,'老夫子','20.00','1501203253');
INSERT INTO `clt_donation` VALUES (24,'我是传奇','20.00','1501567608');
INSERT INTO `clt_donation` VALUES (25,'秋心','10.00','1501807989');
INSERT INTO `clt_donation` VALUES (31,'晓强','20.00','1506742161');
INSERT INTO `clt_donation` VALUES (32,'再向南飞','20.00','1507266070');
INSERT INTO `clt_donation` VALUES (33,'女王大人','300.00','1508807674');
INSERT INTO `clt_donation` VALUES (34,'在路上','18.88','1508851175');
INSERT INTO `clt_donation` VALUES (35,'玉望灬','3.00','1509091826');
INSERT INTO `clt_donation` VALUES (36,'诚 ','40.00','1510121131');
--
-- 表的结构 `clt_download`
-- 
DROP TABLE IF EXISTS `clt_download`;
CREATE TABLE `clt_download` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userid` int(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(40) NOT NULL DEFAULT '',
  `title` varchar(120) NOT NULL DEFAULT '',
  `title_style` varchar(225) NOT NULL DEFAULT '',
  `thumb` varchar(225) NOT NULL DEFAULT '',
  `keywords` varchar(120) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `content` text NOT NULL,
  `template` varchar(40) NOT NULL DEFAULT '',
  `posid` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `recommend` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `readgroup` varchar(100) NOT NULL DEFAULT '',
  `readpoint` smallint(5) NOT NULL DEFAULT '0',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0',
  `file` varchar(80) NOT NULL DEFAULT '',
  `ext` varchar(255) NOT NULL DEFAULT 'zip',
  `size` varchar(255) NOT NULL DEFAULT '',
  `downs` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `status` (`id`,`status`,`listorder`),
  KEY `catid` (`id`,`catid`,`status`),
  KEY `listorder` (`id`,`catid`,`status`,`listorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
--
-- 表的结构 `clt_field`
-- 
DROP TABLE IF EXISTS `clt_field`;
CREATE TABLE `clt_field` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `moduleid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `field` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(30) NOT NULL DEFAULT '',
  `tips` varchar(150) NOT NULL DEFAULT '',
  `required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `minlength` int(10) unsigned NOT NULL DEFAULT '0',
  `maxlength` int(10) unsigned NOT NULL DEFAULT '0',
  `pattern` varchar(255) NOT NULL DEFAULT '',
  `errormsg` varchar(255) NOT NULL DEFAULT '',
  `class` varchar(20) NOT NULL DEFAULT '',
  `type` varchar(20) NOT NULL DEFAULT '',
  `setup` mediumtext NOT NULL,
  `ispost` tinyint(1) NOT NULL DEFAULT '0',
  `unpostgroup` varchar(60) NOT NULL DEFAULT '',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `issystem` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;

-- 
-- 导出`clt_field`表中的数据 `clt_field`
--
INSERT INTO `clt_field` VALUES (1,1,'title','标题','',1,1,80,'','标题必须为1-80个字符','','title','array (\n  \'thumb\' => \'1\',\n  \'style\' => \'1\',\n  \'size\' => \'55\',\n)',1,'',2,1,1);
INSERT INTO `clt_field` VALUES (2,1,'hits','点击次数','',0,0,8,'','','','number','array (\n  \'size\' => \'10\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'0\',\n)',1,'',8,0,0);
INSERT INTO `clt_field` VALUES (3,1,'createtime','发布时间','',1,0,0,'date','','','datetime','',1,'',97,1,1);
INSERT INTO `clt_field` VALUES (4,1,'template','模板','',0,0,0,'','','','template','',1,'',99,1,1);
INSERT INTO `clt_field` VALUES (5,1,'status','状态','',0,0,0,'','','','radio','array (\n  \'options\' => \'发布|1\r\n定时发布|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'75\',\n  \'default\' => \'1\',\n)',0,'',98,1,1);
INSERT INTO `clt_field` VALUES (6,1,'content','内容','',1,0,0,'defaul','','content','editor','array (\n  \'edittype\' => \'UEditor\',\n)',0,'',3,1,0);
INSERT INTO `clt_field` VALUES (7,2,'catid','栏目','',1,1,6,'','必须选择一个栏目','','catid','',1,'',1,1,1);
INSERT INTO `clt_field` VALUES (8,2,'title','标题','',1,1,80,'','标题必须为1-80个字符','','title','array (\n  \'thumb\' => \'1\',\n  \'style\' => \'1\',\n  \'size\' => \'55\',\n)',1,'',2,1,1);
INSERT INTO `clt_field` VALUES (9,2,'keywords','关键词','',0,0,80,'','','','text','array (\n  \'size\' => \'55\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)',1,'',3,1,1);
INSERT INTO `clt_field` VALUES (10,2,'description','SEO简介','',0,0,0,'','','','textarea','array (\n  \'fieldtype\' => \'mediumtext\',\n  \'rows\' => \'4\',\n  \'cols\' => \'55\',\n  \'default\' => \'\',\n)',1,'',4,1,1);
INSERT INTO `clt_field` VALUES (11,2,'content','内容','',0,0,0,'defaul','','content','editor','array (\n  \'edittype\' => \'UEditor\',\n)',1,'',5,1,1);
INSERT INTO `clt_field` VALUES (12,2,'createtime','发布时间','',1,0,0,'date','','','datetime','',1,'',6,1,1);
INSERT INTO `clt_field` VALUES (13,2,'recommend','允许评论','',0,0,1,'','','','radio','array (\n  \'options\' => \'允许评论|1\r\n不允许评论|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'\',\n  \'default\' => \'\',\n)',1,'',10,0,0);
INSERT INTO `clt_field` VALUES (14,2,'readpoint','阅读收费','',0,0,5,'','','','number','array (\n  \'size\' => \'5\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'0\',\n)',1,'',11,0,0);
INSERT INTO `clt_field` VALUES (15,2,'hits','点击次数','',0,0,8,'','','','number','array (\n  \'size\' => \'10\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'0\',\n)',1,'',12,1,0);
INSERT INTO `clt_field` VALUES (16,2,'readgroup','访问权限','',0,0,0,'','','','groupid','array (\n  \'inputtype\' => \'checkbox\',\n  \'fieldtype\' => \'tinyint\',\n  \'labelwidth\' => \'85\',\n  \'default\' => \'\',\n)',1,'',13,1,1);
INSERT INTO `clt_field` VALUES (17,2,'posid','推荐位','',0,0,0,'','','','posid','',1,'',14,1,1);
INSERT INTO `clt_field` VALUES (18,2,'template','模板','',0,0,0,'','','','template','',1,'',15,1,1);
INSERT INTO `clt_field` VALUES (19,2,'status','状态','',0,0,0,'','','','radio','array (\n  \'options\' => \'发布|1\r\n定时发布|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'75\',\n  \'default\' => \'1\',\n)',1,'',7,1,1);
INSERT INTO `clt_field` VALUES (20,3,'catid','栏目','',1,1,6,'','必须选择一个栏目','','catid','',1,'',1,1,1);
INSERT INTO `clt_field` VALUES (21,3,'title','标题','',1,1,80,'defaul','标题必须为1-80个字符','','title','array (\n  \'thumb\' => \'0\',\n  \'style\' => \'0\',\n)',1,'',2,1,1);
INSERT INTO `clt_field` VALUES (22,3,'keywords','关键词','',0,0,80,'','','','text','array (\n  \'size\' => \'55\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)',1,'',3,1,1);
INSERT INTO `clt_field` VALUES (23,3,'description','SEO简介','',0,0,0,'','','','textarea','array (\n  \'fieldtype\' => \'mediumtext\',\n  \'rows\' => \'4\',\n  \'cols\' => \'55\',\n  \'default\' => \'\',\n)',1,'',4,1,1);
INSERT INTO `clt_field` VALUES (24,3,'content','内容','',0,0,0,'defaul','','content','editor','array (\n  \'edittype\' => \'layedit\',\n)',1,'',7,1,1);
INSERT INTO `clt_field` VALUES (25,3,'createtime','发布时间','',1,0,0,'date','','','datetime','',1,'',8,1,1);
INSERT INTO `clt_field` VALUES (26,3,'recommend','允许评论','',0,0,1,'','','','radio','array (\n  \'options\' => \'允许评论|1\r\n不允许评论|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'\',\n  \'default\' => \'\',\n)',1,'',10,0,0);
INSERT INTO `clt_field` VALUES (27,3,'readpoint','阅读收费','',0,0,5,'','','','number','array (\n  \'size\' => \'5\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'0\',\n)',1,'',11,0,0);
INSERT INTO `clt_field` VALUES (28,3,'hits','点击次数','',0,0,8,'','','','number','array (\n  \'size\' => \'10\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'0\',\n)',1,'',12,0,0);
INSERT INTO `clt_field` VALUES (29,3,'readgroup','访问权限','',0,0,0,'','','','groupid','array (\n  \'inputtype\' => \'checkbox\',\n  \'fieldtype\' => \'tinyint\',\n  \'labelwidth\' => \'85\',\n  \'default\' => \'\',\n)',1,'',13,0,1);
INSERT INTO `clt_field` VALUES (30,3,'posid','推荐位','',0,0,0,'','','','posid','',1,'',14,1,1);
INSERT INTO `clt_field` VALUES (31,3,'template','模板','',0,0,0,'','','','template','',1,'',15,1,1);
INSERT INTO `clt_field` VALUES (32,3,'status','状态','',0,0,0,'','','','radio','array (\n  \'options\' => \'发布|1\r\n定时发布|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'75\',\n  \'default\' => \'1\',\n)',1,'',9,1,1);
INSERT INTO `clt_field` VALUES (33,3,'pic','图片','',1,0,0,'defaul','','pic','image','',0,'',5,1,0);
INSERT INTO `clt_field` VALUES (34,3,'group','类型','',1,0,0,'defaul','','group','select','array (\n  \'options\' => \'模型管理|1\n分类管理|2\n内容管理|3\',\n  \'multiple\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n  \'numbertype\' => \'1\',\n  \'size\' => \'\',\n  \'default\' => \'\',\n)',0,'',6,1,0);
INSERT INTO `clt_field` VALUES (35,4,'catid','栏目','',1,1,6,'','必须选择一个栏目','','catid','',1,'',1,1,1);
INSERT INTO `clt_field` VALUES (36,4,'title','标题','',1,1,80,'','标题必须为1-80个字符','','title','array (\n  \'thumb\' => \'1\',\n  \'style\' => \'1\',\n  \'size\' => \'55\',\n)',1,'',2,1,1);
INSERT INTO `clt_field` VALUES (37,4,'keywords','关键词','',0,0,80,'','','','text','array (\n  \'size\' => \'55\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)',1,'',3,1,1);
INSERT INTO `clt_field` VALUES (38,4,'description','SEO简介','',0,0,0,'','','','textarea','array (\n  \'fieldtype\' => \'mediumtext\',\n  \'rows\' => \'4\',\n  \'cols\' => \'55\',\n  \'default\' => \'\',\n)',1,'',4,1,1);
INSERT INTO `clt_field` VALUES (39,4,'content','内容','',0,0,0,'defaul','','content','editor','array (\n  \'edittype\' => \'layedit\',\n)',1,'',8,1,1);
INSERT INTO `clt_field` VALUES (40,4,'createtime','发布时间','',1,0,0,'date','','','datetime','',1,'',9,1,1);
INSERT INTO `clt_field` VALUES (41,4,'status','状态','',0,0,0,'','','','radio','array (\n  \'options\' => \'发布|1\r\n定时发布|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'75\',\n  \'default\' => \'1\',\n)',1,'',10,1,1);
INSERT INTO `clt_field` VALUES (42,4,'recommend','允许评论','',0,0,1,'','','','radio','array (\n  \'options\' => \'允许评论|1\r\n不允许评论|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'\',\n  \'default\' => \'\',\n)',1,'',11,0,0);
INSERT INTO `clt_field` VALUES (43,4,'readpoint','阅读收费','',0,0,5,'','','','number','array (\n  \'size\' => \'5\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'0\',\n)',1,'',12,0,0);
INSERT INTO `clt_field` VALUES (44,4,'hits','点击次数','',0,0,8,'','','','number','array (\n  \'size\' => \'10\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'0\',\n)',1,'',13,0,0);
INSERT INTO `clt_field` VALUES (45,4,'readgroup','访问权限','',0,0,0,'','','','groupid','array (\n  \'inputtype\' => \'checkbox\',\n  \'fieldtype\' => \'tinyint\',\n  \'labelwidth\' => \'85\',\n  \'default\' => \'\',\n)',1,'',14,0,1);
INSERT INTO `clt_field` VALUES (46,4,'posid','推荐位','',0,0,0,'','','','posid','',1,'',15,1,1);
INSERT INTO `clt_field` VALUES (47,4,'template','模板','',0,0,0,'','','','template','',1,'',16,1,1);
INSERT INTO `clt_field` VALUES (48,4,'price','价格','',1,0,0,'defaul','','price','number','array (\n  \'size\' => \'\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'2\',\n  \'default\' => \'0.00\',\n)',0,'',5,1,0);
INSERT INTO `clt_field` VALUES (49,4,'xinghao','型号','',0,0,0,'defaul','','','text','array (\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)',0,'',6,1,0);
INSERT INTO `clt_field` VALUES (50,4,'pics','图组','',0,0,0,'defaul','','pics','images','',0,'',7,1,0);
INSERT INTO `clt_field` VALUES (51,5,'catid','栏目','',1,1,6,'','必须选择一个栏目','','catid','',1,'',1,1,1);
INSERT INTO `clt_field` VALUES (52,5,'title','标题','',1,1,80,'','标题必须为1-80个字符','','title','array (\n  \'thumb\' => \'1\',\n  \'style\' => \'1\',\n  \'size\' => \'55\',\n)',1,'',2,1,1);
INSERT INTO `clt_field` VALUES (53,5,'keywords','关键词','',0,0,80,'','','','text','array (\n  \'size\' => \'55\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)',1,'',3,1,1);
INSERT INTO `clt_field` VALUES (54,5,'description','SEO简介','',0,0,0,'','','','textarea','array (\n  \'fieldtype\' => \'mediumtext\',\n  \'rows\' => \'4\',\n  \'cols\' => \'55\',\n  \'default\' => \'\',\n)',1,'',4,1,1);
INSERT INTO `clt_field` VALUES (55,5,'content','内容','',0,0,0,'defaul','','content','editor','array (\n  \'edittype\' => \'layedit\',\n)',1,'',9,1,1);
INSERT INTO `clt_field` VALUES (56,5,'createtime','发布时间','',1,0,0,'date','','','datetime','',1,'',10,1,1);
INSERT INTO `clt_field` VALUES (57,5,'status','状态','',0,0,0,'','','','radio','array (\n  \'options\' => \'发布|1\r\n定时发布|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'75\',\n  \'default\' => \'1\',\n)',1,'',11,1,1);
INSERT INTO `clt_field` VALUES (58,5,'recommend','允许评论','',0,0,1,'','','','radio','array (\n  \'options\' => \'允许评论|1\r\n不允许评论|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'\',\n  \'default\' => \'\',\n)',1,'',12,0,0);
INSERT INTO `clt_field` VALUES (59,5,'readpoint','阅读收费','',0,0,5,'','','','number','array (\n  \'size\' => \'5\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'0\',\n)',1,'',13,0,0);
INSERT INTO `clt_field` VALUES (60,5,'hits','点击次数','',0,0,8,'','','','number','array (\n  \'size\' => \'10\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'0\',\n)',1,'',14,0,0);
INSERT INTO `clt_field` VALUES (61,5,'readgroup','访问权限','',0,0,0,'','','','groupid','array (\n  \'inputtype\' => \'checkbox\',\n  \'fieldtype\' => \'tinyint\',\n  \'labelwidth\' => \'85\',\n  \'default\' => \'\',\n)',1,'',15,0,1);
INSERT INTO `clt_field` VALUES (62,5,'posid','推荐位','',0,0,0,'','','','posid','',1,'',16,1,1);
INSERT INTO `clt_field` VALUES (63,5,'template','模板','',0,0,0,'','','','template','',1,'',17,1,1);
INSERT INTO `clt_field` VALUES (64,5,'file','上传文件','',0,0,0,'defaul','','file','file','array (\n  \'upload_maxsize\' => \'2\',\n  \'upload_allowext\' => \'zip,rar,doc,ppt\',\n)',0,'',5,1,0);
INSERT INTO `clt_field` VALUES (65,5,'ext','文档类型','',0,0,0,'defaul','','ext','text','array (\n  \'default\' => \'zip\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)',0,'',6,1,0);
INSERT INTO `clt_field` VALUES (66,5,'size','文档大小','',0,0,0,'defaul','','size','text','array (\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)',0,'',7,1,0);
INSERT INTO `clt_field` VALUES (67,5,'downs','下载次数','',0,0,0,'defaul','','','number','array (\n  \'size\' => \'\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'\',\n)',0,'',8,1,0);
INSERT INTO `clt_field` VALUES (68,6,'title','标题','',1,1,80,'','标题必须为1-80个字符','','title','array (\n  \'thumb\' => \'1\',\n  \'style\' => \'1\',\n  \'size\' => \'55\',\n)',1,'',2,1,1);
INSERT INTO `clt_field` VALUES (69,6,'hits','点击次数','',0,0,8,'','','','number','array (\n  \'size\' => \'10\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'0\',\n)',1,'',6,0,0);
INSERT INTO `clt_field` VALUES (70,6,'createtime','发布时间','',1,0,0,'date','','','datetime','',1,'',4,1,1);
INSERT INTO `clt_field` VALUES (71,6,'template','模板','',0,0,0,'','','','template','',1,'',7,1,1);
INSERT INTO `clt_field` VALUES (72,6,'status','状态','',0,0,0,'','','','radio','array (\n  \'options\' => \'发布|1\r\n定时发布|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'75\',\n  \'default\' => \'1\',\n)',1,'',5,1,1);
INSERT INTO `clt_field` VALUES (73,6,'catid','分类','',1,0,0,'defaul','','catid','catid','',0,'',1,1,0);
INSERT INTO `clt_field` VALUES (74,6,'info','简介','',1,0,0,'defaul','','info','editor','array (\n  \'edittype\' => \'layedit\',\n)',0,'',3,1,0);
INSERT INTO `clt_field` VALUES (75,2,'copyfrom','来源','',0,0,0,'defaul','','copyfrom','text','array (\n  \'default\' => \'CLTPHP\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)',0,'',8,1,0);
INSERT INTO `clt_field` VALUES (76,2,'fromlink','来源网址','',0,0,0,'defaul','','fromlink','text','array (\n  \'default\' => \'http://www.cltphp.com/\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)',0,'',9,1,0);
INSERT INTO `clt_field` VALUES (87,2,'address','地址','',1,0,0,'defaul','','address','linkage','',0,'',16,1,0);
--
-- 表的结构 `clt_label`
-- 
DROP TABLE IF EXISTS `clt_label`;
CREATE TABLE `clt_label` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='标签表';

-- 
-- 导出`clt_label`表中的数据 `clt_label`
--
INSERT INTO `clt_label` VALUES (1,'前端');
INSERT INTO `clt_label` VALUES (2,'后端');
INSERT INTO `clt_label` VALUES (3,'服务器');
INSERT INTO `clt_label` VALUES (4,'PHP');
INSERT INTO `clt_label` VALUES (5,'分享');
INSERT INTO `clt_label` VALUES (6,'生活');
--
-- 表的结构 `clt_link`
-- 
DROP TABLE IF EXISTS `clt_link`;
CREATE TABLE `clt_link` (
  `link_id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '链接名称',
  `url` varchar(200) NOT NULL COMMENT '链接URL',
  `type_id` tinyint(4) DEFAULT NULL COMMENT '所属栏目ID',
  `qq` varchar(20) NOT NULL COMMENT '联系QQ',
  `sort` int(5) NOT NULL DEFAULT '50' COMMENT '排序',
  `addtime` int(11) NOT NULL COMMENT '添加时间',
  `open` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0禁用1启用',
  PRIMARY KEY (`link_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- 
-- 导出`clt_link`表中的数据 `clt_link`
--
INSERT INTO `clt_link` VALUES (10,'CLTPHP','http://www.cltphp.com/',0,'1109305987',1,1495183645,1);
INSERT INTO `clt_link` VALUES (8,'CLTPHP内容管理系统','http://www.cltphp.com/',0,'1109305987',2,1484791374,1);
INSERT INTO `clt_link` VALUES (11,'CLTPHP动态','http://www.cltphp.com/news-49.html',0,'',3,1499765975,1);
INSERT INTO `clt_link` VALUES (12,'关于我们','http://cltphp.com/about-8.html',0,'',4,1499766009,1);
INSERT INTO `clt_link` VALUES (13,'CLTPHP相关知识','http://cltphp.com/news-51.html',0,'',5,1499766031,1);
INSERT INTO `clt_link` VALUES (15,'有你有我影视','http://www.ynywo.com/',0,'',6,1501030917,1);
--
-- 表的结构 `clt_message`
-- 
DROP TABLE IF EXISTS `clt_message`;
CREATE TABLE `clt_message` (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT '' COMMENT '留言标题',
  `tel` varchar(15) NOT NULL DEFAULT '' COMMENT '留言电话',
  `addtime` varchar(15) NOT NULL COMMENT '留言时间',
  `open` tinyint(2) NOT NULL DEFAULT '0' COMMENT '1=审核 0=不审核',
  `ip` varchar(50) DEFAULT '' COMMENT '留言者IP',
  `content` longtext NOT NULL COMMENT '留言内容',
  `name` varchar(60) NOT NULL DEFAULT '' COMMENT '用户名',
  `email` varchar(50) NOT NULL COMMENT '留言邮箱',
  PRIMARY KEY (`message_id`)
) ENGINE=MyISAM AUTO_INCREMENT=94 DEFAULT CHARSET=utf8;

-- 
-- 导出`clt_message`表中的数据 `clt_message`
--
INSERT INTO `clt_message` VALUES (28,'关于广告 ','','1502875841',0,'113.16.147.215','我尝试修改Ad  但是要修改的好多  站长大大能出一个不被广告插件屏蔽的版本么 或者文章  ','鸡蛋','406811064@qq.com');
INSERT INTO `clt_message` VALUES (26,'111','','1502855521',0,'119.126.28.3','1111','小程序','ok131325@163.com');
INSERT INTO `clt_message` VALUES (24,'111','','1502854875',0,'119.126.30.139','qwwww','1111','114114114@163.com');
INSERT INTO `clt_message` VALUES (36,'我想问一个问题','','1505361719',0,'114.249.79.136','我想问一下，我们的的产品是完全开源免费的么？会不会分什么商业版或者个人版啊？','裴先生','1058219352@qq.com');
INSERT INTO `clt_message` VALUES (91,'','','1524705386',0,'66.249.79.75','','','');
INSERT INTO `clt_message` VALUES (92,'','','1524727633',0,'66.249.79.71','','','');
INSERT INTO `clt_message` VALUES (93,'34t4r','','1532913883',0,'','etr','ert','ert');
--
-- 表的结构 `clt_module`
-- 
DROP TABLE IF EXISTS `clt_module`;
CREATE TABLE `clt_module` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(200) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `issystem` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `listfields` varchar(255) NOT NULL DEFAULT '',
  `setup` text NOT NULL,
  `listorder` smallint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- 
-- 导出`clt_module`表中的数据 `clt_module`
--
INSERT INTO `clt_module` VALUES (1,'单页模型','page','单页面',1,0,'*','',0,1);
INSERT INTO `clt_module` VALUES (2,'文章模型','article','新闻文章',1,0,'*','',0,1);
INSERT INTO `clt_module` VALUES (3,'图片模型','picture','图片展示',1,0,'*','',0,1);
INSERT INTO `clt_module` VALUES (4,'产品模型','product','产品展示',1,0,'*','',0,1);
INSERT INTO `clt_module` VALUES (5,'下载模型','download','文件下载',1,0,'*','',0,1);
INSERT INTO `clt_module` VALUES (6,'团队模型','team','员工展示',1,0,'*','',0,1);
--
-- 表的结构 `clt_navigation`
-- 
DROP TABLE IF EXISTS `clt_navigation`;
CREATE TABLE `clt_navigation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort` int(5) unsigned DEFAULT '1' COMMENT '排序',
  `navigation` varchar(255) NOT NULL COMMENT '导航栏名字',
  `pid` int(10) unsigned DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `status` tinyint(2) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- 
-- 导出`clt_navigation`表中的数据 `clt_navigation`
--
INSERT INTO `clt_navigation` VALUES (1,0,'网站首页',0,'/',1);
INSERT INTO `clt_navigation` VALUES (2,0,'关于我们',0,'/about',0);
INSERT INTO `clt_navigation` VALUES (3,0,'模板分享',0,'/share',0);
INSERT INTO `clt_navigation` VALUES (4,0,'个人博客模板',3,'/index/Index/share',0);
INSERT INTO `clt_navigation` VALUES (5,0,'技术博客',0,'/study',1);
INSERT INTO `clt_navigation` VALUES (6,50,'个人博客',5,'/study?catid=1',1);
INSERT INTO `clt_navigation` VALUES (7,0,'慢生活',0,'/life',0);
INSERT INTO `clt_navigation` VALUES (8,0,'php',5,'/study?catid=4',1);
INSERT INTO `clt_navigation` VALUES (9,0,'前端',5,'/study?catid=5',1);
INSERT INTO `clt_navigation` VALUES (10,0,'时间轴',0,'/time',1);
INSERT INTO `clt_navigation` VALUES (11,0,'留言',0,'/gbook',1);
INSERT INTO `clt_navigation` VALUES (12,0,'mysql',5,'/study?catid=8',1);
--
-- 表的结构 `clt_order`
-- 
DROP TABLE IF EXISTS `clt_order`;
CREATE TABLE `clt_order` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sn` char(22) NOT NULL DEFAULT '',
  `password` varchar(30) NOT NULL DEFAULT '',
  `module` varchar(20) NOT NULL DEFAULT '',
  `userid` int(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(40) NOT NULL DEFAULT '',
  `price` decimal(10,0) unsigned NOT NULL DEFAULT '0',
  `productlist` mediumtext NOT NULL,
  `note` mediumtext NOT NULL,
  `realname` varchar(40) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `tel` varchar(50) NOT NULL DEFAULT '',
  `mobile` varchar(18) NOT NULL DEFAULT '',
  `fax` varchar(50) NOT NULL DEFAULT '',
  `address` varchar(80) NOT NULL DEFAULT '',
  `zipcode` varchar(10) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL DEFAULT '',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `sn` (`sn`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
--
-- 表的结构 `clt_page`
-- 
DROP TABLE IF EXISTS `clt_page`;
CREATE TABLE `clt_page` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) NOT NULL DEFAULT '',
  `title_style` varchar(225) NOT NULL DEFAULT '',
  `thumb` varchar(225) NOT NULL DEFAULT '',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `userid` int(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(40) NOT NULL DEFAULT '',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

-- 
-- 导出`clt_page`表中的数据 `clt_page`
--
INSERT INTO `clt_page` VALUES (2,'关于我们','color:rgb(95, 184, 120);font-weight:bold;','/uploads/20170904/ea84d4a49e634b253adf11fc4463a1d4.jpg',0,1,0,'',0,1504251653,0,0,'<p style=\"box-sizing: border-box; border: 0px; font-stretch: inherit; font-size: 14px; line-height: 24px; font-family: &#39;Microsoft yahei&#39;, Arial, Tahoma, Verdana; vertical-align: baseline; margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 20px; color: rgb(151, 151, 151); white-space: normal; background-color: rgb(255, 255, 255);\">　<a href=\"http://www.cltphp.com/\" target=\"_blank\" title=\"CLTPHP内容管理系统\" style=\"color: rgb(146, 208, 80); text-decoration: none;\"><span style=\"color: rgb(146, 208, 80);\">CLTPHP内容管理系统</span></a>，包含系统设置，权限管理，模型管理，数据库管理，栏目管理，会员管理，网站功能，模版管理，微信管理等相关模块。基于ThinkPHP5开发，后台采用Layui框架完全自适应，数据交互采用更高效简洁的angularjs实现，。</p><p style=\"box-sizing: border-box; border: 0px; font-stretch: inherit; font-size: 14px; line-height: 24px; font-family: &#39;Microsoft yahei&#39;, Arial, Tahoma, Verdana; vertical-align: baseline; margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 20px; color: rgb(151, 151, 151); white-space: normal; background-color: rgb(255, 255, 255);\">　　<a target=\"_blank\" href=\"http://www.cltphp.com/\" style=\"box-sizing: border-box; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; margin: 0px; padding: 0px; outline: 0px; color: rgb(146, 208, 80); text-decoration: none;\"><span style=\"color: rgb(146, 208, 80);\">CLTPHP</span></a>采用ThinkPHP开发，ThinkPHP5采用全新的架构思想，引入了很多的PHP新特性，优化了核心，减少了依赖，实现了真正的惰性加载。正因为ThinkPHP的这些新特性，从而使得CLTPHP的执行速度成倍提高。</p><p style=\"box-sizing: border-box; border: 0px; font-stretch: inherit; font-size: 14px; line-height: 24px; font-family: &#39;Microsoft yahei&#39;, Arial, Tahoma, Verdana; vertical-align: baseline; margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 20px; color: rgb(151, 151, 151); white-space: normal; background-color: rgb(255, 255, 255);\">　　UI方面，<a target=\"_blank\" href=\"http://www.cltphp.com/\" style=\"box-sizing: border-box; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; margin: 0px; padding: 0px; outline: 0px; color: rgb(146, 208, 80); text-decoration: none;\"><span style=\"color: rgb(146, 208, 80);\">CLTPHP</span></a>采用了最受欢迎的Layui，Layui用于开发响应式布局、移动设备优先的 WEB 项目。简洁、直观、强悍的前端开发框架，让CLTPHP的后台界面更加美观，开发更迅速、简单。</p>');
INSERT INTO `clt_page` VALUES (8,'联系我们','color:;font-weight:normal;','',0,1,0,'',0,1499765407,0,0,'<p>您的支持是我们一往无前的无限动力，非常荣幸在<a target=\"_self\" href=\"http://www.cltphp.com/\">CLTPHP</a>成长的道路上有您的陪伴！！！</p>');
INSERT INTO `clt_page` VALUES (18,'服务器','color:;font-weight:bold;','/uploads/20180426/018ec4f40c6de1b648ea1edd64b81ac1.jpg',0,0,0,'',0,1524724561,0,0,'<p>dadsgajksdghafsdjkghfdgk</p>');
INSERT INTO `clt_page` VALUES (19,'和豆腐干','color:;font-weight:normal;','',0,1,0,'',0,1524725817,0,0,'<p>ijrtgfsdklj</p><p>大厦科技通过官方</p><p>eklwa</p>');
--
-- 表的结构 `clt_picture`
-- 
DROP TABLE IF EXISTS `clt_picture`;
CREATE TABLE `clt_picture` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userid` int(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(40) NOT NULL DEFAULT '',
  `title` varchar(80) NOT NULL DEFAULT '',
  `keywords` varchar(120) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `content` text NOT NULL,
  `template` varchar(40) NOT NULL DEFAULT '',
  `posid` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `recommend` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `readgroup` varchar(100) NOT NULL DEFAULT '',
  `readpoint` smallint(5) NOT NULL DEFAULT '0',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0',
  `pic` varchar(80) NOT NULL DEFAULT '',
  `group` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `status` (`id`,`status`,`listorder`),
  KEY `catid` (`id`,`catid`,`status`),
  KEY `listorder` (`id`,`catid`,`status`,`listorder`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- 
-- 导出`clt_picture`表中的数据 `clt_picture`
--
INSERT INTO `clt_picture` VALUES (1,4,1,'admin','模型列表','模型列表','展示网站内容模型，模型是CLTPHP的核心之一。','<p>展示网站内容模型，模型是CLTPHP的核心之一。</p>','0',0,1,0,'',0,1,0,1499761915,1505721389,'/uploads/20170904/f5a33a284f8036c3a086f2829f98599b.png','1');
INSERT INTO `clt_picture` VALUES (2,4,1,'admin','添加模型','添加模型','添加模型','<p>您可以通过后台轻松创建新的新的模型，不拘泥于传统。</p>','0',0,1,0,'',0,2,0,1499762188,1504518993,'/uploads/20170904/5e70dff585f72905525eb5bc3bbe113b.png','1');
INSERT INTO `clt_picture` VALUES (3,4,1,'admin','模型字段','模型字段','模型字段','<p>您可以任意构建自己的模型字段，从而达到网站内容的高效编辑。</p>','0',0,1,0,'',0,3,0,1499762270,1504591448,'/uploads/20170905/9e359f27c26c2346da67ea2968fd1d1d.png','1');
INSERT INTO `clt_picture` VALUES (4,4,1,'admin','添加字段','添加字段','添加字段','<p>CLTPHP提供了丰富的字段类型，当然您可以扩展出更多的类型。</p>','0',0,1,0,'',0,4,0,1499762323,1504591525,'/uploads/20170905/fb86b98efd3b00e635e5146d04e150c8.png','1');
INSERT INTO `clt_picture` VALUES (5,4,1,'admin','栏目列表','栏目列表','栏目列表','<p>栏目编辑，可以让后台编辑明确，也可以使的前台展示更加分明。</p>','0',0,1,0,'',0,5,0,1499762369,1504591595,'/uploads/20170905/ec9116abe94198b39a8ed1f95cb558ab.png','2');
INSERT INTO `clt_picture` VALUES (6,4,1,'admin','添加栏目','添加栏目','添加栏目','<p>添加栏目时绑定模型，以适应网站内容的多样性。</p>','0',0,1,0,'',0,6,0,1499762446,1504591669,'/uploads/20170905/7412cea085751aef38bbc21331f125b4.png','2');
INSERT INTO `clt_picture` VALUES (7,4,1,'admin','内容列表','内容列表','内容列表','<p>点击栏目名称进入对应的内容列表页，简洁而高效。</p>','0',0,1,0,'',0,7,0,1499762523,1504591774,'/uploads/20170905/33848b02cedf16b4e348f8d99a5a04c3.png','3');
INSERT INTO `clt_picture` VALUES (8,4,1,'admin','添加内容','添加内容','添加内容','<p>不同栏目的内容编辑页是根据及绑定的模型智能生成的。</p>','0',0,1,0,'',0,8,0,1499762754,1504591857,'/uploads/20170905/314dbab2ca1d6c4d4ce5bfffd0f4a9d2.png','3');
--
-- 表的结构 `clt_plugin`
-- 
DROP TABLE IF EXISTS `clt_plugin`;
CREATE TABLE `clt_plugin` (
  `code` varchar(13) DEFAULT NULL COMMENT '插件编码',
  `name` varchar(55) DEFAULT NULL COMMENT '中文名字',
  `version` varchar(255) DEFAULT NULL COMMENT '插件的版本',
  `author` varchar(30) DEFAULT NULL COMMENT '插件作者',
  `config` text COMMENT '配置信息',
  `config_value` text COMMENT '配置值信息',
  `desc` varchar(255) DEFAULT NULL COMMENT '插件描述',
  `status` tinyint(1) DEFAULT '0' COMMENT '是否启用',
  `type` varchar(50) DEFAULT NULL COMMENT '插件类型 payment支付 login 登陆 shipping物流',
  `icon` varchar(255) DEFAULT NULL COMMENT '图标',
  `bank_code` text COMMENT '网银配置信息',
  `scene` tinyint(1) DEFAULT '0' COMMENT '使用场景 0 PC+手机 1 手机 2 PC'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- 导出`clt_plugin`表中的数据 `clt_plugin`
--
INSERT INTO `clt_plugin` VALUES ('qq','QQ登陆','1.0','褫憷','a:2:{i:0;a:4:{s:4:\"name\";s:6:\"app_id\";s:5:\"label\";s:6:\"app_id\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}i:1;a:4:{s:4:\"name\";s:10:\"app_secret\";s:5:\"label\";s:10:\"app_secret\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}}','0','QQ登陆插件 ',1,'login','logo.png','N;',0);
--
-- 表的结构 `clt_posid`
-- 
DROP TABLE IF EXISTS `clt_posid`;
CREATE TABLE `clt_posid` (
  `id` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL DEFAULT '',
  `listorder` tinyint(2) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- 
-- 导出`clt_posid`表中的数据 `clt_posid`
--
INSERT INTO `clt_posid` VALUES (1,'首页推荐',0);
INSERT INTO `clt_posid` VALUES (2,'当前分类推荐',0);
--
-- 表的结构 `clt_product`
-- 
DROP TABLE IF EXISTS `clt_product`;
CREATE TABLE `clt_product` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userid` int(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(40) NOT NULL DEFAULT '',
  `title` varchar(120) NOT NULL DEFAULT '',
  `title_style` varchar(225) NOT NULL DEFAULT '',
  `thumb` varchar(225) NOT NULL DEFAULT '',
  `keywords` varchar(120) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `content` text NOT NULL,
  `template` varchar(40) NOT NULL DEFAULT '',
  `posid` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `recommend` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `readgroup` varchar(100) NOT NULL DEFAULT '',
  `readpoint` smallint(5) NOT NULL DEFAULT '0',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0',
  `price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `xinghao` varchar(255) NOT NULL DEFAULT '',
  `pics` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`id`,`status`,`listorder`),
  KEY `catid` (`id`,`catid`,`status`),
  KEY `listorder` (`id`,`catid`,`status`,`listorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
--
-- 表的结构 `clt_region`
-- 
DROP TABLE IF EXISTS `clt_region`;
CREATE TABLE `clt_region` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `pid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `name` varchar(120) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '2',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3726 DEFAULT CHARSET=utf8;

-- 
-- 导出`clt_region`表中的数据 `clt_region`
--
INSERT INTO `clt_region` VALUES (1,0,'中国',0);
INSERT INTO `clt_region` VALUES (2,1,'北京',1);
INSERT INTO `clt_region` VALUES (3,1,'安徽',1);
INSERT INTO `clt_region` VALUES (4,1,'福建',1);
INSERT INTO `clt_region` VALUES (5,1,'甘肃',1);
INSERT INTO `clt_region` VALUES (6,1,'广东',1);
INSERT INTO `clt_region` VALUES (7,1,'广西',1);
INSERT INTO `clt_region` VALUES (8,1,'贵州',1);
INSERT INTO `clt_region` VALUES (9,1,'海南',1);
INSERT INTO `clt_region` VALUES (10,1,'河北',1);
INSERT INTO `clt_region` VALUES (11,1,'河南',1);
INSERT INTO `clt_region` VALUES (12,1,'黑龙江',1);
INSERT INTO `clt_region` VALUES (13,1,'湖北',1);
INSERT INTO `clt_region` VALUES (14,1,'湖南',1);
INSERT INTO `clt_region` VALUES (15,1,'吉林',1);
INSERT INTO `clt_region` VALUES (16,1,'江苏',1);
INSERT INTO `clt_region` VALUES (17,1,'江西',1);
INSERT INTO `clt_region` VALUES (18,1,'辽宁',1);
INSERT INTO `clt_region` VALUES (19,1,'内蒙古',1);
INSERT INTO `clt_region` VALUES (20,1,'宁夏',1);
INSERT INTO `clt_region` VALUES (21,1,'青海',1);
INSERT INTO `clt_region` VALUES (22,1,'山东',1);
INSERT INTO `clt_region` VALUES (23,1,'山西',1);
INSERT INTO `clt_region` VALUES (24,1,'陕西',1);
INSERT INTO `clt_region` VALUES (25,1,'上海',1);
INSERT INTO `clt_region` VALUES (26,1,'四川',1);
INSERT INTO `clt_region` VALUES (27,1,'天津',1);
INSERT INTO `clt_region` VALUES (28,1,'西藏',1);
INSERT INTO `clt_region` VALUES (29,1,'新疆',1);
INSERT INTO `clt_region` VALUES (30,1,'云南',1);
INSERT INTO `clt_region` VALUES (31,1,'浙江',1);
INSERT INTO `clt_region` VALUES (32,1,'重庆',1);
INSERT INTO `clt_region` VALUES (33,1,'香港',1);
INSERT INTO `clt_region` VALUES (34,1,'澳门',1);
INSERT INTO `clt_region` VALUES (35,1,'台湾',1);
INSERT INTO `clt_region` VALUES (36,3,'安庆',2);
INSERT INTO `clt_region` VALUES (37,3,'蚌埠',2);
INSERT INTO `clt_region` VALUES (38,3,'巢湖',2);
INSERT INTO `clt_region` VALUES (39,3,'池州',2);
INSERT INTO `clt_region` VALUES (40,3,'滁州',2);
INSERT INTO `clt_region` VALUES (41,3,'阜阳',2);
INSERT INTO `clt_region` VALUES (42,3,'淮北',2);
INSERT INTO `clt_region` VALUES (43,3,'淮南',2);
INSERT INTO `clt_region` VALUES (44,3,'黄山',2);
INSERT INTO `clt_region` VALUES (45,3,'六安',2);
INSERT INTO `clt_region` VALUES (46,3,'马鞍山',2);
INSERT INTO `clt_region` VALUES (47,3,'宿州',2);
INSERT INTO `clt_region` VALUES (48,3,'铜陵',2);
INSERT INTO `clt_region` VALUES (49,3,'芜湖',2);
INSERT INTO `clt_region` VALUES (50,3,'宣城',2);
INSERT INTO `clt_region` VALUES (51,3,'亳州',2);
INSERT INTO `clt_region` VALUES (52,2,'北京',2);
INSERT INTO `clt_region` VALUES (53,4,'福州',2);
INSERT INTO `clt_region` VALUES (54,4,'龙岩',2);
INSERT INTO `clt_region` VALUES (55,4,'南平',2);
INSERT INTO `clt_region` VALUES (56,4,'宁德',2);
INSERT INTO `clt_region` VALUES (57,4,'莆田',2);
INSERT INTO `clt_region` VALUES (58,4,'泉州',2);
INSERT INTO `clt_region` VALUES (59,4,'三明',2);
INSERT INTO `clt_region` VALUES (60,4,'厦门',2);
INSERT INTO `clt_region` VALUES (61,4,'漳州',2);
INSERT INTO `clt_region` VALUES (62,5,'兰州',2);
INSERT INTO `clt_region` VALUES (63,5,'白银',2);
INSERT INTO `clt_region` VALUES (64,5,'定西',2);
INSERT INTO `clt_region` VALUES (65,5,'甘南',2);
INSERT INTO `clt_region` VALUES (66,5,'嘉峪关',2);
INSERT INTO `clt_region` VALUES (67,5,'金昌',2);
INSERT INTO `clt_region` VALUES (68,5,'酒泉',2);
INSERT INTO `clt_region` VALUES (69,5,'临夏',2);
INSERT INTO `clt_region` VALUES (70,5,'陇南',2);
INSERT INTO `clt_region` VALUES (71,5,'平凉',2);
INSERT INTO `clt_region` VALUES (72,5,'庆阳',2);
INSERT INTO `clt_region` VALUES (73,5,'天水',2);
INSERT INTO `clt_region` VALUES (74,5,'武威',2);
INSERT INTO `clt_region` VALUES (75,5,'张掖',2);
INSERT INTO `clt_region` VALUES (76,6,'广州',2);
INSERT INTO `clt_region` VALUES (77,6,'深圳',2);
INSERT INTO `clt_region` VALUES (78,6,'潮州',2);
INSERT INTO `clt_region` VALUES (79,6,'东莞',2);
INSERT INTO `clt_region` VALUES (80,6,'佛山',2);
INSERT INTO `clt_region` VALUES (81,6,'河源',2);
INSERT INTO `clt_region` VALUES (82,6,'惠州',2);
INSERT INTO `clt_region` VALUES (83,6,'江门',2);
INSERT INTO `clt_region` VALUES (84,6,'揭阳',2);
INSERT INTO `clt_region` VALUES (85,6,'茂名',2);
INSERT INTO `clt_region` VALUES (86,6,'梅州',2);
INSERT INTO `clt_region` VALUES (87,6,'清远',2);
INSERT INTO `clt_region` VALUES (88,6,'汕头',2);
INSERT INTO `clt_region` VALUES (89,6,'汕尾',2);
INSERT INTO `clt_region` VALUES (90,6,'韶关',2);
INSERT INTO `clt_region` VALUES (91,6,'阳江',2);
INSERT INTO `clt_region` VALUES (92,6,'云浮',2);
INSERT INTO `clt_region` VALUES (93,6,'湛江',2);
INSERT INTO `clt_region` VALUES (94,6,'肇庆',2);
INSERT INTO `clt_region` VALUES (95,6,'中山',2);
INSERT INTO `clt_region` VALUES (96,6,'珠海',2);
INSERT INTO `clt_region` VALUES (97,7,'南宁',2);
INSERT INTO `clt_region` VALUES (98,7,'桂林',2);
INSERT INTO `clt_region` VALUES (99,7,'百色',2);
INSERT INTO `clt_region` VALUES (100,7,'北海',2);
INSERT INTO `clt_region` VALUES (101,7,'崇左',2);
INSERT INTO `clt_region` VALUES (102,7,'防城港',2);
INSERT INTO `clt_region` VALUES (103,7,'贵港',2);
INSERT INTO `clt_region` VALUES (104,7,'河池',2);
INSERT INTO `clt_region` VALUES (105,7,'贺州',2);
INSERT INTO `clt_region` VALUES (106,7,'来宾',2);
INSERT INTO `clt_region` VALUES (107,7,'柳州',2);
INSERT INTO `clt_region` VALUES (108,7,'钦州',2);
INSERT INTO `clt_region` VALUES (109,7,'梧州',2);
INSERT INTO `clt_region` VALUES (110,7,'玉林',2);
INSERT INTO `clt_region` VALUES (111,8,'贵阳',2);
INSERT INTO `clt_region` VALUES (112,8,'安顺',2);
INSERT INTO `clt_region` VALUES (113,8,'毕节',2);
INSERT INTO `clt_region` VALUES (114,8,'六盘水',2);
INSERT INTO `clt_region` VALUES (115,8,'黔东南',2);
INSERT INTO `clt_region` VALUES (116,8,'黔南',2);
INSERT INTO `clt_region` VALUES (117,8,'黔西南',2);
INSERT INTO `clt_region` VALUES (118,8,'铜仁',2);
INSERT INTO `clt_region` VALUES (119,8,'遵义',2);
INSERT INTO `clt_region` VALUES (120,9,'海口',2);
INSERT INTO `clt_region` VALUES (121,9,'三亚',2);
INSERT INTO `clt_region` VALUES (122,9,'白沙',2);
INSERT INTO `clt_region` VALUES (123,9,'保亭',2);
INSERT INTO `clt_region` VALUES (124,9,'昌江',2);
INSERT INTO `clt_region` VALUES (125,9,'澄迈县',2);
INSERT INTO `clt_region` VALUES (126,9,'定安县',2);
INSERT INTO `clt_region` VALUES (127,9,'东方',2);
INSERT INTO `clt_region` VALUES (128,9,'乐东',2);
INSERT INTO `clt_region` VALUES (129,9,'临高县',2);
INSERT INTO `clt_region` VALUES (130,9,'陵水',2);
INSERT INTO `clt_region` VALUES (131,9,'琼海',2);
INSERT INTO `clt_region` VALUES (132,9,'琼中',2);
INSERT INTO `clt_region` VALUES (133,9,'屯昌县',2);
INSERT INTO `clt_region` VALUES (134,9,'万宁',2);
INSERT INTO `clt_region` VALUES (135,9,'文昌',2);
INSERT INTO `clt_region` VALUES (136,9,'五指山',2);
INSERT INTO `clt_region` VALUES (137,9,'儋州',2);
INSERT INTO `clt_region` VALUES (138,10,'石家庄',2);
INSERT INTO `clt_region` VALUES (139,10,'保定',2);
INSERT INTO `clt_region` VALUES (140,10,'沧州',2);
INSERT INTO `clt_region` VALUES (141,10,'承德',2);
INSERT INTO `clt_region` VALUES (142,10,'邯郸',2);
INSERT INTO `clt_region` VALUES (143,10,'衡水',2);
INSERT INTO `clt_region` VALUES (144,10,'廊坊',2);
INSERT INTO `clt_region` VALUES (145,10,'秦皇岛',2);
INSERT INTO `clt_region` VALUES (146,10,'唐山',2);
INSERT INTO `clt_region` VALUES (147,10,'邢台',2);
INSERT INTO `clt_region` VALUES (148,10,'张家口',2);
INSERT INTO `clt_region` VALUES (149,11,'郑州',2);
INSERT INTO `clt_region` VALUES (150,11,'洛阳',2);
INSERT INTO `clt_region` VALUES (151,11,'开封',2);
INSERT INTO `clt_region` VALUES (152,11,'安阳',2);
INSERT INTO `clt_region` VALUES (153,11,'鹤壁',2);
INSERT INTO `clt_region` VALUES (154,11,'济源',2);
INSERT INTO `clt_region` VALUES (155,11,'焦作',2);
INSERT INTO `clt_region` VALUES (156,11,'南阳',2);
INSERT INTO `clt_region` VALUES (157,11,'平顶山',2);
INSERT INTO `clt_region` VALUES (158,11,'三门峡',2);
INSERT INTO `clt_region` VALUES (159,11,'商丘',2);
INSERT INTO `clt_region` VALUES (160,11,'新乡',2);
INSERT INTO `clt_region` VALUES (161,11,'信阳',2);
INSERT INTO `clt_region` VALUES (162,11,'许昌',2);
INSERT INTO `clt_region` VALUES (163,11,'周口',2);
INSERT INTO `clt_region` VALUES (164,11,'驻马店',2);
INSERT INTO `clt_region` VALUES (165,11,'漯河',2);
INSERT INTO `clt_region` VALUES (166,11,'濮阳',2);
INSERT INTO `clt_region` VALUES (167,12,'哈尔滨',2);
INSERT INTO `clt_region` VALUES (168,12,'大庆',2);
INSERT INTO `clt_region` VALUES (169,12,'大兴安岭',2);
INSERT INTO `clt_region` VALUES (170,12,'鹤岗',2);
INSERT INTO `clt_region` VALUES (171,12,'黑河',2);
INSERT INTO `clt_region` VALUES (172,12,'鸡西',2);
INSERT INTO `clt_region` VALUES (173,12,'佳木斯',2);
INSERT INTO `clt_region` VALUES (174,12,'牡丹江',2);
INSERT INTO `clt_region` VALUES (175,12,'七台河',2);
INSERT INTO `clt_region` VALUES (176,12,'齐齐哈尔',2);
INSERT INTO `clt_region` VALUES (177,12,'双鸭山',2);
INSERT INTO `clt_region` VALUES (178,12,'绥化',2);
INSERT INTO `clt_region` VALUES (179,12,'伊春',2);
INSERT INTO `clt_region` VALUES (180,13,'武汉',2);
INSERT INTO `clt_region` VALUES (181,13,'仙桃',2);
INSERT INTO `clt_region` VALUES (182,13,'鄂州',2);
INSERT INTO `clt_region` VALUES (183,13,'黄冈',2);
INSERT INTO `clt_region` VALUES (184,13,'黄石',2);
INSERT INTO `clt_region` VALUES (185,13,'荆门',2);
INSERT INTO `clt_region` VALUES (186,13,'荆州',2);
INSERT INTO `clt_region` VALUES (187,13,'潜江',2);
INSERT INTO `clt_region` VALUES (188,13,'神农架林区',2);
INSERT INTO `clt_region` VALUES (189,13,'十堰',2);
INSERT INTO `clt_region` VALUES (190,13,'随州',2);
INSERT INTO `clt_region` VALUES (191,13,'天门',2);
INSERT INTO `clt_region` VALUES (192,13,'咸宁',2);
INSERT INTO `clt_region` VALUES (193,13,'襄樊',2);
INSERT INTO `clt_region` VALUES (194,13,'孝感',2);
INSERT INTO `clt_region` VALUES (195,13,'宜昌',2);
INSERT INTO `clt_region` VALUES (196,13,'恩施',2);
INSERT INTO `clt_region` VALUES (197,14,'长沙',2);
INSERT INTO `clt_region` VALUES (198,14,'张家界',2);
INSERT INTO `clt_region` VALUES (199,14,'常德',2);
INSERT INTO `clt_region` VALUES (200,14,'郴州',2);
INSERT INTO `clt_region` VALUES (201,14,'衡阳',2);
INSERT INTO `clt_region` VALUES (202,14,'怀化',2);
INSERT INTO `clt_region` VALUES (203,14,'娄底',2);
INSERT INTO `clt_region` VALUES (204,14,'邵阳',2);
INSERT INTO `clt_region` VALUES (205,14,'湘潭',2);
INSERT INTO `clt_region` VALUES (206,14,'湘西',2);
INSERT INTO `clt_region` VALUES (207,14,'益阳',2);
INSERT INTO `clt_region` VALUES (208,14,'永州',2);
INSERT INTO `clt_region` VALUES (209,14,'岳阳',2);
INSERT INTO `clt_region` VALUES (210,14,'株洲',2);
INSERT INTO `clt_region` VALUES (211,15,'长春',2);
INSERT INTO `clt_region` VALUES (212,15,'吉林',2);
INSERT INTO `clt_region` VALUES (213,15,'白城',2);
INSERT INTO `clt_region` VALUES (214,15,'白山',2);
INSERT INTO `clt_region` VALUES (215,15,'辽源',2);
INSERT INTO `clt_region` VALUES (216,15,'四平',2);
INSERT INTO `clt_region` VALUES (217,15,'松原',2);
INSERT INTO `clt_region` VALUES (218,15,'通化',2);
INSERT INTO `clt_region` VALUES (219,15,'延边',2);
INSERT INTO `clt_region` VALUES (220,16,'南京',2);
INSERT INTO `clt_region` VALUES (221,16,'苏州',2);
INSERT INTO `clt_region` VALUES (222,16,'无锡',2);
INSERT INTO `clt_region` VALUES (223,16,'常州',2);
INSERT INTO `clt_region` VALUES (224,16,'淮安',2);
INSERT INTO `clt_region` VALUES (225,16,'连云港',2);
INSERT INTO `clt_region` VALUES (226,16,'南通',2);
INSERT INTO `clt_region` VALUES (227,16,'宿迁',2);
INSERT INTO `clt_region` VALUES (228,16,'泰州',2);
INSERT INTO `clt_region` VALUES (229,16,'徐州',2);
INSERT INTO `clt_region` VALUES (230,16,'盐城',2);
INSERT INTO `clt_region` VALUES (231,16,'扬州',2);
INSERT INTO `clt_region` VALUES (232,16,'镇江',2);
INSERT INTO `clt_region` VALUES (233,17,'南昌',2);
INSERT INTO `clt_region` VALUES (234,17,'抚州',2);
INSERT INTO `clt_region` VALUES (235,17,'赣州',2);
INSERT INTO `clt_region` VALUES (236,17,'吉安',2);
INSERT INTO `clt_region` VALUES (237,17,'景德镇',2);
INSERT INTO `clt_region` VALUES (238,17,'九江',2);
INSERT INTO `clt_region` VALUES (239,17,'萍乡',2);
INSERT INTO `clt_region` VALUES (240,17,'上饶',2);
INSERT INTO `clt_region` VALUES (241,17,'新余',2);
INSERT INTO `clt_region` VALUES (242,17,'宜春',2);
INSERT INTO `clt_region` VALUES (243,17,'鹰潭',2);
INSERT INTO `clt_region` VALUES (244,18,'沈阳',2);
INSERT INTO `clt_region` VALUES (245,18,'大连',2);
INSERT INTO `clt_region` VALUES (246,18,'鞍山',2);
INSERT INTO `clt_region` VALUES (247,18,'本溪',2);
INSERT INTO `clt_region` VALUES (248,18,'朝阳',2);
INSERT INTO `clt_region` VALUES (249,18,'丹东',2);
INSERT INTO `clt_region` VALUES (250,18,'抚顺',2);
INSERT INTO `clt_region` VALUES (251,18,'阜新',2);
INSERT INTO `clt_region` VALUES (252,18,'葫芦岛',2);
INSERT INTO `clt_region` VALUES (253,18,'锦州',2);
INSERT INTO `clt_region` VALUES (254,18,'辽阳',2);
INSERT INTO `clt_region` VALUES (255,18,'盘锦',2);
INSERT INTO `clt_region` VALUES (256,18,'铁岭',2);
INSERT INTO `clt_region` VALUES (257,18,'营口',2);
INSERT INTO `clt_region` VALUES (258,19,'呼和浩特',2);
INSERT INTO `clt_region` VALUES (259,19,'阿拉善盟',2);
INSERT INTO `clt_region` VALUES (260,19,'巴彦淖尔盟',2);
INSERT INTO `clt_region` VALUES (261,19,'包头',2);
INSERT INTO `clt_region` VALUES (262,19,'赤峰',2);
INSERT INTO `clt_region` VALUES (263,19,'鄂尔多斯',2);
INSERT INTO `clt_region` VALUES (264,19,'呼伦贝尔',2);
INSERT INTO `clt_region` VALUES (265,19,'通辽',2);
INSERT INTO `clt_region` VALUES (266,19,'乌海',2);
INSERT INTO `clt_region` VALUES (267,19,'乌兰察布市',2);
INSERT INTO `clt_region` VALUES (268,19,'锡林郭勒盟',2);
INSERT INTO `clt_region` VALUES (269,19,'兴安盟',2);
INSERT INTO `clt_region` VALUES (270,20,'银川',2);
INSERT INTO `clt_region` VALUES (271,20,'固原',2);
INSERT INTO `clt_region` VALUES (272,20,'石嘴山',2);
INSERT INTO `clt_region` VALUES (273,20,'吴忠',2);
INSERT INTO `clt_region` VALUES (274,20,'中卫',2);
INSERT INTO `clt_region` VALUES (275,21,'西宁',2);
INSERT INTO `clt_region` VALUES (276,21,'果洛',2);
INSERT INTO `clt_region` VALUES (277,21,'海北',2);
INSERT INTO `clt_region` VALUES (278,21,'海东',2);
INSERT INTO `clt_region` VALUES (279,21,'海南',2);
INSERT INTO `clt_region` VALUES (280,21,'海西',2);
INSERT INTO `clt_region` VALUES (281,21,'黄南',2);
INSERT INTO `clt_region` VALUES (282,21,'玉树',2);
INSERT INTO `clt_region` VALUES (283,22,'济南',2);
INSERT INTO `clt_region` VALUES (284,22,'青岛',2);
INSERT INTO `clt_region` VALUES (285,22,'滨州',2);
INSERT INTO `clt_region` VALUES (286,22,'德州',2);
INSERT INTO `clt_region` VALUES (287,22,'东营',2);
INSERT INTO `clt_region` VALUES (288,22,'菏泽',2);
INSERT INTO `clt_region` VALUES (289,22,'济宁',2);
INSERT INTO `clt_region` VALUES (290,22,'莱芜',2);
INSERT INTO `clt_region` VALUES (291,22,'聊城',2);
INSERT INTO `clt_region` VALUES (292,22,'临沂',2);
INSERT INTO `clt_region` VALUES (293,22,'日照',2);
INSERT INTO `clt_region` VALUES (294,22,'泰安',2);
INSERT INTO `clt_region` VALUES (295,22,'威海',2);
INSERT INTO `clt_region` VALUES (296,22,'潍坊',2);
INSERT INTO `clt_region` VALUES (297,22,'烟台',2);
INSERT INTO `clt_region` VALUES (298,22,'枣庄',2);
INSERT INTO `clt_region` VALUES (299,22,'淄博',2);
INSERT INTO `clt_region` VALUES (300,23,'太原',2);
INSERT INTO `clt_region` VALUES (301,23,'长治',2);
INSERT INTO `clt_region` VALUES (302,23,'大同',2);
INSERT INTO `clt_region` VALUES (303,23,'晋城',2);
INSERT INTO `clt_region` VALUES (304,23,'晋中',2);
INSERT INTO `clt_region` VALUES (305,23,'临汾',2);
INSERT INTO `clt_region` VALUES (306,23,'吕梁',2);
INSERT INTO `clt_region` VALUES (307,23,'朔州',2);
INSERT INTO `clt_region` VALUES (308,23,'忻州',2);
INSERT INTO `clt_region` VALUES (309,23,'阳泉',2);
INSERT INTO `clt_region` VALUES (310,23,'运城',2);
INSERT INTO `clt_region` VALUES (311,24,'西安',2);
INSERT INTO `clt_region` VALUES (312,24,'安康',2);
INSERT INTO `clt_region` VALUES (313,24,'宝鸡',2);
INSERT INTO `clt_region` VALUES (314,24,'汉中',2);
INSERT INTO `clt_region` VALUES (315,24,'商洛',2);
INSERT INTO `clt_region` VALUES (316,24,'铜川',2);
INSERT INTO `clt_region` VALUES (317,24,'渭南',2);
INSERT INTO `clt_region` VALUES (318,24,'咸阳',2);
INSERT INTO `clt_region` VALUES (319,24,'延安',2);
INSERT INTO `clt_region` VALUES (320,24,'榆林',2);
INSERT INTO `clt_region` VALUES (321,25,'上海',2);
INSERT INTO `clt_region` VALUES (322,26,'成都',2);
INSERT INTO `clt_region` VALUES (323,26,'绵阳',2);
INSERT INTO `clt_region` VALUES (324,26,'阿坝',2);
INSERT INTO `clt_region` VALUES (325,26,'巴中',2);
INSERT INTO `clt_region` VALUES (326,26,'达州',2);
INSERT INTO `clt_region` VALUES (327,26,'德阳',2);
INSERT INTO `clt_region` VALUES (328,26,'甘孜',2);
INSERT INTO `clt_region` VALUES (329,26,'广安',2);
INSERT INTO `clt_region` VALUES (330,26,'广元',2);
INSERT INTO `clt_region` VALUES (331,26,'乐山',2);
INSERT INTO `clt_region` VALUES (332,26,'凉山',2);
INSERT INTO `clt_region` VALUES (333,26,'眉山',2);
INSERT INTO `clt_region` VALUES (334,26,'南充',2);
INSERT INTO `clt_region` VALUES (335,26,'内江',2);
INSERT INTO `clt_region` VALUES (336,26,'攀枝花',2);
INSERT INTO `clt_region` VALUES (337,26,'遂宁',2);
INSERT INTO `clt_region` VALUES (338,26,'雅安',2);
INSERT INTO `clt_region` VALUES (339,26,'宜宾',2);
INSERT INTO `clt_region` VALUES (340,26,'资阳',2);
INSERT INTO `clt_region` VALUES (341,26,'自贡',2);
INSERT INTO `clt_region` VALUES (342,26,'泸州',2);
INSERT INTO `clt_region` VALUES (343,27,'天津',2);
INSERT INTO `clt_region` VALUES (344,28,'拉萨',2);
INSERT INTO `clt_region` VALUES (345,28,'阿里',2);
INSERT INTO `clt_region` VALUES (346,28,'昌都',2);
INSERT INTO `clt_region` VALUES (347,28,'林芝',2);
INSERT INTO `clt_region` VALUES (348,28,'那曲',2);
INSERT INTO `clt_region` VALUES (349,28,'日喀则',2);
INSERT INTO `clt_region` VALUES (350,28,'山南',2);
INSERT INTO `clt_region` VALUES (351,29,'乌鲁木齐',2);
INSERT INTO `clt_region` VALUES (352,29,'阿克苏',2);
INSERT INTO `clt_region` VALUES (353,29,'阿拉尔',2);
INSERT INTO `clt_region` VALUES (354,29,'巴音郭楞',2);
INSERT INTO `clt_region` VALUES (355,29,'博尔塔拉',2);
INSERT INTO `clt_region` VALUES (356,29,'昌吉',2);
INSERT INTO `clt_region` VALUES (357,29,'哈密',2);
INSERT INTO `clt_region` VALUES (358,29,'和田',2);
INSERT INTO `clt_region` VALUES (359,29,'喀什',2);
INSERT INTO `clt_region` VALUES (360,29,'克拉玛依',2);
INSERT INTO `clt_region` VALUES (361,29,'克孜勒苏',2);
INSERT INTO `clt_region` VALUES (362,29,'石河子',2);
INSERT INTO `clt_region` VALUES (363,29,'图木舒克',2);
INSERT INTO `clt_region` VALUES (364,29,'吐鲁番',2);
INSERT INTO `clt_region` VALUES (365,29,'五家渠',2);
INSERT INTO `clt_region` VALUES (366,29,'伊犁',2);
INSERT INTO `clt_region` VALUES (367,30,'昆明',2);
INSERT INTO `clt_region` VALUES (368,30,'怒江',2);
INSERT INTO `clt_region` VALUES (369,30,'普洱',2);
INSERT INTO `clt_region` VALUES (370,30,'丽江',2);
INSERT INTO `clt_region` VALUES (371,30,'保山',2);
INSERT INTO `clt_region` VALUES (372,30,'楚雄',2);
INSERT INTO `clt_region` VALUES (373,30,'大理',2);
INSERT INTO `clt_region` VALUES (374,30,'德宏',2);
INSERT INTO `clt_region` VALUES (375,30,'迪庆',2);
INSERT INTO `clt_region` VALUES (376,30,'红河',2);
INSERT INTO `clt_region` VALUES (377,30,'临沧',2);
INSERT INTO `clt_region` VALUES (378,30,'曲靖',2);
INSERT INTO `clt_region` VALUES (379,30,'文山',2);
INSERT INTO `clt_region` VALUES (380,30,'西双版纳',2);
INSERT INTO `clt_region` VALUES (381,30,'玉溪',2);
INSERT INTO `clt_region` VALUES (382,30,'昭通',2);
INSERT INTO `clt_region` VALUES (383,31,'杭州',2);
INSERT INTO `clt_region` VALUES (384,31,'湖州',2);
INSERT INTO `clt_region` VALUES (385,31,'嘉兴',2);
INSERT INTO `clt_region` VALUES (386,31,'金华',2);
INSERT INTO `clt_region` VALUES (387,31,'丽水',2);
INSERT INTO `clt_region` VALUES (388,31,'宁波',2);
INSERT INTO `clt_region` VALUES (389,31,'绍兴',2);
INSERT INTO `clt_region` VALUES (390,31,'台州',2);
INSERT INTO `clt_region` VALUES (391,31,'温州',2);
INSERT INTO `clt_region` VALUES (392,31,'舟山',2);
INSERT INTO `clt_region` VALUES (393,31,'衢州',2);
INSERT INTO `clt_region` VALUES (394,32,'重庆',2);
INSERT INTO `clt_region` VALUES (395,33,'香港',2);
INSERT INTO `clt_region` VALUES (396,34,'澳门',2);
INSERT INTO `clt_region` VALUES (397,35,'台湾',2);
INSERT INTO `clt_region` VALUES (398,36,'迎江区',3);
INSERT INTO `clt_region` VALUES (399,36,'大观区',3);
INSERT INTO `clt_region` VALUES (400,36,'宜秀区',3);
INSERT INTO `clt_region` VALUES (401,36,'桐城市',3);
INSERT INTO `clt_region` VALUES (402,36,'怀宁县',3);
INSERT INTO `clt_region` VALUES (403,36,'枞阳县',3);
INSERT INTO `clt_region` VALUES (404,36,'潜山县',3);
INSERT INTO `clt_region` VALUES (405,36,'太湖县',3);
INSERT INTO `clt_region` VALUES (406,36,'宿松县',3);
INSERT INTO `clt_region` VALUES (407,36,'望江县',3);
INSERT INTO `clt_region` VALUES (408,36,'岳西县',3);
INSERT INTO `clt_region` VALUES (409,37,'中市区',3);
INSERT INTO `clt_region` VALUES (410,37,'东市区',3);
INSERT INTO `clt_region` VALUES (411,37,'西市区',3);
INSERT INTO `clt_region` VALUES (412,37,'郊区',3);
INSERT INTO `clt_region` VALUES (413,37,'怀远县',3);
INSERT INTO `clt_region` VALUES (414,37,'五河县',3);
INSERT INTO `clt_region` VALUES (415,37,'固镇县',3);
INSERT INTO `clt_region` VALUES (416,38,'居巢区',3);
INSERT INTO `clt_region` VALUES (417,38,'庐江县',3);
INSERT INTO `clt_region` VALUES (418,38,'无为县',3);
INSERT INTO `clt_region` VALUES (419,38,'含山县',3);
INSERT INTO `clt_region` VALUES (420,38,'和县',3);
INSERT INTO `clt_region` VALUES (421,39,'贵池区',3);
INSERT INTO `clt_region` VALUES (422,39,'东至县',3);
INSERT INTO `clt_region` VALUES (423,39,'石台县',3);
INSERT INTO `clt_region` VALUES (424,39,'青阳县',3);
INSERT INTO `clt_region` VALUES (425,40,'琅琊区',3);
INSERT INTO `clt_region` VALUES (426,40,'南谯区',3);
INSERT INTO `clt_region` VALUES (427,40,'天长市',3);
INSERT INTO `clt_region` VALUES (428,40,'明光市',3);
INSERT INTO `clt_region` VALUES (429,40,'来安县',3);
INSERT INTO `clt_region` VALUES (430,40,'全椒县',3);
INSERT INTO `clt_region` VALUES (431,40,'定远县',3);
INSERT INTO `clt_region` VALUES (432,40,'凤阳县',3);
INSERT INTO `clt_region` VALUES (433,41,'蚌山区',3);
INSERT INTO `clt_region` VALUES (434,41,'龙子湖区',3);
INSERT INTO `clt_region` VALUES (435,41,'禹会区',3);
INSERT INTO `clt_region` VALUES (436,41,'淮上区',3);
INSERT INTO `clt_region` VALUES (437,41,'颍州区',3);
INSERT INTO `clt_region` VALUES (438,41,'颍东区',3);
INSERT INTO `clt_region` VALUES (439,41,'颍泉区',3);
INSERT INTO `clt_region` VALUES (440,41,'界首市',3);
INSERT INTO `clt_region` VALUES (441,41,'临泉县',3);
INSERT INTO `clt_region` VALUES (442,41,'太和县',3);
INSERT INTO `clt_region` VALUES (443,41,'阜南县',3);
INSERT INTO `clt_region` VALUES (444,41,'颖上县',3);
INSERT INTO `clt_region` VALUES (445,42,'相山区',3);
INSERT INTO `clt_region` VALUES (446,42,'杜集区',3);
INSERT INTO `clt_region` VALUES (447,42,'烈山区',3);
INSERT INTO `clt_region` VALUES (448,42,'濉溪县',3);
INSERT INTO `clt_region` VALUES (449,43,'田家庵区',3);
INSERT INTO `clt_region` VALUES (450,43,'大通区',3);
INSERT INTO `clt_region` VALUES (451,43,'谢家集区',3);
INSERT INTO `clt_region` VALUES (452,43,'八公山区',3);
INSERT INTO `clt_region` VALUES (453,43,'潘集区',3);
INSERT INTO `clt_region` VALUES (454,43,'凤台县',3);
INSERT INTO `clt_region` VALUES (455,44,'屯溪区',3);
INSERT INTO `clt_region` VALUES (456,44,'黄山区',3);
INSERT INTO `clt_region` VALUES (457,44,'徽州区',3);
INSERT INTO `clt_region` VALUES (458,44,'歙县',3);
INSERT INTO `clt_region` VALUES (459,44,'休宁县',3);
INSERT INTO `clt_region` VALUES (460,44,'黟县',3);
INSERT INTO `clt_region` VALUES (461,44,'祁门县',3);
INSERT INTO `clt_region` VALUES (462,45,'金安区',3);
INSERT INTO `clt_region` VALUES (463,45,'裕安区',3);
INSERT INTO `clt_region` VALUES (464,45,'寿县',3);
INSERT INTO `clt_region` VALUES (465,45,'霍邱县',3);
INSERT INTO `clt_region` VALUES (466,45,'舒城县',3);
INSERT INTO `clt_region` VALUES (467,45,'金寨县',3);
INSERT INTO `clt_region` VALUES (468,45,'霍山县',3);
INSERT INTO `clt_region` VALUES (469,46,'雨山区',3);
INSERT INTO `clt_region` VALUES (470,46,'花山区',3);
INSERT INTO `clt_region` VALUES (471,46,'金家庄区',3);
INSERT INTO `clt_region` VALUES (472,46,'当涂县',3);
INSERT INTO `clt_region` VALUES (473,47,'埇桥区',3);
INSERT INTO `clt_region` VALUES (474,47,'砀山县',3);
INSERT INTO `clt_region` VALUES (475,47,'萧县',3);
INSERT INTO `clt_region` VALUES (476,47,'灵璧县',3);
INSERT INTO `clt_region` VALUES (477,47,'泗县',3);
INSERT INTO `clt_region` VALUES (478,48,'铜官山区',3);
INSERT INTO `clt_region` VALUES (479,48,'狮子山区',3);
INSERT INTO `clt_region` VALUES (480,48,'郊区',3);
INSERT INTO `clt_region` VALUES (481,48,'铜陵县',3);
INSERT INTO `clt_region` VALUES (482,49,'镜湖区',3);
INSERT INTO `clt_region` VALUES (483,49,'弋江区',3);
INSERT INTO `clt_region` VALUES (484,49,'鸠江区',3);
INSERT INTO `clt_region` VALUES (485,49,'三山区',3);
INSERT INTO `clt_region` VALUES (486,49,'芜湖县',3);
INSERT INTO `clt_region` VALUES (487,49,'繁昌县',3);
INSERT INTO `clt_region` VALUES (488,49,'南陵县',3);
INSERT INTO `clt_region` VALUES (489,50,'宣州区',3);
INSERT INTO `clt_region` VALUES (490,50,'宁国市',3);
INSERT INTO `clt_region` VALUES (491,50,'郎溪县',3);
INSERT INTO `clt_region` VALUES (492,50,'广德县',3);
INSERT INTO `clt_region` VALUES (493,50,'泾县',3);
INSERT INTO `clt_region` VALUES (494,50,'绩溪县',3);
INSERT INTO `clt_region` VALUES (495,50,'旌德县',3);
INSERT INTO `clt_region` VALUES (496,51,'涡阳县',3);
INSERT INTO `clt_region` VALUES (497,51,'蒙城县',3);
INSERT INTO `clt_region` VALUES (498,51,'利辛县',3);
INSERT INTO `clt_region` VALUES (499,51,'谯城区',3);
INSERT INTO `clt_region` VALUES (500,52,'东城区',3);
INSERT INTO `clt_region` VALUES (501,52,'西城区',3);
INSERT INTO `clt_region` VALUES (502,52,'海淀区',3);
INSERT INTO `clt_region` VALUES (503,52,'朝阳区',3);
INSERT INTO `clt_region` VALUES (504,52,'崇文区',3);
INSERT INTO `clt_region` VALUES (505,52,'宣武区',3);
INSERT INTO `clt_region` VALUES (506,52,'丰台区',3);
INSERT INTO `clt_region` VALUES (507,52,'石景山区',3);
INSERT INTO `clt_region` VALUES (508,52,'房山区',3);
INSERT INTO `clt_region` VALUES (509,52,'门头沟区',3);
INSERT INTO `clt_region` VALUES (510,52,'通州区',3);
INSERT INTO `clt_region` VALUES (511,52,'顺义区',3);
INSERT INTO `clt_region` VALUES (512,52,'昌平区',3);
INSERT INTO `clt_region` VALUES (513,52,'怀柔区',3);
INSERT INTO `clt_region` VALUES (514,52,'平谷区',3);
INSERT INTO `clt_region` VALUES (515,52,'大兴区',3);
INSERT INTO `clt_region` VALUES (516,52,'密云县',3);
INSERT INTO `clt_region` VALUES (517,52,'延庆县',3);
INSERT INTO `clt_region` VALUES (518,53,'鼓楼区',3);
INSERT INTO `clt_region` VALUES (519,53,'台江区',3);
INSERT INTO `clt_region` VALUES (520,53,'仓山区',3);
INSERT INTO `clt_region` VALUES (521,53,'马尾区',3);
INSERT INTO `clt_region` VALUES (522,53,'晋安区',3);
INSERT INTO `clt_region` VALUES (523,53,'福清市',3);
INSERT INTO `clt_region` VALUES (524,53,'长乐市',3);
INSERT INTO `clt_region` VALUES (525,53,'闽侯县',3);
INSERT INTO `clt_region` VALUES (526,53,'连江县',3);
INSERT INTO `clt_region` VALUES (527,53,'罗源县',3);
INSERT INTO `clt_region` VALUES (528,53,'闽清县',3);
INSERT INTO `clt_region` VALUES (529,53,'永泰县',3);
INSERT INTO `clt_region` VALUES (530,53,'平潭县',3);
INSERT INTO `clt_region` VALUES (531,54,'新罗区',3);
INSERT INTO `clt_region` VALUES (532,54,'漳平市',3);
INSERT INTO `clt_region` VALUES (533,54,'长汀县',3);
INSERT INTO `clt_region` VALUES (534,54,'永定县',3);
INSERT INTO `clt_region` VALUES (535,54,'上杭县',3);
INSERT INTO `clt_region` VALUES (536,54,'武平县',3);
INSERT INTO `clt_region` VALUES (537,54,'连城县',3);
INSERT INTO `clt_region` VALUES (538,55,'延平区',3);
INSERT INTO `clt_region` VALUES (539,55,'邵武市',3);
INSERT INTO `clt_region` VALUES (540,55,'武夷山市',3);
INSERT INTO `clt_region` VALUES (541,55,'建瓯市',3);
INSERT INTO `clt_region` VALUES (542,55,'建阳市',3);
INSERT INTO `clt_region` VALUES (543,55,'顺昌县',3);
INSERT INTO `clt_region` VALUES (544,55,'浦城县',3);
INSERT INTO `clt_region` VALUES (545,55,'光泽县',3);
INSERT INTO `clt_region` VALUES (546,55,'松溪县',3);
INSERT INTO `clt_region` VALUES (547,55,'政和县',3);
INSERT INTO `clt_region` VALUES (548,56,'蕉城区',3);
INSERT INTO `clt_region` VALUES (549,56,'福安市',3);
INSERT INTO `clt_region` VALUES (550,56,'福鼎市',3);
INSERT INTO `clt_region` VALUES (551,56,'霞浦县',3);
INSERT INTO `clt_region` VALUES (552,56,'古田县',3);
INSERT INTO `clt_region` VALUES (553,56,'屏南县',3);
INSERT INTO `clt_region` VALUES (554,56,'寿宁县',3);
INSERT INTO `clt_region` VALUES (555,56,'周宁县',3);
INSERT INTO `clt_region` VALUES (556,56,'柘荣县',3);
INSERT INTO `clt_region` VALUES (557,57,'城厢区',3);
INSERT INTO `clt_region` VALUES (558,57,'涵江区',3);
INSERT INTO `clt_region` VALUES (559,57,'荔城区',3);
INSERT INTO `clt_region` VALUES (560,57,'秀屿区',3);
INSERT INTO `clt_region` VALUES (561,57,'仙游县',3);
INSERT INTO `clt_region` VALUES (562,58,'鲤城区',3);
INSERT INTO `clt_region` VALUES (563,58,'丰泽区',3);
INSERT INTO `clt_region` VALUES (564,58,'洛江区',3);
INSERT INTO `clt_region` VALUES (565,58,'清濛开发区',3);
INSERT INTO `clt_region` VALUES (566,58,'泉港区',3);
INSERT INTO `clt_region` VALUES (567,58,'石狮市',3);
INSERT INTO `clt_region` VALUES (568,58,'晋江市',3);
INSERT INTO `clt_region` VALUES (569,58,'南安市',3);
INSERT INTO `clt_region` VALUES (570,58,'惠安县',3);
INSERT INTO `clt_region` VALUES (571,58,'安溪县',3);
INSERT INTO `clt_region` VALUES (572,58,'永春县',3);
INSERT INTO `clt_region` VALUES (573,58,'德化县',3);
INSERT INTO `clt_region` VALUES (574,58,'金门县',3);
INSERT INTO `clt_region` VALUES (575,59,'梅列区',3);
INSERT INTO `clt_region` VALUES (576,59,'三元区',3);
INSERT INTO `clt_region` VALUES (577,59,'永安市',3);
INSERT INTO `clt_region` VALUES (578,59,'明溪县',3);
INSERT INTO `clt_region` VALUES (579,59,'清流县',3);
INSERT INTO `clt_region` VALUES (580,59,'宁化县',3);
INSERT INTO `clt_region` VALUES (581,59,'大田县',3);
INSERT INTO `clt_region` VALUES (582,59,'尤溪县',3);
INSERT INTO `clt_region` VALUES (583,59,'沙县',3);
INSERT INTO `clt_region` VALUES (584,59,'将乐县',3);
INSERT INTO `clt_region` VALUES (585,59,'泰宁县',3);
INSERT INTO `clt_region` VALUES (586,59,'建宁县',3);
INSERT INTO `clt_region` VALUES (587,60,'思明区',3);
INSERT INTO `clt_region` VALUES (588,60,'海沧区',3);
INSERT INTO `clt_region` VALUES (589,60,'湖里区',3);
INSERT INTO `clt_region` VALUES (590,60,'集美区',3);
INSERT INTO `clt_region` VALUES (591,60,'同安区',3);
INSERT INTO `clt_region` VALUES (592,60,'翔安区',3);
INSERT INTO `clt_region` VALUES (593,61,'芗城区',3);
INSERT INTO `clt_region` VALUES (594,61,'龙文区',3);
INSERT INTO `clt_region` VALUES (595,61,'龙海市',3);
INSERT INTO `clt_region` VALUES (596,61,'云霄县',3);
INSERT INTO `clt_region` VALUES (597,61,'漳浦县',3);
INSERT INTO `clt_region` VALUES (598,61,'诏安县',3);
INSERT INTO `clt_region` VALUES (599,61,'长泰县',3);
INSERT INTO `clt_region` VALUES (600,61,'东山县',3);
INSERT INTO `clt_region` VALUES (601,61,'南靖县',3);
INSERT INTO `clt_region` VALUES (602,61,'平和县',3);
INSERT INTO `clt_region` VALUES (603,61,'华安县',3);
INSERT INTO `clt_region` VALUES (604,62,'皋兰县',3);
INSERT INTO `clt_region` VALUES (605,62,'城关区',3);
INSERT INTO `clt_region` VALUES (606,62,'七里河区',3);
INSERT INTO `clt_region` VALUES (607,62,'西固区',3);
INSERT INTO `clt_region` VALUES (608,62,'安宁区',3);
INSERT INTO `clt_region` VALUES (609,62,'红古区',3);
INSERT INTO `clt_region` VALUES (610,62,'永登县',3);
INSERT INTO `clt_region` VALUES (611,62,'榆中县',3);
INSERT INTO `clt_region` VALUES (612,63,'白银区',3);
INSERT INTO `clt_region` VALUES (613,63,'平川区',3);
INSERT INTO `clt_region` VALUES (614,63,'会宁县',3);
INSERT INTO `clt_region` VALUES (615,63,'景泰县',3);
INSERT INTO `clt_region` VALUES (616,63,'靖远县',3);
INSERT INTO `clt_region` VALUES (617,64,'临洮县',3);
INSERT INTO `clt_region` VALUES (618,64,'陇西县',3);
INSERT INTO `clt_region` VALUES (619,64,'通渭县',3);
INSERT INTO `clt_region` VALUES (620,64,'渭源县',3);
INSERT INTO `clt_region` VALUES (621,64,'漳县',3);
INSERT INTO `clt_region` VALUES (622,64,'岷县',3);
INSERT INTO `clt_region` VALUES (623,64,'安定区',3);
INSERT INTO `clt_region` VALUES (624,64,'安定区',3);
INSERT INTO `clt_region` VALUES (625,65,'合作市',3);
INSERT INTO `clt_region` VALUES (626,65,'临潭县',3);
INSERT INTO `clt_region` VALUES (627,65,'卓尼县',3);
INSERT INTO `clt_region` VALUES (628,65,'舟曲县',3);
INSERT INTO `clt_region` VALUES (629,65,'迭部县',3);
INSERT INTO `clt_region` VALUES (630,65,'玛曲县',3);
INSERT INTO `clt_region` VALUES (631,65,'碌曲县',3);
INSERT INTO `clt_region` VALUES (632,65,'夏河县',3);
INSERT INTO `clt_region` VALUES (633,66,'嘉峪关市',3);
INSERT INTO `clt_region` VALUES (634,67,'金川区',3);
INSERT INTO `clt_region` VALUES (635,67,'永昌县',3);
INSERT INTO `clt_region` VALUES (636,68,'肃州区',3);
INSERT INTO `clt_region` VALUES (637,68,'玉门市',3);
INSERT INTO `clt_region` VALUES (638,68,'敦煌市',3);
INSERT INTO `clt_region` VALUES (639,68,'金塔县',3);
INSERT INTO `clt_region` VALUES (640,68,'瓜州县',3);
INSERT INTO `clt_region` VALUES (641,68,'肃北',3);
INSERT INTO `clt_region` VALUES (642,68,'阿克塞',3);
INSERT INTO `clt_region` VALUES (643,69,'临夏市',3);
INSERT INTO `clt_region` VALUES (644,69,'临夏县',3);
INSERT INTO `clt_region` VALUES (645,69,'康乐县',3);
INSERT INTO `clt_region` VALUES (646,69,'永靖县',3);
INSERT INTO `clt_region` VALUES (647,69,'广河县',3);
INSERT INTO `clt_region` VALUES (648,69,'和政县',3);
INSERT INTO `clt_region` VALUES (649,69,'东乡族自治县',3);
INSERT INTO `clt_region` VALUES (650,69,'积石山',3);
INSERT INTO `clt_region` VALUES (651,70,'成县',3);
INSERT INTO `clt_region` VALUES (652,70,'徽县',3);
INSERT INTO `clt_region` VALUES (653,70,'康县',3);
INSERT INTO `clt_region` VALUES (654,70,'礼县',3);
INSERT INTO `clt_region` VALUES (655,70,'两当县',3);
INSERT INTO `clt_region` VALUES (656,70,'文县',3);
INSERT INTO `clt_region` VALUES (657,70,'西和县',3);
INSERT INTO `clt_region` VALUES (658,70,'宕昌县',3);
INSERT INTO `clt_region` VALUES (659,70,'武都区',3);
INSERT INTO `clt_region` VALUES (660,71,'崇信县',3);
INSERT INTO `clt_region` VALUES (661,71,'华亭县',3);
INSERT INTO `clt_region` VALUES (662,71,'静宁县',3);
INSERT INTO `clt_region` VALUES (663,71,'灵台县',3);
INSERT INTO `clt_region` VALUES (664,71,'崆峒区',3);
INSERT INTO `clt_region` VALUES (665,71,'庄浪县',3);
INSERT INTO `clt_region` VALUES (666,71,'泾川县',3);
INSERT INTO `clt_region` VALUES (667,72,'合水县',3);
INSERT INTO `clt_region` VALUES (668,72,'华池县',3);
INSERT INTO `clt_region` VALUES (669,72,'环县',3);
INSERT INTO `clt_region` VALUES (670,72,'宁县',3);
INSERT INTO `clt_region` VALUES (671,72,'庆城县',3);
INSERT INTO `clt_region` VALUES (672,72,'西峰区',3);
INSERT INTO `clt_region` VALUES (673,72,'镇原县',3);
INSERT INTO `clt_region` VALUES (674,72,'正宁县',3);
INSERT INTO `clt_region` VALUES (675,73,'甘谷县',3);
INSERT INTO `clt_region` VALUES (676,73,'秦安县',3);
INSERT INTO `clt_region` VALUES (677,73,'清水县',3);
INSERT INTO `clt_region` VALUES (678,73,'秦州区',3);
INSERT INTO `clt_region` VALUES (679,73,'麦积区',3);
INSERT INTO `clt_region` VALUES (680,73,'武山县',3);
INSERT INTO `clt_region` VALUES (681,73,'张家川',3);
INSERT INTO `clt_region` VALUES (682,74,'古浪县',3);
INSERT INTO `clt_region` VALUES (683,74,'民勤县',3);
INSERT INTO `clt_region` VALUES (684,74,'天祝',3);
INSERT INTO `clt_region` VALUES (685,74,'凉州区',3);
INSERT INTO `clt_region` VALUES (686,75,'高台县',3);
INSERT INTO `clt_region` VALUES (687,75,'临泽县',3);
INSERT INTO `clt_region` VALUES (688,75,'民乐县',3);
INSERT INTO `clt_region` VALUES (689,75,'山丹县',3);
INSERT INTO `clt_region` VALUES (690,75,'肃南',3);
INSERT INTO `clt_region` VALUES (691,75,'甘州区',3);
INSERT INTO `clt_region` VALUES (692,76,'从化市',3);
INSERT INTO `clt_region` VALUES (693,76,'天河区',3);
INSERT INTO `clt_region` VALUES (694,76,'东山区',3);
INSERT INTO `clt_region` VALUES (695,76,'白云区',3);
INSERT INTO `clt_region` VALUES (696,76,'海珠区',3);
INSERT INTO `clt_region` VALUES (697,76,'荔湾区',3);
INSERT INTO `clt_region` VALUES (698,76,'越秀区',3);
INSERT INTO `clt_region` VALUES (699,76,'黄埔区',3);
INSERT INTO `clt_region` VALUES (700,76,'番禺区',3);
INSERT INTO `clt_region` VALUES (701,76,'花都区',3);
INSERT INTO `clt_region` VALUES (702,76,'增城区',3);
INSERT INTO `clt_region` VALUES (703,76,'从化区',3);
INSERT INTO `clt_region` VALUES (704,76,'市郊',3);
INSERT INTO `clt_region` VALUES (705,77,'福田区',3);
INSERT INTO `clt_region` VALUES (706,77,'罗湖区',3);
INSERT INTO `clt_region` VALUES (707,77,'南山区',3);
INSERT INTO `clt_region` VALUES (708,77,'宝安区',3);
INSERT INTO `clt_region` VALUES (709,77,'龙岗区',3);
INSERT INTO `clt_region` VALUES (710,77,'盐田区',3);
INSERT INTO `clt_region` VALUES (711,78,'湘桥区',3);
INSERT INTO `clt_region` VALUES (712,78,'潮安县',3);
INSERT INTO `clt_region` VALUES (713,78,'饶平县',3);
INSERT INTO `clt_region` VALUES (714,79,'南城区',3);
INSERT INTO `clt_region` VALUES (715,79,'东城区',3);
INSERT INTO `clt_region` VALUES (716,79,'万江区',3);
INSERT INTO `clt_region` VALUES (717,79,'莞城区',3);
INSERT INTO `clt_region` VALUES (718,79,'石龙镇',3);
INSERT INTO `clt_region` VALUES (719,79,'虎门镇',3);
INSERT INTO `clt_region` VALUES (720,79,'麻涌镇',3);
INSERT INTO `clt_region` VALUES (721,79,'道滘镇',3);
INSERT INTO `clt_region` VALUES (722,79,'石碣镇',3);
INSERT INTO `clt_region` VALUES (723,79,'沙田镇',3);
INSERT INTO `clt_region` VALUES (724,79,'望牛墩镇',3);
INSERT INTO `clt_region` VALUES (725,79,'洪梅镇',3);
INSERT INTO `clt_region` VALUES (726,79,'茶山镇',3);
INSERT INTO `clt_region` VALUES (727,79,'寮步镇',3);
INSERT INTO `clt_region` VALUES (728,79,'大岭山镇',3);
INSERT INTO `clt_region` VALUES (729,79,'大朗镇',3);
INSERT INTO `clt_region` VALUES (730,79,'黄江镇',3);
INSERT INTO `clt_region` VALUES (731,79,'樟木头',3);
INSERT INTO `clt_region` VALUES (732,79,'凤岗镇',3);
INSERT INTO `clt_region` VALUES (733,79,'塘厦镇',3);
INSERT INTO `clt_region` VALUES (734,79,'谢岗镇',3);
INSERT INTO `clt_region` VALUES (735,79,'厚街镇',3);
INSERT INTO `clt_region` VALUES (736,79,'清溪镇',3);
INSERT INTO `clt_region` VALUES (737,79,'常平镇',3);
INSERT INTO `clt_region` VALUES (738,79,'桥头镇',3);
INSERT INTO `clt_region` VALUES (739,79,'横沥镇',3);
INSERT INTO `clt_region` VALUES (740,79,'东坑镇',3);
INSERT INTO `clt_region` VALUES (741,79,'企石镇',3);
INSERT INTO `clt_region` VALUES (742,79,'石排镇',3);
INSERT INTO `clt_region` VALUES (743,79,'长安镇',3);
INSERT INTO `clt_region` VALUES (744,79,'中堂镇',3);
INSERT INTO `clt_region` VALUES (745,79,'高埗镇',3);
INSERT INTO `clt_region` VALUES (746,80,'禅城区',3);
INSERT INTO `clt_region` VALUES (747,80,'南海区',3);
INSERT INTO `clt_region` VALUES (748,80,'顺德区',3);
INSERT INTO `clt_region` VALUES (749,80,'三水区',3);
INSERT INTO `clt_region` VALUES (750,80,'高明区',3);
INSERT INTO `clt_region` VALUES (751,81,'东源县',3);
INSERT INTO `clt_region` VALUES (752,81,'和平县',3);
INSERT INTO `clt_region` VALUES (753,81,'源城区',3);
INSERT INTO `clt_region` VALUES (754,81,'连平县',3);
INSERT INTO `clt_region` VALUES (755,81,'龙川县',3);
INSERT INTO `clt_region` VALUES (756,81,'紫金县',3);
INSERT INTO `clt_region` VALUES (757,82,'惠阳区',3);
INSERT INTO `clt_region` VALUES (758,82,'惠城区',3);
INSERT INTO `clt_region` VALUES (759,82,'大亚湾',3);
INSERT INTO `clt_region` VALUES (760,82,'博罗县',3);
INSERT INTO `clt_region` VALUES (761,82,'惠东县',3);
INSERT INTO `clt_region` VALUES (762,82,'龙门县',3);
INSERT INTO `clt_region` VALUES (763,83,'江海区',3);
INSERT INTO `clt_region` VALUES (764,83,'蓬江区',3);
INSERT INTO `clt_region` VALUES (765,83,'新会区',3);
INSERT INTO `clt_region` VALUES (766,83,'台山市',3);
INSERT INTO `clt_region` VALUES (767,83,'开平市',3);
INSERT INTO `clt_region` VALUES (768,83,'鹤山市',3);
INSERT INTO `clt_region` VALUES (769,83,'恩平市',3);
INSERT INTO `clt_region` VALUES (770,84,'榕城区',3);
INSERT INTO `clt_region` VALUES (771,84,'普宁市',3);
INSERT INTO `clt_region` VALUES (772,84,'揭东县',3);
INSERT INTO `clt_region` VALUES (773,84,'揭西县',3);
INSERT INTO `clt_region` VALUES (774,84,'惠来县',3);
INSERT INTO `clt_region` VALUES (775,85,'茂南区',3);
INSERT INTO `clt_region` VALUES (776,85,'茂港区',3);
INSERT INTO `clt_region` VALUES (777,85,'高州市',3);
INSERT INTO `clt_region` VALUES (778,85,'化州市',3);
INSERT INTO `clt_region` VALUES (779,85,'信宜市',3);
INSERT INTO `clt_region` VALUES (780,85,'电白县',3);
INSERT INTO `clt_region` VALUES (781,86,'梅县',3);
INSERT INTO `clt_region` VALUES (782,86,'梅江区',3);
INSERT INTO `clt_region` VALUES (783,86,'兴宁市',3);
INSERT INTO `clt_region` VALUES (784,86,'大埔县',3);
INSERT INTO `clt_region` VALUES (785,86,'丰顺县',3);
INSERT INTO `clt_region` VALUES (786,86,'五华县',3);
INSERT INTO `clt_region` VALUES (787,86,'平远县',3);
INSERT INTO `clt_region` VALUES (788,86,'蕉岭县',3);
INSERT INTO `clt_region` VALUES (789,87,'清城区',3);
INSERT INTO `clt_region` VALUES (790,87,'英德市',3);
INSERT INTO `clt_region` VALUES (791,87,'连州市',3);
INSERT INTO `clt_region` VALUES (792,87,'佛冈县',3);
INSERT INTO `clt_region` VALUES (793,87,'阳山县',3);
INSERT INTO `clt_region` VALUES (794,87,'清新县',3);
INSERT INTO `clt_region` VALUES (795,87,'连山',3);
INSERT INTO `clt_region` VALUES (796,87,'连南',3);
INSERT INTO `clt_region` VALUES (797,88,'南澳县',3);
INSERT INTO `clt_region` VALUES (798,88,'潮阳区',3);
INSERT INTO `clt_region` VALUES (799,88,'澄海区',3);
INSERT INTO `clt_region` VALUES (800,88,'龙湖区',3);
INSERT INTO `clt_region` VALUES (801,88,'金平区',3);
INSERT INTO `clt_region` VALUES (802,88,'濠江区',3);
INSERT INTO `clt_region` VALUES (803,88,'潮南区',3);
INSERT INTO `clt_region` VALUES (804,89,'城区',3);
INSERT INTO `clt_region` VALUES (805,89,'陆丰市',3);
INSERT INTO `clt_region` VALUES (806,89,'海丰县',3);
INSERT INTO `clt_region` VALUES (807,89,'陆河县',3);
INSERT INTO `clt_region` VALUES (808,90,'曲江县',3);
INSERT INTO `clt_region` VALUES (809,90,'浈江区',3);
INSERT INTO `clt_region` VALUES (810,90,'武江区',3);
INSERT INTO `clt_region` VALUES (811,90,'曲江区',3);
INSERT INTO `clt_region` VALUES (812,90,'乐昌市',3);
INSERT INTO `clt_region` VALUES (813,90,'南雄市',3);
INSERT INTO `clt_region` VALUES (814,90,'始兴县',3);
INSERT INTO `clt_region` VALUES (815,90,'仁化县',3);
INSERT INTO `clt_region` VALUES (816,90,'翁源县',3);
INSERT INTO `clt_region` VALUES (817,90,'新丰县',3);
INSERT INTO `clt_region` VALUES (818,90,'乳源',3);
INSERT INTO `clt_region` VALUES (819,91,'江城区',3);
INSERT INTO `clt_region` VALUES (820,91,'阳春市',3);
INSERT INTO `clt_region` VALUES (821,91,'阳西县',3);
INSERT INTO `clt_region` VALUES (822,91,'阳东县',3);
INSERT INTO `clt_region` VALUES (823,92,'云城区',3);
INSERT INTO `clt_region` VALUES (824,92,'罗定市',3);
INSERT INTO `clt_region` VALUES (825,92,'新兴县',3);
INSERT INTO `clt_region` VALUES (826,92,'郁南县',3);
INSERT INTO `clt_region` VALUES (827,92,'云安县',3);
INSERT INTO `clt_region` VALUES (828,93,'赤坎区',3);
INSERT INTO `clt_region` VALUES (829,93,'霞山区',3);
INSERT INTO `clt_region` VALUES (830,93,'坡头区',3);
INSERT INTO `clt_region` VALUES (831,93,'麻章区',3);
INSERT INTO `clt_region` VALUES (832,93,'廉江市',3);
INSERT INTO `clt_region` VALUES (833,93,'雷州市',3);
INSERT INTO `clt_region` VALUES (834,93,'吴川市',3);
INSERT INTO `clt_region` VALUES (835,93,'遂溪县',3);
INSERT INTO `clt_region` VALUES (836,93,'徐闻县',3);
INSERT INTO `clt_region` VALUES (837,94,'肇庆市',3);
INSERT INTO `clt_region` VALUES (838,94,'高要市',3);
INSERT INTO `clt_region` VALUES (839,94,'四会市',3);
INSERT INTO `clt_region` VALUES (840,94,'广宁县',3);
INSERT INTO `clt_region` VALUES (841,94,'怀集县',3);
INSERT INTO `clt_region` VALUES (842,94,'封开县',3);
INSERT INTO `clt_region` VALUES (843,94,'德庆县',3);
INSERT INTO `clt_region` VALUES (844,95,'石岐街道',3);
INSERT INTO `clt_region` VALUES (845,95,'东区街道',3);
INSERT INTO `clt_region` VALUES (846,95,'西区街道',3);
INSERT INTO `clt_region` VALUES (847,95,'环城街道',3);
INSERT INTO `clt_region` VALUES (848,95,'中山港街道',3);
INSERT INTO `clt_region` VALUES (849,95,'五桂山街道',3);
INSERT INTO `clt_region` VALUES (850,96,'香洲区',3);
INSERT INTO `clt_region` VALUES (851,96,'斗门区',3);
INSERT INTO `clt_region` VALUES (852,96,'金湾区',3);
INSERT INTO `clt_region` VALUES (853,97,'邕宁区',3);
INSERT INTO `clt_region` VALUES (854,97,'青秀区',3);
INSERT INTO `clt_region` VALUES (855,97,'兴宁区',3);
INSERT INTO `clt_region` VALUES (856,97,'良庆区',3);
INSERT INTO `clt_region` VALUES (857,97,'西乡塘区',3);
INSERT INTO `clt_region` VALUES (858,97,'江南区',3);
INSERT INTO `clt_region` VALUES (859,97,'武鸣县',3);
INSERT INTO `clt_region` VALUES (860,97,'隆安县',3);
INSERT INTO `clt_region` VALUES (861,97,'马山县',3);
INSERT INTO `clt_region` VALUES (862,97,'上林县',3);
INSERT INTO `clt_region` VALUES (863,97,'宾阳县',3);
INSERT INTO `clt_region` VALUES (864,97,'横县',3);
INSERT INTO `clt_region` VALUES (865,98,'秀峰区',3);
INSERT INTO `clt_region` VALUES (866,98,'叠彩区',3);
INSERT INTO `clt_region` VALUES (867,98,'象山区',3);
INSERT INTO `clt_region` VALUES (868,98,'七星区',3);
INSERT INTO `clt_region` VALUES (869,98,'雁山区',3);
INSERT INTO `clt_region` VALUES (870,98,'阳朔县',3);
INSERT INTO `clt_region` VALUES (871,98,'临桂县',3);
INSERT INTO `clt_region` VALUES (872,98,'灵川县',3);
INSERT INTO `clt_region` VALUES (873,98,'全州县',3);
INSERT INTO `clt_region` VALUES (874,98,'平乐县',3);
INSERT INTO `clt_region` VALUES (875,98,'兴安县',3);
INSERT INTO `clt_region` VALUES (876,98,'灌阳县',3);
INSERT INTO `clt_region` VALUES (877,98,'荔浦县',3);
INSERT INTO `clt_region` VALUES (878,98,'资源县',3);
INSERT INTO `clt_region` VALUES (879,98,'永福县',3);
INSERT INTO `clt_region` VALUES (880,98,'龙胜',3);
INSERT INTO `clt_region` VALUES (881,98,'恭城',3);
INSERT INTO `clt_region` VALUES (882,99,'右江区',3);
INSERT INTO `clt_region` VALUES (883,99,'凌云县',3);
INSERT INTO `clt_region` VALUES (884,99,'平果县',3);
INSERT INTO `clt_region` VALUES (885,99,'西林县',3);
INSERT INTO `clt_region` VALUES (886,99,'乐业县',3);
INSERT INTO `clt_region` VALUES (887,99,'德保县',3);
INSERT INTO `clt_region` VALUES (888,99,'田林县',3);
INSERT INTO `clt_region` VALUES (889,99,'田阳县',3);
INSERT INTO `clt_region` VALUES (890,99,'靖西县',3);
INSERT INTO `clt_region` VALUES (891,99,'田东县',3);
INSERT INTO `clt_region` VALUES (892,99,'那坡县',3);
INSERT INTO `clt_region` VALUES (893,99,'隆林',3);
INSERT INTO `clt_region` VALUES (894,100,'海城区',3);
INSERT INTO `clt_region` VALUES (895,100,'银海区',3);
INSERT INTO `clt_region` VALUES (896,100,'铁山港区',3);
INSERT INTO `clt_region` VALUES (897,100,'合浦县',3);
INSERT INTO `clt_region` VALUES (898,101,'江州区',3);
INSERT INTO `clt_region` VALUES (899,101,'凭祥市',3);
INSERT INTO `clt_region` VALUES (900,101,'宁明县',3);
INSERT INTO `clt_region` VALUES (901,101,'扶绥县',3);
INSERT INTO `clt_region` VALUES (902,101,'龙州县',3);
INSERT INTO `clt_region` VALUES (903,101,'大新县',3);
INSERT INTO `clt_region` VALUES (904,101,'天等县',3);
INSERT INTO `clt_region` VALUES (905,102,'港口区',3);
INSERT INTO `clt_region` VALUES (906,102,'防城区',3);
INSERT INTO `clt_region` VALUES (907,102,'东兴市',3);
INSERT INTO `clt_region` VALUES (908,102,'上思县',3);
INSERT INTO `clt_region` VALUES (909,103,'港北区',3);
INSERT INTO `clt_region` VALUES (910,103,'港南区',3);
INSERT INTO `clt_region` VALUES (911,103,'覃塘区',3);
INSERT INTO `clt_region` VALUES (912,103,'桂平市',3);
INSERT INTO `clt_region` VALUES (913,103,'平南县',3);
INSERT INTO `clt_region` VALUES (914,104,'金城江区',3);
INSERT INTO `clt_region` VALUES (915,104,'宜州市',3);
INSERT INTO `clt_region` VALUES (916,104,'天峨县',3);
INSERT INTO `clt_region` VALUES (917,104,'凤山县',3);
INSERT INTO `clt_region` VALUES (918,104,'南丹县',3);
INSERT INTO `clt_region` VALUES (919,104,'东兰县',3);
INSERT INTO `clt_region` VALUES (920,104,'都安',3);
INSERT INTO `clt_region` VALUES (921,104,'罗城',3);
INSERT INTO `clt_region` VALUES (922,104,'巴马',3);
INSERT INTO `clt_region` VALUES (923,104,'环江',3);
INSERT INTO `clt_region` VALUES (924,104,'大化',3);
INSERT INTO `clt_region` VALUES (925,105,'八步区',3);
INSERT INTO `clt_region` VALUES (926,105,'钟山县',3);
INSERT INTO `clt_region` VALUES (927,105,'昭平县',3);
INSERT INTO `clt_region` VALUES (928,105,'富川',3);
INSERT INTO `clt_region` VALUES (929,106,'兴宾区',3);
INSERT INTO `clt_region` VALUES (930,106,'合山市',3);
INSERT INTO `clt_region` VALUES (931,106,'象州县',3);
INSERT INTO `clt_region` VALUES (932,106,'武宣县',3);
INSERT INTO `clt_region` VALUES (933,106,'忻城县',3);
INSERT INTO `clt_region` VALUES (934,106,'金秀',3);
INSERT INTO `clt_region` VALUES (935,107,'城中区',3);
INSERT INTO `clt_region` VALUES (936,107,'鱼峰区',3);
INSERT INTO `clt_region` VALUES (937,107,'柳北区',3);
INSERT INTO `clt_region` VALUES (938,107,'柳南区',3);
INSERT INTO `clt_region` VALUES (939,107,'柳江县',3);
INSERT INTO `clt_region` VALUES (940,107,'柳城县',3);
INSERT INTO `clt_region` VALUES (941,107,'鹿寨县',3);
INSERT INTO `clt_region` VALUES (942,107,'融安县',3);
INSERT INTO `clt_region` VALUES (943,107,'融水',3);
INSERT INTO `clt_region` VALUES (944,107,'三江',3);
INSERT INTO `clt_region` VALUES (945,108,'钦南区',3);
INSERT INTO `clt_region` VALUES (946,108,'钦北区',3);
INSERT INTO `clt_region` VALUES (947,108,'灵山县',3);
INSERT INTO `clt_region` VALUES (948,108,'浦北县',3);
INSERT INTO `clt_region` VALUES (949,109,'万秀区',3);
INSERT INTO `clt_region` VALUES (950,109,'蝶山区',3);
INSERT INTO `clt_region` VALUES (951,109,'长洲区',3);
INSERT INTO `clt_region` VALUES (952,109,'岑溪市',3);
INSERT INTO `clt_region` VALUES (953,109,'苍梧县',3);
INSERT INTO `clt_region` VALUES (954,109,'藤县',3);
INSERT INTO `clt_region` VALUES (955,109,'蒙山县',3);
INSERT INTO `clt_region` VALUES (956,110,'玉州区',3);
INSERT INTO `clt_region` VALUES (957,110,'北流市',3);
INSERT INTO `clt_region` VALUES (958,110,'容县',3);
INSERT INTO `clt_region` VALUES (959,110,'陆川县',3);
INSERT INTO `clt_region` VALUES (960,110,'博白县',3);
INSERT INTO `clt_region` VALUES (961,110,'兴业县',3);
INSERT INTO `clt_region` VALUES (962,111,'南明区',3);
INSERT INTO `clt_region` VALUES (963,111,'云岩区',3);
INSERT INTO `clt_region` VALUES (964,111,'花溪区',3);
INSERT INTO `clt_region` VALUES (965,111,'乌当区',3);
INSERT INTO `clt_region` VALUES (966,111,'白云区',3);
INSERT INTO `clt_region` VALUES (967,111,'小河区',3);
INSERT INTO `clt_region` VALUES (968,111,'金阳新区',3);
INSERT INTO `clt_region` VALUES (969,111,'新天园区',3);
INSERT INTO `clt_region` VALUES (970,111,'清镇市',3);
INSERT INTO `clt_region` VALUES (971,111,'开阳县',3);
INSERT INTO `clt_region` VALUES (972,111,'修文县',3);
INSERT INTO `clt_region` VALUES (973,111,'息烽县',3);
INSERT INTO `clt_region` VALUES (974,112,'西秀区',3);
INSERT INTO `clt_region` VALUES (975,112,'关岭',3);
INSERT INTO `clt_region` VALUES (976,112,'镇宁',3);
INSERT INTO `clt_region` VALUES (977,112,'紫云',3);
INSERT INTO `clt_region` VALUES (978,112,'平坝县',3);
INSERT INTO `clt_region` VALUES (979,112,'普定县',3);
INSERT INTO `clt_region` VALUES (980,113,'毕节市',3);
INSERT INTO `clt_region` VALUES (981,113,'大方县',3);
INSERT INTO `clt_region` VALUES (982,113,'黔西县',3);
INSERT INTO `clt_region` VALUES (983,113,'金沙县',3);
INSERT INTO `clt_region` VALUES (984,113,'织金县',3);
INSERT INTO `clt_region` VALUES (985,113,'纳雍县',3);
INSERT INTO `clt_region` VALUES (986,113,'赫章县',3);
INSERT INTO `clt_region` VALUES (987,113,'威宁',3);
INSERT INTO `clt_region` VALUES (988,114,'钟山区',3);
INSERT INTO `clt_region` VALUES (989,114,'六枝特区',3);
INSERT INTO `clt_region` VALUES (990,114,'水城县',3);
INSERT INTO `clt_region` VALUES (991,114,'盘县',3);
INSERT INTO `clt_region` VALUES (992,115,'凯里市',3);
INSERT INTO `clt_region` VALUES (993,115,'黄平县',3);
INSERT INTO `clt_region` VALUES (994,115,'施秉县',3);
INSERT INTO `clt_region` VALUES (995,115,'三穗县',3);
INSERT INTO `clt_region` VALUES (996,115,'镇远县',3);
INSERT INTO `clt_region` VALUES (997,115,'岑巩县',3);
INSERT INTO `clt_region` VALUES (998,115,'天柱县',3);
INSERT INTO `clt_region` VALUES (999,115,'锦屏县',3);
INSERT INTO `clt_region` VALUES (1000,115,'剑河县',3);
INSERT INTO `clt_region` VALUES (1001,115,'台江县',3);
INSERT INTO `clt_region` VALUES (1002,115,'黎平县',3);
INSERT INTO `clt_region` VALUES (1003,115,'榕江县',3);
INSERT INTO `clt_region` VALUES (1004,115,'从江县',3);
INSERT INTO `clt_region` VALUES (1005,115,'雷山县',3);
INSERT INTO `clt_region` VALUES (1006,115,'麻江县',3);
INSERT INTO `clt_region` VALUES (1007,115,'丹寨县',3);
INSERT INTO `clt_region` VALUES (1008,116,'都匀市',3);
INSERT INTO `clt_region` VALUES (1009,116,'福泉市',3);
INSERT INTO `clt_region` VALUES (1010,116,'荔波县',3);
INSERT INTO `clt_region` VALUES (1011,116,'贵定县',3);
INSERT INTO `clt_region` VALUES (1012,116,'瓮安县',3);
INSERT INTO `clt_region` VALUES (1013,116,'独山县',3);
INSERT INTO `clt_region` VALUES (1014,116,'平塘县',3);
INSERT INTO `clt_region` VALUES (1015,116,'罗甸县',3);
INSERT INTO `clt_region` VALUES (1016,116,'长顺县',3);
INSERT INTO `clt_region` VALUES (1017,116,'龙里县',3);
INSERT INTO `clt_region` VALUES (1018,116,'惠水县',3);
INSERT INTO `clt_region` VALUES (1019,116,'三都',3);
INSERT INTO `clt_region` VALUES (1020,117,'兴义市',3);
INSERT INTO `clt_region` VALUES (1021,117,'兴仁县',3);
INSERT INTO `clt_region` VALUES (1022,117,'普安县',3);
INSERT INTO `clt_region` VALUES (1023,117,'晴隆县',3);
INSERT INTO `clt_region` VALUES (1024,117,'贞丰县',3);
INSERT INTO `clt_region` VALUES (1025,117,'望谟县',3);
INSERT INTO `clt_region` VALUES (1026,117,'册亨县',3);
INSERT INTO `clt_region` VALUES (1027,117,'安龙县',3);
INSERT INTO `clt_region` VALUES (1028,118,'铜仁市',3);
INSERT INTO `clt_region` VALUES (1029,118,'江口县',3);
INSERT INTO `clt_region` VALUES (1030,118,'石阡县',3);
INSERT INTO `clt_region` VALUES (1031,118,'思南县',3);
INSERT INTO `clt_region` VALUES (1032,118,'德江县',3);
INSERT INTO `clt_region` VALUES (1033,118,'玉屏',3);
INSERT INTO `clt_region` VALUES (1034,118,'印江',3);
INSERT INTO `clt_region` VALUES (1035,118,'沿河',3);
INSERT INTO `clt_region` VALUES (1036,118,'松桃',3);
INSERT INTO `clt_region` VALUES (1037,118,'万山特区',3);
INSERT INTO `clt_region` VALUES (1038,119,'红花岗区',3);
INSERT INTO `clt_region` VALUES (1039,119,'务川县',3);
INSERT INTO `clt_region` VALUES (1040,119,'道真县',3);
INSERT INTO `clt_region` VALUES (1041,119,'汇川区',3);
INSERT INTO `clt_region` VALUES (1042,119,'赤水市',3);
INSERT INTO `clt_region` VALUES (1043,119,'仁怀市',3);
INSERT INTO `clt_region` VALUES (1044,119,'遵义县',3);
INSERT INTO `clt_region` VALUES (1045,119,'桐梓县',3);
INSERT INTO `clt_region` VALUES (1046,119,'绥阳县',3);
INSERT INTO `clt_region` VALUES (1047,119,'正安县',3);
INSERT INTO `clt_region` VALUES (1048,119,'凤冈县',3);
INSERT INTO `clt_region` VALUES (1049,119,'湄潭县',3);
INSERT INTO `clt_region` VALUES (1050,119,'余庆县',3);
INSERT INTO `clt_region` VALUES (1051,119,'习水县',3);
INSERT INTO `clt_region` VALUES (1052,119,'道真',3);
INSERT INTO `clt_region` VALUES (1053,119,'务川',3);
INSERT INTO `clt_region` VALUES (1054,120,'秀英区',3);
INSERT INTO `clt_region` VALUES (1055,120,'龙华区',3);
INSERT INTO `clt_region` VALUES (1056,120,'琼山区',3);
INSERT INTO `clt_region` VALUES (1057,120,'美兰区',3);
INSERT INTO `clt_region` VALUES (1058,137,'市区',3);
INSERT INTO `clt_region` VALUES (1059,137,'洋浦开发区',3);
INSERT INTO `clt_region` VALUES (1060,137,'那大镇',3);
INSERT INTO `clt_region` VALUES (1061,137,'王五镇',3);
INSERT INTO `clt_region` VALUES (1062,137,'雅星镇',3);
INSERT INTO `clt_region` VALUES (1063,137,'大成镇',3);
INSERT INTO `clt_region` VALUES (1064,137,'中和镇',3);
INSERT INTO `clt_region` VALUES (1065,137,'峨蔓镇',3);
INSERT INTO `clt_region` VALUES (1066,137,'南丰镇',3);
INSERT INTO `clt_region` VALUES (1067,137,'白马井镇',3);
INSERT INTO `clt_region` VALUES (1068,137,'兰洋镇',3);
INSERT INTO `clt_region` VALUES (1069,137,'和庆镇',3);
INSERT INTO `clt_region` VALUES (1070,137,'海头镇',3);
INSERT INTO `clt_region` VALUES (1071,137,'排浦镇',3);
INSERT INTO `clt_region` VALUES (1072,137,'东成镇',3);
INSERT INTO `clt_region` VALUES (1073,137,'光村镇',3);
INSERT INTO `clt_region` VALUES (1074,137,'木棠镇',3);
INSERT INTO `clt_region` VALUES (1075,137,'新州镇',3);
INSERT INTO `clt_region` VALUES (1076,137,'三都镇',3);
INSERT INTO `clt_region` VALUES (1077,137,'其他',3);
INSERT INTO `clt_region` VALUES (1078,138,'长安区',3);
INSERT INTO `clt_region` VALUES (1079,138,'桥东区',3);
INSERT INTO `clt_region` VALUES (1080,138,'桥西区',3);
INSERT INTO `clt_region` VALUES (1081,138,'新华区',3);
INSERT INTO `clt_region` VALUES (1082,138,'裕华区',3);
INSERT INTO `clt_region` VALUES (1083,138,'井陉矿区',3);
INSERT INTO `clt_region` VALUES (1084,138,'高新区',3);
INSERT INTO `clt_region` VALUES (1085,138,'辛集市',3);
INSERT INTO `clt_region` VALUES (1086,138,'藁城市',3);
INSERT INTO `clt_region` VALUES (1087,138,'晋州市',3);
INSERT INTO `clt_region` VALUES (1088,138,'新乐市',3);
INSERT INTO `clt_region` VALUES (1089,138,'鹿泉市',3);
INSERT INTO `clt_region` VALUES (1090,138,'井陉县',3);
INSERT INTO `clt_region` VALUES (1091,138,'正定县',3);
INSERT INTO `clt_region` VALUES (1092,138,'栾城县',3);
INSERT INTO `clt_region` VALUES (1093,138,'行唐县',3);
INSERT INTO `clt_region` VALUES (1094,138,'灵寿县',3);
INSERT INTO `clt_region` VALUES (1095,138,'高邑县',3);
INSERT INTO `clt_region` VALUES (1096,138,'深泽县',3);
INSERT INTO `clt_region` VALUES (1097,138,'赞皇县',3);
INSERT INTO `clt_region` VALUES (1098,138,'无极县',3);
INSERT INTO `clt_region` VALUES (1099,138,'平山县',3);
INSERT INTO `clt_region` VALUES (1100,138,'元氏县',3);
INSERT INTO `clt_region` VALUES (1101,138,'赵县',3);
INSERT INTO `clt_region` VALUES (1102,139,'新市区',3);
INSERT INTO `clt_region` VALUES (1103,139,'南市区',3);
INSERT INTO `clt_region` VALUES (1104,139,'北市区',3);
INSERT INTO `clt_region` VALUES (1105,139,'涿州市',3);
INSERT INTO `clt_region` VALUES (1106,139,'定州市',3);
INSERT INTO `clt_region` VALUES (1107,139,'安国市',3);
INSERT INTO `clt_region` VALUES (1108,139,'高碑店市',3);
INSERT INTO `clt_region` VALUES (1109,139,'满城县',3);
INSERT INTO `clt_region` VALUES (1110,139,'清苑县',3);
INSERT INTO `clt_region` VALUES (1111,139,'涞水县',3);
INSERT INTO `clt_region` VALUES (1112,139,'阜平县',3);
INSERT INTO `clt_region` VALUES (1113,139,'徐水县',3);
INSERT INTO `clt_region` VALUES (1114,139,'定兴县',3);
INSERT INTO `clt_region` VALUES (1115,139,'唐县',3);
INSERT INTO `clt_region` VALUES (1116,139,'高阳县',3);
INSERT INTO `clt_region` VALUES (1117,139,'容城县',3);
INSERT INTO `clt_region` VALUES (1118,139,'涞源县',3);
INSERT INTO `clt_region` VALUES (1119,139,'望都县',3);
INSERT INTO `clt_region` VALUES (1120,139,'安新县',3);
INSERT INTO `clt_region` VALUES (1121,139,'易县',3);
INSERT INTO `clt_region` VALUES (1122,139,'曲阳县',3);
INSERT INTO `clt_region` VALUES (1123,139,'蠡县',3);
INSERT INTO `clt_region` VALUES (1124,139,'顺平县',3);
INSERT INTO `clt_region` VALUES (1125,139,'博野县',3);
INSERT INTO `clt_region` VALUES (1126,139,'雄县',3);
INSERT INTO `clt_region` VALUES (1127,140,'运河区',3);
INSERT INTO `clt_region` VALUES (1128,140,'新华区',3);
INSERT INTO `clt_region` VALUES (1129,140,'泊头市',3);
INSERT INTO `clt_region` VALUES (1130,140,'任丘市',3);
INSERT INTO `clt_region` VALUES (1131,140,'黄骅市',3);
INSERT INTO `clt_region` VALUES (1132,140,'河间市',3);
INSERT INTO `clt_region` VALUES (1133,140,'沧县',3);
INSERT INTO `clt_region` VALUES (1134,140,'青县',3);
INSERT INTO `clt_region` VALUES (1135,140,'东光县',3);
INSERT INTO `clt_region` VALUES (1136,140,'海兴县',3);
INSERT INTO `clt_region` VALUES (1137,140,'盐山县',3);
INSERT INTO `clt_region` VALUES (1138,140,'肃宁县',3);
INSERT INTO `clt_region` VALUES (1139,140,'南皮县',3);
INSERT INTO `clt_region` VALUES (1140,140,'吴桥县',3);
INSERT INTO `clt_region` VALUES (1141,140,'献县',3);
INSERT INTO `clt_region` VALUES (1142,140,'孟村',3);
INSERT INTO `clt_region` VALUES (1143,141,'双桥区',3);
INSERT INTO `clt_region` VALUES (1144,141,'双滦区',3);
INSERT INTO `clt_region` VALUES (1145,141,'鹰手营子矿区',3);
INSERT INTO `clt_region` VALUES (1146,141,'承德县',3);
INSERT INTO `clt_region` VALUES (1147,141,'兴隆县',3);
INSERT INTO `clt_region` VALUES (1148,141,'平泉县',3);
INSERT INTO `clt_region` VALUES (1149,141,'滦平县',3);
INSERT INTO `clt_region` VALUES (1150,141,'隆化县',3);
INSERT INTO `clt_region` VALUES (1151,141,'丰宁',3);
INSERT INTO `clt_region` VALUES (1152,141,'宽城',3);
INSERT INTO `clt_region` VALUES (1153,141,'围场',3);
INSERT INTO `clt_region` VALUES (1154,142,'从台区',3);
INSERT INTO `clt_region` VALUES (1155,142,'复兴区',3);
INSERT INTO `clt_region` VALUES (1156,142,'邯山区',3);
INSERT INTO `clt_region` VALUES (1157,142,'峰峰矿区',3);
INSERT INTO `clt_region` VALUES (1158,142,'武安市',3);
INSERT INTO `clt_region` VALUES (1159,142,'邯郸县',3);
INSERT INTO `clt_region` VALUES (1160,142,'临漳县',3);
INSERT INTO `clt_region` VALUES (1161,142,'成安县',3);
INSERT INTO `clt_region` VALUES (1162,142,'大名县',3);
INSERT INTO `clt_region` VALUES (1163,142,'涉县',3);
INSERT INTO `clt_region` VALUES (1164,142,'磁县',3);
INSERT INTO `clt_region` VALUES (1165,142,'肥乡县',3);
INSERT INTO `clt_region` VALUES (1166,142,'永年县',3);
INSERT INTO `clt_region` VALUES (1167,142,'邱县',3);
INSERT INTO `clt_region` VALUES (1168,142,'鸡泽县',3);
INSERT INTO `clt_region` VALUES (1169,142,'广平县',3);
INSERT INTO `clt_region` VALUES (1170,142,'馆陶县',3);
INSERT INTO `clt_region` VALUES (1171,142,'魏县',3);
INSERT INTO `clt_region` VALUES (1172,142,'曲周县',3);
INSERT INTO `clt_region` VALUES (1173,143,'桃城区',3);
INSERT INTO `clt_region` VALUES (1174,143,'冀州市',3);
INSERT INTO `clt_region` VALUES (1175,143,'深州市',3);
INSERT INTO `clt_region` VALUES (1176,143,'枣强县',3);
INSERT INTO `clt_region` VALUES (1177,143,'武邑县',3);
INSERT INTO `clt_region` VALUES (1178,143,'武强县',3);
INSERT INTO `clt_region` VALUES (1179,143,'饶阳县',3);
INSERT INTO `clt_region` VALUES (1180,143,'安平县',3);
INSERT INTO `clt_region` VALUES (1181,143,'故城县',3);
INSERT INTO `clt_region` VALUES (1182,143,'景县',3);
INSERT INTO `clt_region` VALUES (1183,143,'阜城县',3);
INSERT INTO `clt_region` VALUES (1184,144,'安次区',3);
INSERT INTO `clt_region` VALUES (1185,144,'广阳区',3);
INSERT INTO `clt_region` VALUES (1186,144,'霸州市',3);
INSERT INTO `clt_region` VALUES (1187,144,'三河市',3);
INSERT INTO `clt_region` VALUES (1188,144,'固安县',3);
INSERT INTO `clt_region` VALUES (1189,144,'永清县',3);
INSERT INTO `clt_region` VALUES (1190,144,'香河县',3);
INSERT INTO `clt_region` VALUES (1191,144,'大城县',3);
INSERT INTO `clt_region` VALUES (1192,144,'文安县',3);
INSERT INTO `clt_region` VALUES (1193,144,'大厂',3);
INSERT INTO `clt_region` VALUES (1194,145,'海港区',3);
INSERT INTO `clt_region` VALUES (1195,145,'山海关区',3);
INSERT INTO `clt_region` VALUES (1196,145,'北戴河区',3);
INSERT INTO `clt_region` VALUES (1197,145,'昌黎县',3);
INSERT INTO `clt_region` VALUES (1198,145,'抚宁县',3);
INSERT INTO `clt_region` VALUES (1199,145,'卢龙县',3);
INSERT INTO `clt_region` VALUES (1200,145,'青龙',3);
INSERT INTO `clt_region` VALUES (1201,146,'路北区',3);
INSERT INTO `clt_region` VALUES (1202,146,'路南区',3);
INSERT INTO `clt_region` VALUES (1203,146,'古冶区',3);
INSERT INTO `clt_region` VALUES (1204,146,'开平区',3);
INSERT INTO `clt_region` VALUES (1205,146,'丰南区',3);
INSERT INTO `clt_region` VALUES (1206,146,'丰润区',3);
INSERT INTO `clt_region` VALUES (1207,146,'遵化市',3);
INSERT INTO `clt_region` VALUES (1208,146,'迁安市',3);
INSERT INTO `clt_region` VALUES (1209,146,'滦县',3);
INSERT INTO `clt_region` VALUES (1210,146,'滦南县',3);
INSERT INTO `clt_region` VALUES (1211,146,'乐亭县',3);
INSERT INTO `clt_region` VALUES (1212,146,'迁西县',3);
INSERT INTO `clt_region` VALUES (1213,146,'玉田县',3);
INSERT INTO `clt_region` VALUES (1214,146,'唐海县',3);
INSERT INTO `clt_region` VALUES (1215,147,'桥东区',3);
INSERT INTO `clt_region` VALUES (1216,147,'桥西区',3);
INSERT INTO `clt_region` VALUES (1217,147,'南宫市',3);
INSERT INTO `clt_region` VALUES (1218,147,'沙河市',3);
INSERT INTO `clt_region` VALUES (1219,147,'邢台县',3);
INSERT INTO `clt_region` VALUES (1220,147,'临城县',3);
INSERT INTO `clt_region` VALUES (1221,147,'内丘县',3);
INSERT INTO `clt_region` VALUES (1222,147,'柏乡县',3);
INSERT INTO `clt_region` VALUES (1223,147,'隆尧县',3);
INSERT INTO `clt_region` VALUES (1224,147,'任县',3);
INSERT INTO `clt_region` VALUES (1225,147,'南和县',3);
INSERT INTO `clt_region` VALUES (1226,147,'宁晋县',3);
INSERT INTO `clt_region` VALUES (1227,147,'巨鹿县',3);
INSERT INTO `clt_region` VALUES (1228,147,'新河县',3);
INSERT INTO `clt_region` VALUES (1229,147,'广宗县',3);
INSERT INTO `clt_region` VALUES (1230,147,'平乡县',3);
INSERT INTO `clt_region` VALUES (1231,147,'威县',3);
INSERT INTO `clt_region` VALUES (1232,147,'清河县',3);
INSERT INTO `clt_region` VALUES (1233,147,'临西县',3);
INSERT INTO `clt_region` VALUES (1234,148,'桥西区',3);
INSERT INTO `clt_region` VALUES (1235,148,'桥东区',3);
INSERT INTO `clt_region` VALUES (1236,148,'宣化区',3);
INSERT INTO `clt_region` VALUES (1237,148,'下花园区',3);
INSERT INTO `clt_region` VALUES (1238,148,'宣化县',3);
INSERT INTO `clt_region` VALUES (1239,148,'张北县',3);
INSERT INTO `clt_region` VALUES (1240,148,'康保县',3);
INSERT INTO `clt_region` VALUES (1241,148,'沽源县',3);
INSERT INTO `clt_region` VALUES (1242,148,'尚义县',3);
INSERT INTO `clt_region` VALUES (1243,148,'蔚县',3);
INSERT INTO `clt_region` VALUES (1244,148,'阳原县',3);
INSERT INTO `clt_region` VALUES (1245,148,'怀安县',3);
INSERT INTO `clt_region` VALUES (1246,148,'万全县',3);
INSERT INTO `clt_region` VALUES (1247,148,'怀来县',3);
INSERT INTO `clt_region` VALUES (1248,148,'涿鹿县',3);
INSERT INTO `clt_region` VALUES (1249,148,'赤城县',3);
INSERT INTO `clt_region` VALUES (1250,148,'崇礼县',3);
INSERT INTO `clt_region` VALUES (1251,149,'金水区',3);
INSERT INTO `clt_region` VALUES (1252,149,'邙山区',3);
INSERT INTO `clt_region` VALUES (1253,149,'二七区',3);
INSERT INTO `clt_region` VALUES (1254,149,'管城区',3);
INSERT INTO `clt_region` VALUES (1255,149,'中原区',3);
INSERT INTO `clt_region` VALUES (1256,149,'上街区',3);
INSERT INTO `clt_region` VALUES (1257,149,'惠济区',3);
INSERT INTO `clt_region` VALUES (1258,149,'郑东新区',3);
INSERT INTO `clt_region` VALUES (1259,149,'经济技术开发区',3);
INSERT INTO `clt_region` VALUES (1260,149,'高新开发区',3);
INSERT INTO `clt_region` VALUES (1261,149,'出口加工区',3);
INSERT INTO `clt_region` VALUES (1262,149,'巩义市',3);
INSERT INTO `clt_region` VALUES (1263,149,'荥阳市',3);
INSERT INTO `clt_region` VALUES (1264,149,'新密市',3);
INSERT INTO `clt_region` VALUES (1265,149,'新郑市',3);
INSERT INTO `clt_region` VALUES (1266,149,'登封市',3);
INSERT INTO `clt_region` VALUES (1267,149,'中牟县',3);
INSERT INTO `clt_region` VALUES (1268,150,'西工区',3);
INSERT INTO `clt_region` VALUES (1269,150,'老城区',3);
INSERT INTO `clt_region` VALUES (1270,150,'涧西区',3);
INSERT INTO `clt_region` VALUES (1271,150,'瀍河回族区',3);
INSERT INTO `clt_region` VALUES (1272,150,'洛龙区',3);
INSERT INTO `clt_region` VALUES (1273,150,'吉利区',3);
INSERT INTO `clt_region` VALUES (1274,150,'偃师市',3);
INSERT INTO `clt_region` VALUES (1275,150,'孟津县',3);
INSERT INTO `clt_region` VALUES (1276,150,'新安县',3);
INSERT INTO `clt_region` VALUES (1277,150,'栾川县',3);
INSERT INTO `clt_region` VALUES (1278,150,'嵩县',3);
INSERT INTO `clt_region` VALUES (1279,150,'汝阳县',3);
INSERT INTO `clt_region` VALUES (1280,150,'宜阳县',3);
INSERT INTO `clt_region` VALUES (1281,150,'洛宁县',3);
INSERT INTO `clt_region` VALUES (1282,150,'伊川县',3);
INSERT INTO `clt_region` VALUES (1283,151,'鼓楼区',3);
INSERT INTO `clt_region` VALUES (1284,151,'龙亭区',3);
INSERT INTO `clt_region` VALUES (1285,151,'顺河回族区',3);
INSERT INTO `clt_region` VALUES (1286,151,'金明区',3);
INSERT INTO `clt_region` VALUES (1287,151,'禹王台区',3);
INSERT INTO `clt_region` VALUES (1288,151,'杞县',3);
INSERT INTO `clt_region` VALUES (1289,151,'通许县',3);
INSERT INTO `clt_region` VALUES (1290,151,'尉氏县',3);
INSERT INTO `clt_region` VALUES (1291,151,'开封县',3);
INSERT INTO `clt_region` VALUES (1292,151,'兰考县',3);
INSERT INTO `clt_region` VALUES (1293,152,'北关区',3);
INSERT INTO `clt_region` VALUES (1294,152,'文峰区',3);
INSERT INTO `clt_region` VALUES (1295,152,'殷都区',3);
INSERT INTO `clt_region` VALUES (1296,152,'龙安区',3);
INSERT INTO `clt_region` VALUES (1297,152,'林州市',3);
INSERT INTO `clt_region` VALUES (1298,152,'安阳县',3);
INSERT INTO `clt_region` VALUES (1299,152,'汤阴县',3);
INSERT INTO `clt_region` VALUES (1300,152,'滑县',3);
INSERT INTO `clt_region` VALUES (1301,152,'内黄县',3);
INSERT INTO `clt_region` VALUES (1302,153,'淇滨区',3);
INSERT INTO `clt_region` VALUES (1303,153,'山城区',3);
INSERT INTO `clt_region` VALUES (1304,153,'鹤山区',3);
INSERT INTO `clt_region` VALUES (1305,153,'浚县',3);
INSERT INTO `clt_region` VALUES (1306,153,'淇县',3);
INSERT INTO `clt_region` VALUES (1307,154,'济源市',3);
INSERT INTO `clt_region` VALUES (1308,155,'解放区',3);
INSERT INTO `clt_region` VALUES (1309,155,'中站区',3);
INSERT INTO `clt_region` VALUES (1310,155,'马村区',3);
INSERT INTO `clt_region` VALUES (1311,155,'山阳区',3);
INSERT INTO `clt_region` VALUES (1312,155,'沁阳市',3);
INSERT INTO `clt_region` VALUES (1313,155,'孟州市',3);
INSERT INTO `clt_region` VALUES (1314,155,'修武县',3);
INSERT INTO `clt_region` VALUES (1315,155,'博爱县',3);
INSERT INTO `clt_region` VALUES (1316,155,'武陟县',3);
INSERT INTO `clt_region` VALUES (1317,155,'温县',3);
INSERT INTO `clt_region` VALUES (1318,156,'卧龙区',3);
INSERT INTO `clt_region` VALUES (1319,156,'宛城区',3);
INSERT INTO `clt_region` VALUES (1320,156,'邓州市',3);
INSERT INTO `clt_region` VALUES (1321,156,'南召县',3);
INSERT INTO `clt_region` VALUES (1322,156,'方城县',3);
INSERT INTO `clt_region` VALUES (1323,156,'西峡县',3);
INSERT INTO `clt_region` VALUES (1324,156,'镇平县',3);
INSERT INTO `clt_region` VALUES (1325,156,'内乡县',3);
INSERT INTO `clt_region` VALUES (1326,156,'淅川县',3);
INSERT INTO `clt_region` VALUES (1327,156,'社旗县',3);
INSERT INTO `clt_region` VALUES (1328,156,'唐河县',3);
INSERT INTO `clt_region` VALUES (1329,156,'新野县',3);
INSERT INTO `clt_region` VALUES (1330,156,'桐柏县',3);
INSERT INTO `clt_region` VALUES (1331,157,'新华区',3);
INSERT INTO `clt_region` VALUES (1332,157,'卫东区',3);
INSERT INTO `clt_region` VALUES (1333,157,'湛河区',3);
INSERT INTO `clt_region` VALUES (1334,157,'石龙区',3);
INSERT INTO `clt_region` VALUES (1335,157,'舞钢市',3);
INSERT INTO `clt_region` VALUES (1336,157,'汝州市',3);
INSERT INTO `clt_region` VALUES (1337,157,'宝丰县',3);
INSERT INTO `clt_region` VALUES (1338,157,'叶县',3);
INSERT INTO `clt_region` VALUES (1339,157,'鲁山县',3);
INSERT INTO `clt_region` VALUES (1340,157,'郏县',3);
INSERT INTO `clt_region` VALUES (1341,158,'湖滨区',3);
INSERT INTO `clt_region` VALUES (1342,158,'义马市',3);
INSERT INTO `clt_region` VALUES (1343,158,'灵宝市',3);
INSERT INTO `clt_region` VALUES (1344,158,'渑池县',3);
INSERT INTO `clt_region` VALUES (1345,158,'陕县',3);
INSERT INTO `clt_region` VALUES (1346,158,'卢氏县',3);
INSERT INTO `clt_region` VALUES (1347,159,'梁园区',3);
INSERT INTO `clt_region` VALUES (1348,159,'睢阳区',3);
INSERT INTO `clt_region` VALUES (1349,159,'永城市',3);
INSERT INTO `clt_region` VALUES (1350,159,'民权县',3);
INSERT INTO `clt_region` VALUES (1351,159,'睢县',3);
INSERT INTO `clt_region` VALUES (1352,159,'宁陵县',3);
INSERT INTO `clt_region` VALUES (1353,159,'虞城县',3);
INSERT INTO `clt_region` VALUES (1354,159,'柘城县',3);
INSERT INTO `clt_region` VALUES (1355,159,'夏邑县',3);
INSERT INTO `clt_region` VALUES (1356,160,'卫滨区',3);
INSERT INTO `clt_region` VALUES (1357,160,'红旗区',3);
INSERT INTO `clt_region` VALUES (1358,160,'凤泉区',3);
INSERT INTO `clt_region` VALUES (1359,160,'牧野区',3);
INSERT INTO `clt_region` VALUES (1360,160,'卫辉市',3);
INSERT INTO `clt_region` VALUES (1361,160,'辉县市',3);
INSERT INTO `clt_region` VALUES (1362,160,'新乡县',3);
INSERT INTO `clt_region` VALUES (1363,160,'获嘉县',3);
INSERT INTO `clt_region` VALUES (1364,160,'原阳县',3);
INSERT INTO `clt_region` VALUES (1365,160,'延津县',3);
INSERT INTO `clt_region` VALUES (1366,160,'封丘县',3);
INSERT INTO `clt_region` VALUES (1367,160,'长垣县',3);
INSERT INTO `clt_region` VALUES (1368,161,'浉河区',3);
INSERT INTO `clt_region` VALUES (1369,161,'平桥区',3);
INSERT INTO `clt_region` VALUES (1370,161,'罗山县',3);
INSERT INTO `clt_region` VALUES (1371,161,'光山县',3);
INSERT INTO `clt_region` VALUES (1372,161,'新县',3);
INSERT INTO `clt_region` VALUES (1373,161,'商城县',3);
INSERT INTO `clt_region` VALUES (1374,161,'固始县',3);
INSERT INTO `clt_region` VALUES (1375,161,'潢川县',3);
INSERT INTO `clt_region` VALUES (1376,161,'淮滨县',3);
INSERT INTO `clt_region` VALUES (1377,161,'息县',3);
INSERT INTO `clt_region` VALUES (1378,162,'魏都区',3);
INSERT INTO `clt_region` VALUES (1379,162,'禹州市',3);
INSERT INTO `clt_region` VALUES (1380,162,'长葛市',3);
INSERT INTO `clt_region` VALUES (1381,162,'许昌县',3);
INSERT INTO `clt_region` VALUES (1382,162,'鄢陵县',3);
INSERT INTO `clt_region` VALUES (1383,162,'襄城县',3);
INSERT INTO `clt_region` VALUES (1384,163,'川汇区',3);
INSERT INTO `clt_region` VALUES (1385,163,'项城市',3);
INSERT INTO `clt_region` VALUES (1386,163,'扶沟县',3);
INSERT INTO `clt_region` VALUES (1387,163,'西华县',3);
INSERT INTO `clt_region` VALUES (1388,163,'商水县',3);
INSERT INTO `clt_region` VALUES (1389,163,'沈丘县',3);
INSERT INTO `clt_region` VALUES (1390,163,'郸城县',3);
INSERT INTO `clt_region` VALUES (1391,163,'淮阳县',3);
INSERT INTO `clt_region` VALUES (1392,163,'太康县',3);
INSERT INTO `clt_region` VALUES (1393,163,'鹿邑县',3);
INSERT INTO `clt_region` VALUES (1394,164,'驿城区',3);
INSERT INTO `clt_region` VALUES (1395,164,'西平县',3);
INSERT INTO `clt_region` VALUES (1396,164,'上蔡县',3);
INSERT INTO `clt_region` VALUES (1397,164,'平舆县',3);
INSERT INTO `clt_region` VALUES (1398,164,'正阳县',3);
INSERT INTO `clt_region` VALUES (1399,164,'确山县',3);
INSERT INTO `clt_region` VALUES (1400,164,'泌阳县',3);
INSERT INTO `clt_region` VALUES (1401,164,'汝南县',3);
INSERT INTO `clt_region` VALUES (1402,164,'遂平县',3);
INSERT INTO `clt_region` VALUES (1403,164,'新蔡县',3);
INSERT INTO `clt_region` VALUES (1404,165,'郾城区',3);
INSERT INTO `clt_region` VALUES (1405,165,'源汇区',3);
INSERT INTO `clt_region` VALUES (1406,165,'召陵区',3);
INSERT INTO `clt_region` VALUES (1407,165,'舞阳县',3);
INSERT INTO `clt_region` VALUES (1408,165,'临颍县',3);
INSERT INTO `clt_region` VALUES (1409,166,'华龙区',3);
INSERT INTO `clt_region` VALUES (1410,166,'清丰县',3);
INSERT INTO `clt_region` VALUES (1411,166,'南乐县',3);
INSERT INTO `clt_region` VALUES (1412,166,'范县',3);
INSERT INTO `clt_region` VALUES (1413,166,'台前县',3);
INSERT INTO `clt_region` VALUES (1414,166,'濮阳县',3);
INSERT INTO `clt_region` VALUES (1415,167,'道里区',3);
INSERT INTO `clt_region` VALUES (1416,167,'南岗区',3);
INSERT INTO `clt_region` VALUES (1417,167,'动力区',3);
INSERT INTO `clt_region` VALUES (1418,167,'平房区',3);
INSERT INTO `clt_region` VALUES (1419,167,'香坊区',3);
INSERT INTO `clt_region` VALUES (1420,167,'太平区',3);
INSERT INTO `clt_region` VALUES (1421,167,'道外区',3);
INSERT INTO `clt_region` VALUES (1422,167,'阿城区',3);
INSERT INTO `clt_region` VALUES (1423,167,'呼兰区',3);
INSERT INTO `clt_region` VALUES (1424,167,'松北区',3);
INSERT INTO `clt_region` VALUES (1425,167,'尚志市',3);
INSERT INTO `clt_region` VALUES (1426,167,'双城市',3);
INSERT INTO `clt_region` VALUES (1427,167,'五常市',3);
INSERT INTO `clt_region` VALUES (1428,167,'方正县',3);
INSERT INTO `clt_region` VALUES (1429,167,'宾县',3);
INSERT INTO `clt_region` VALUES (1430,167,'依兰县',3);
INSERT INTO `clt_region` VALUES (1431,167,'巴彦县',3);
INSERT INTO `clt_region` VALUES (1432,167,'通河县',3);
INSERT INTO `clt_region` VALUES (1433,167,'木兰县',3);
INSERT INTO `clt_region` VALUES (1434,167,'延寿县',3);
INSERT INTO `clt_region` VALUES (1435,168,'萨尔图区',3);
INSERT INTO `clt_region` VALUES (1436,168,'红岗区',3);
INSERT INTO `clt_region` VALUES (1437,168,'龙凤区',3);
INSERT INTO `clt_region` VALUES (1438,168,'让胡路区',3);
INSERT INTO `clt_region` VALUES (1439,168,'大同区',3);
INSERT INTO `clt_region` VALUES (1440,168,'肇州县',3);
INSERT INTO `clt_region` VALUES (1441,168,'肇源县',3);
INSERT INTO `clt_region` VALUES (1442,168,'林甸县',3);
INSERT INTO `clt_region` VALUES (1443,168,'杜尔伯特',3);
INSERT INTO `clt_region` VALUES (1444,169,'呼玛县',3);
INSERT INTO `clt_region` VALUES (1445,169,'漠河县',3);
INSERT INTO `clt_region` VALUES (1446,169,'塔河县',3);
INSERT INTO `clt_region` VALUES (1447,170,'兴山区',3);
INSERT INTO `clt_region` VALUES (1448,170,'工农区',3);
INSERT INTO `clt_region` VALUES (1449,170,'南山区',3);
INSERT INTO `clt_region` VALUES (1450,170,'兴安区',3);
INSERT INTO `clt_region` VALUES (1451,170,'向阳区',3);
INSERT INTO `clt_region` VALUES (1452,170,'东山区',3);
INSERT INTO `clt_region` VALUES (1453,170,'萝北县',3);
INSERT INTO `clt_region` VALUES (1454,170,'绥滨县',3);
INSERT INTO `clt_region` VALUES (1455,171,'爱辉区',3);
INSERT INTO `clt_region` VALUES (1456,171,'五大连池市',3);
INSERT INTO `clt_region` VALUES (1457,171,'北安市',3);
INSERT INTO `clt_region` VALUES (1458,171,'嫩江县',3);
INSERT INTO `clt_region` VALUES (1459,171,'逊克县',3);
INSERT INTO `clt_region` VALUES (1460,171,'孙吴县',3);
INSERT INTO `clt_region` VALUES (1461,172,'鸡冠区',3);
INSERT INTO `clt_region` VALUES (1462,172,'恒山区',3);
INSERT INTO `clt_region` VALUES (1463,172,'城子河区',3);
INSERT INTO `clt_region` VALUES (1464,172,'滴道区',3);
INSERT INTO `clt_region` VALUES (1465,172,'梨树区',3);
INSERT INTO `clt_region` VALUES (1466,172,'虎林市',3);
INSERT INTO `clt_region` VALUES (1467,172,'密山市',3);
INSERT INTO `clt_region` VALUES (1468,172,'鸡东县',3);
INSERT INTO `clt_region` VALUES (1469,173,'前进区',3);
INSERT INTO `clt_region` VALUES (1470,173,'郊区',3);
INSERT INTO `clt_region` VALUES (1471,173,'向阳区',3);
INSERT INTO `clt_region` VALUES (1472,173,'东风区',3);
INSERT INTO `clt_region` VALUES (1473,173,'同江市',3);
INSERT INTO `clt_region` VALUES (1474,173,'富锦市',3);
INSERT INTO `clt_region` VALUES (1475,173,'桦南县',3);
INSERT INTO `clt_region` VALUES (1476,173,'桦川县',3);
INSERT INTO `clt_region` VALUES (1477,173,'汤原县',3);
INSERT INTO `clt_region` VALUES (1478,173,'抚远县',3);
INSERT INTO `clt_region` VALUES (1479,174,'爱民区',3);
INSERT INTO `clt_region` VALUES (1480,174,'东安区',3);
INSERT INTO `clt_region` VALUES (1481,174,'阳明区',3);
INSERT INTO `clt_region` VALUES (1482,174,'西安区',3);
INSERT INTO `clt_region` VALUES (1483,174,'绥芬河市',3);
INSERT INTO `clt_region` VALUES (1484,174,'海林市',3);
INSERT INTO `clt_region` VALUES (1485,174,'宁安市',3);
INSERT INTO `clt_region` VALUES (1486,174,'穆棱市',3);
INSERT INTO `clt_region` VALUES (1487,174,'东宁县',3);
INSERT INTO `clt_region` VALUES (1488,174,'林口县',3);
INSERT INTO `clt_region` VALUES (1489,175,'桃山区',3);
INSERT INTO `clt_region` VALUES (1490,175,'新兴区',3);
INSERT INTO `clt_region` VALUES (1491,175,'茄子河区',3);
INSERT INTO `clt_region` VALUES (1492,175,'勃利县',3);
INSERT INTO `clt_region` VALUES (1493,176,'龙沙区',3);
INSERT INTO `clt_region` VALUES (1494,176,'昂昂溪区',3);
INSERT INTO `clt_region` VALUES (1495,176,'铁峰区',3);
INSERT INTO `clt_region` VALUES (1496,176,'建华区',3);
INSERT INTO `clt_region` VALUES (1497,176,'富拉尔基区',3);
INSERT INTO `clt_region` VALUES (1498,176,'碾子山区',3);
INSERT INTO `clt_region` VALUES (1499,176,'梅里斯达斡尔区',3);
INSERT INTO `clt_region` VALUES (1500,176,'讷河市',3);
INSERT INTO `clt_region` VALUES (1501,176,'龙江县',3);
INSERT INTO `clt_region` VALUES (1502,176,'依安县',3);
INSERT INTO `clt_region` VALUES (1503,176,'泰来县',3);
INSERT INTO `clt_region` VALUES (1504,176,'甘南县',3);
INSERT INTO `clt_region` VALUES (1505,176,'富裕县',3);
INSERT INTO `clt_region` VALUES (1506,176,'克山县',3);
INSERT INTO `clt_region` VALUES (1507,176,'克东县',3);
INSERT INTO `clt_region` VALUES (1508,176,'拜泉县',3);
INSERT INTO `clt_region` VALUES (1509,177,'尖山区',3);
INSERT INTO `clt_region` VALUES (1510,177,'岭东区',3);
INSERT INTO `clt_region` VALUES (1511,177,'四方台区',3);
INSERT INTO `clt_region` VALUES (1512,177,'宝山区',3);
INSERT INTO `clt_region` VALUES (1513,177,'集贤县',3);
INSERT INTO `clt_region` VALUES (1514,177,'友谊县',3);
INSERT INTO `clt_region` VALUES (1515,177,'宝清县',3);
INSERT INTO `clt_region` VALUES (1516,177,'饶河县',3);
INSERT INTO `clt_region` VALUES (1517,178,'北林区',3);
INSERT INTO `clt_region` VALUES (1518,178,'安达市',3);
INSERT INTO `clt_region` VALUES (1519,178,'肇东市',3);
INSERT INTO `clt_region` VALUES (1520,178,'海伦市',3);
INSERT INTO `clt_region` VALUES (1521,178,'望奎县',3);
INSERT INTO `clt_region` VALUES (1522,178,'兰西县',3);
INSERT INTO `clt_region` VALUES (1523,178,'青冈县',3);
INSERT INTO `clt_region` VALUES (1524,178,'庆安县',3);
INSERT INTO `clt_region` VALUES (1525,178,'明水县',3);
INSERT INTO `clt_region` VALUES (1526,178,'绥棱县',3);
INSERT INTO `clt_region` VALUES (1527,179,'伊春区',3);
INSERT INTO `clt_region` VALUES (1528,179,'带岭区',3);
INSERT INTO `clt_region` VALUES (1529,179,'南岔区',3);
INSERT INTO `clt_region` VALUES (1530,179,'金山屯区',3);
INSERT INTO `clt_region` VALUES (1531,179,'西林区',3);
INSERT INTO `clt_region` VALUES (1532,179,'美溪区',3);
INSERT INTO `clt_region` VALUES (1533,179,'乌马河区',3);
INSERT INTO `clt_region` VALUES (1534,179,'翠峦区',3);
INSERT INTO `clt_region` VALUES (1535,179,'友好区',3);
INSERT INTO `clt_region` VALUES (1536,179,'上甘岭区',3);
INSERT INTO `clt_region` VALUES (1537,179,'五营区',3);
INSERT INTO `clt_region` VALUES (1538,179,'红星区',3);
INSERT INTO `clt_region` VALUES (1539,179,'新青区',3);
INSERT INTO `clt_region` VALUES (1540,179,'汤旺河区',3);
INSERT INTO `clt_region` VALUES (1541,179,'乌伊岭区',3);
INSERT INTO `clt_region` VALUES (1542,179,'铁力市',3);
INSERT INTO `clt_region` VALUES (1543,179,'嘉荫县',3);
INSERT INTO `clt_region` VALUES (1544,180,'江岸区',3);
INSERT INTO `clt_region` VALUES (1545,180,'武昌区',3);
INSERT INTO `clt_region` VALUES (1546,180,'江汉区',3);
INSERT INTO `clt_region` VALUES (1547,180,'硚口区',3);
INSERT INTO `clt_region` VALUES (1548,180,'汉阳区',3);
INSERT INTO `clt_region` VALUES (1549,180,'青山区',3);
INSERT INTO `clt_region` VALUES (1550,180,'洪山区',3);
INSERT INTO `clt_region` VALUES (1551,180,'东西湖区',3);
INSERT INTO `clt_region` VALUES (1552,180,'汉南区',3);
INSERT INTO `clt_region` VALUES (1553,180,'蔡甸区',3);
INSERT INTO `clt_region` VALUES (1554,180,'江夏区',3);
INSERT INTO `clt_region` VALUES (1555,180,'黄陂区',3);
INSERT INTO `clt_region` VALUES (1556,180,'新洲区',3);
INSERT INTO `clt_region` VALUES (1557,180,'经济开发区',3);
INSERT INTO `clt_region` VALUES (1558,181,'仙桃市',3);
INSERT INTO `clt_region` VALUES (1559,182,'鄂城区',3);
INSERT INTO `clt_region` VALUES (1560,182,'华容区',3);
INSERT INTO `clt_region` VALUES (1561,182,'梁子湖区',3);
INSERT INTO `clt_region` VALUES (1562,183,'黄州区',3);
INSERT INTO `clt_region` VALUES (1563,183,'麻城市',3);
INSERT INTO `clt_region` VALUES (1564,183,'武穴市',3);
INSERT INTO `clt_region` VALUES (1565,183,'团风县',3);
INSERT INTO `clt_region` VALUES (1566,183,'红安县',3);
INSERT INTO `clt_region` VALUES (1567,183,'罗田县',3);
INSERT INTO `clt_region` VALUES (1568,183,'英山县',3);
INSERT INTO `clt_region` VALUES (1569,183,'浠水县',3);
INSERT INTO `clt_region` VALUES (1570,183,'蕲春县',3);
INSERT INTO `clt_region` VALUES (1571,183,'黄梅县',3);
INSERT INTO `clt_region` VALUES (1572,184,'黄石港区',3);
INSERT INTO `clt_region` VALUES (1573,184,'西塞山区',3);
INSERT INTO `clt_region` VALUES (1574,184,'下陆区',3);
INSERT INTO `clt_region` VALUES (1575,184,'铁山区',3);
INSERT INTO `clt_region` VALUES (1576,184,'大冶市',3);
INSERT INTO `clt_region` VALUES (1577,184,'阳新县',3);
INSERT INTO `clt_region` VALUES (1578,185,'东宝区',3);
INSERT INTO `clt_region` VALUES (1579,185,'掇刀区',3);
INSERT INTO `clt_region` VALUES (1580,185,'钟祥市',3);
INSERT INTO `clt_region` VALUES (1581,185,'京山县',3);
INSERT INTO `clt_region` VALUES (1582,185,'沙洋县',3);
INSERT INTO `clt_region` VALUES (1583,186,'沙市区',3);
INSERT INTO `clt_region` VALUES (1584,186,'荆州区',3);
INSERT INTO `clt_region` VALUES (1585,186,'石首市',3);
INSERT INTO `clt_region` VALUES (1586,186,'洪湖市',3);
INSERT INTO `clt_region` VALUES (1587,186,'松滋市',3);
INSERT INTO `clt_region` VALUES (1588,186,'公安县',3);
INSERT INTO `clt_region` VALUES (1589,186,'监利县',3);
INSERT INTO `clt_region` VALUES (1590,186,'江陵县',3);
INSERT INTO `clt_region` VALUES (1591,187,'潜江市',3);
INSERT INTO `clt_region` VALUES (1592,188,'神农架林区',3);
INSERT INTO `clt_region` VALUES (1593,189,'张湾区',3);
INSERT INTO `clt_region` VALUES (1594,189,'茅箭区',3);
INSERT INTO `clt_region` VALUES (1595,189,'丹江口市',3);
INSERT INTO `clt_region` VALUES (1596,189,'郧县',3);
INSERT INTO `clt_region` VALUES (1597,189,'郧西县',3);
INSERT INTO `clt_region` VALUES (1598,189,'竹山县',3);
INSERT INTO `clt_region` VALUES (1599,189,'竹溪县',3);
INSERT INTO `clt_region` VALUES (1600,189,'房县',3);
INSERT INTO `clt_region` VALUES (1601,190,'曾都区',3);
INSERT INTO `clt_region` VALUES (1602,190,'广水市',3);
INSERT INTO `clt_region` VALUES (1603,191,'天门市',3);
INSERT INTO `clt_region` VALUES (1604,192,'咸安区',3);
INSERT INTO `clt_region` VALUES (1605,192,'赤壁市',3);
INSERT INTO `clt_region` VALUES (1606,192,'嘉鱼县',3);
INSERT INTO `clt_region` VALUES (1607,192,'通城县',3);
INSERT INTO `clt_region` VALUES (1608,192,'崇阳县',3);
INSERT INTO `clt_region` VALUES (1609,192,'通山县',3);
INSERT INTO `clt_region` VALUES (1610,193,'襄城区',3);
INSERT INTO `clt_region` VALUES (1611,193,'樊城区',3);
INSERT INTO `clt_region` VALUES (1612,193,'襄阳区',3);
INSERT INTO `clt_region` VALUES (1613,193,'老河口市',3);
INSERT INTO `clt_region` VALUES (1614,193,'枣阳市',3);
INSERT INTO `clt_region` VALUES (1615,193,'宜城市',3);
INSERT INTO `clt_region` VALUES (1616,193,'南漳县',3);
INSERT INTO `clt_region` VALUES (1617,193,'谷城县',3);
INSERT INTO `clt_region` VALUES (1618,193,'保康县',3);
INSERT INTO `clt_region` VALUES (1619,194,'孝南区',3);
INSERT INTO `clt_region` VALUES (1620,194,'应城市',3);
INSERT INTO `clt_region` VALUES (1621,194,'安陆市',3);
INSERT INTO `clt_region` VALUES (1622,194,'汉川市',3);
INSERT INTO `clt_region` VALUES (1623,194,'孝昌县',3);
INSERT INTO `clt_region` VALUES (1624,194,'大悟县',3);
INSERT INTO `clt_region` VALUES (1625,194,'云梦县',3);
INSERT INTO `clt_region` VALUES (1626,195,'长阳',3);
INSERT INTO `clt_region` VALUES (1627,195,'五峰',3);
INSERT INTO `clt_region` VALUES (1628,195,'西陵区',3);
INSERT INTO `clt_region` VALUES (1629,195,'伍家岗区',3);
INSERT INTO `clt_region` VALUES (1630,195,'点军区',3);
INSERT INTO `clt_region` VALUES (1631,195,'猇亭区',3);
INSERT INTO `clt_region` VALUES (1632,195,'夷陵区',3);
INSERT INTO `clt_region` VALUES (1633,195,'宜都市',3);
INSERT INTO `clt_region` VALUES (1634,195,'当阳市',3);
INSERT INTO `clt_region` VALUES (1635,195,'枝江市',3);
INSERT INTO `clt_region` VALUES (1636,195,'远安县',3);
INSERT INTO `clt_region` VALUES (1637,195,'兴山县',3);
INSERT INTO `clt_region` VALUES (1638,195,'秭归县',3);
INSERT INTO `clt_region` VALUES (1639,196,'恩施市',3);
INSERT INTO `clt_region` VALUES (1640,196,'利川市',3);
INSERT INTO `clt_region` VALUES (1641,196,'建始县',3);
INSERT INTO `clt_region` VALUES (1642,196,'巴东县',3);
INSERT INTO `clt_region` VALUES (1643,196,'宣恩县',3);
INSERT INTO `clt_region` VALUES (1644,196,'咸丰县',3);
INSERT INTO `clt_region` VALUES (1645,196,'来凤县',3);
INSERT INTO `clt_region` VALUES (1646,196,'鹤峰县',3);
INSERT INTO `clt_region` VALUES (1647,197,'岳麓区',3);
INSERT INTO `clt_region` VALUES (1648,197,'芙蓉区',3);
INSERT INTO `clt_region` VALUES (1649,197,'天心区',3);
INSERT INTO `clt_region` VALUES (1650,197,'开福区',3);
INSERT INTO `clt_region` VALUES (1651,197,'雨花区',3);
INSERT INTO `clt_region` VALUES (1652,197,'开发区',3);
INSERT INTO `clt_region` VALUES (1653,197,'浏阳市',3);
INSERT INTO `clt_region` VALUES (1654,197,'长沙县',3);
INSERT INTO `clt_region` VALUES (1655,197,'望城县',3);
INSERT INTO `clt_region` VALUES (1656,197,'宁乡县',3);
INSERT INTO `clt_region` VALUES (1657,198,'永定区',3);
INSERT INTO `clt_region` VALUES (1658,198,'武陵源区',3);
INSERT INTO `clt_region` VALUES (1659,198,'慈利县',3);
INSERT INTO `clt_region` VALUES (1660,198,'桑植县',3);
INSERT INTO `clt_region` VALUES (1661,199,'武陵区',3);
INSERT INTO `clt_region` VALUES (1662,199,'鼎城区',3);
INSERT INTO `clt_region` VALUES (1663,199,'津市市',3);
INSERT INTO `clt_region` VALUES (1664,199,'安乡县',3);
INSERT INTO `clt_region` VALUES (1665,199,'汉寿县',3);
INSERT INTO `clt_region` VALUES (1666,199,'澧县',3);
INSERT INTO `clt_region` VALUES (1667,199,'临澧县',3);
INSERT INTO `clt_region` VALUES (1668,199,'桃源县',3);
INSERT INTO `clt_region` VALUES (1669,199,'石门县',3);
INSERT INTO `clt_region` VALUES (1670,200,'北湖区',3);
INSERT INTO `clt_region` VALUES (1671,200,'苏仙区',3);
INSERT INTO `clt_region` VALUES (1672,200,'资兴市',3);
INSERT INTO `clt_region` VALUES (1673,200,'桂阳县',3);
INSERT INTO `clt_region` VALUES (1674,200,'宜章县',3);
INSERT INTO `clt_region` VALUES (1675,200,'永兴县',3);
INSERT INTO `clt_region` VALUES (1676,200,'嘉禾县',3);
INSERT INTO `clt_region` VALUES (1677,200,'临武县',3);
INSERT INTO `clt_region` VALUES (1678,200,'汝城县',3);
INSERT INTO `clt_region` VALUES (1679,200,'桂东县',3);
INSERT INTO `clt_region` VALUES (1680,200,'安仁县',3);
INSERT INTO `clt_region` VALUES (1681,201,'雁峰区',3);
INSERT INTO `clt_region` VALUES (1682,201,'珠晖区',3);
INSERT INTO `clt_region` VALUES (1683,201,'石鼓区',3);
INSERT INTO `clt_region` VALUES (1684,201,'蒸湘区',3);
INSERT INTO `clt_region` VALUES (1685,201,'南岳区',3);
INSERT INTO `clt_region` VALUES (1686,201,'耒阳市',3);
INSERT INTO `clt_region` VALUES (1687,201,'常宁市',3);
INSERT INTO `clt_region` VALUES (1688,201,'衡阳县',3);
INSERT INTO `clt_region` VALUES (1689,201,'衡南县',3);
INSERT INTO `clt_region` VALUES (1690,201,'衡山县',3);
INSERT INTO `clt_region` VALUES (1691,201,'衡东县',3);
INSERT INTO `clt_region` VALUES (1692,201,'祁东县',3);
INSERT INTO `clt_region` VALUES (1693,202,'鹤城区',3);
INSERT INTO `clt_region` VALUES (1694,202,'靖州',3);
INSERT INTO `clt_region` VALUES (1695,202,'麻阳',3);
INSERT INTO `clt_region` VALUES (1696,202,'通道',3);
INSERT INTO `clt_region` VALUES (1697,202,'新晃',3);
INSERT INTO `clt_region` VALUES (1698,202,'芷江',3);
INSERT INTO `clt_region` VALUES (1699,202,'沅陵县',3);
INSERT INTO `clt_region` VALUES (1700,202,'辰溪县',3);
INSERT INTO `clt_region` VALUES (1701,202,'溆浦县',3);
INSERT INTO `clt_region` VALUES (1702,202,'中方县',3);
INSERT INTO `clt_region` VALUES (1703,202,'会同县',3);
INSERT INTO `clt_region` VALUES (1704,202,'洪江市',3);
INSERT INTO `clt_region` VALUES (1705,203,'娄星区',3);
INSERT INTO `clt_region` VALUES (1706,203,'冷水江市',3);
INSERT INTO `clt_region` VALUES (1707,203,'涟源市',3);
INSERT INTO `clt_region` VALUES (1708,203,'双峰县',3);
INSERT INTO `clt_region` VALUES (1709,203,'新化县',3);
INSERT INTO `clt_region` VALUES (1710,204,'城步',3);
INSERT INTO `clt_region` VALUES (1711,204,'双清区',3);
INSERT INTO `clt_region` VALUES (1712,204,'大祥区',3);
INSERT INTO `clt_region` VALUES (1713,204,'北塔区',3);
INSERT INTO `clt_region` VALUES (1714,204,'武冈市',3);
INSERT INTO `clt_region` VALUES (1715,204,'邵东县',3);
INSERT INTO `clt_region` VALUES (1716,204,'新邵县',3);
INSERT INTO `clt_region` VALUES (1717,204,'邵阳县',3);
INSERT INTO `clt_region` VALUES (1718,204,'隆回县',3);
INSERT INTO `clt_region` VALUES (1719,204,'洞口县',3);
INSERT INTO `clt_region` VALUES (1720,204,'绥宁县',3);
INSERT INTO `clt_region` VALUES (1721,204,'新宁县',3);
INSERT INTO `clt_region` VALUES (1722,205,'岳塘区',3);
INSERT INTO `clt_region` VALUES (1723,205,'雨湖区',3);
INSERT INTO `clt_region` VALUES (1724,205,'湘乡市',3);
INSERT INTO `clt_region` VALUES (1725,205,'韶山市',3);
INSERT INTO `clt_region` VALUES (1726,205,'湘潭县',3);
INSERT INTO `clt_region` VALUES (1727,206,'吉首市',3);
INSERT INTO `clt_region` VALUES (1728,206,'泸溪县',3);
INSERT INTO `clt_region` VALUES (1729,206,'凤凰县',3);
INSERT INTO `clt_region` VALUES (1730,206,'花垣县',3);
INSERT INTO `clt_region` VALUES (1731,206,'保靖县',3);
INSERT INTO `clt_region` VALUES (1732,206,'古丈县',3);
INSERT INTO `clt_region` VALUES (1733,206,'永顺县',3);
INSERT INTO `clt_region` VALUES (1734,206,'龙山县',3);
INSERT INTO `clt_region` VALUES (1735,207,'赫山区',3);
INSERT INTO `clt_region` VALUES (1736,207,'资阳区',3);
INSERT INTO `clt_region` VALUES (1737,207,'沅江市',3);
INSERT INTO `clt_region` VALUES (1738,207,'南县',3);
INSERT INTO `clt_region` VALUES (1739,207,'桃江县',3);
INSERT INTO `clt_region` VALUES (1740,207,'安化县',3);
INSERT INTO `clt_region` VALUES (1741,208,'江华',3);
INSERT INTO `clt_region` VALUES (1742,208,'冷水滩区',3);
INSERT INTO `clt_region` VALUES (1743,208,'零陵区',3);
INSERT INTO `clt_region` VALUES (1744,208,'祁阳县',3);
INSERT INTO `clt_region` VALUES (1745,208,'东安县',3);
INSERT INTO `clt_region` VALUES (1746,208,'双牌县',3);
INSERT INTO `clt_region` VALUES (1747,208,'道县',3);
INSERT INTO `clt_region` VALUES (1748,208,'江永县',3);
INSERT INTO `clt_region` VALUES (1749,208,'宁远县',3);
INSERT INTO `clt_region` VALUES (1750,208,'蓝山县',3);
INSERT INTO `clt_region` VALUES (1751,208,'新田县',3);
INSERT INTO `clt_region` VALUES (1752,209,'岳阳楼区',3);
INSERT INTO `clt_region` VALUES (1753,209,'君山区',3);
INSERT INTO `clt_region` VALUES (1754,209,'云溪区',3);
INSERT INTO `clt_region` VALUES (1755,209,'汨罗市',3);
INSERT INTO `clt_region` VALUES (1756,209,'临湘市',3);
INSERT INTO `clt_region` VALUES (1757,209,'岳阳县',3);
INSERT INTO `clt_region` VALUES (1758,209,'华容县',3);
INSERT INTO `clt_region` VALUES (1759,209,'湘阴县',3);
INSERT INTO `clt_region` VALUES (1760,209,'平江县',3);
INSERT INTO `clt_region` VALUES (1761,210,'天元区',3);
INSERT INTO `clt_region` VALUES (1762,210,'荷塘区',3);
INSERT INTO `clt_region` VALUES (1763,210,'芦淞区',3);
INSERT INTO `clt_region` VALUES (1764,210,'石峰区',3);
INSERT INTO `clt_region` VALUES (1765,210,'醴陵市',3);
INSERT INTO `clt_region` VALUES (1766,210,'株洲县',3);
INSERT INTO `clt_region` VALUES (1767,210,'攸县',3);
INSERT INTO `clt_region` VALUES (1768,210,'茶陵县',3);
INSERT INTO `clt_region` VALUES (1769,210,'炎陵县',3);
INSERT INTO `clt_region` VALUES (1770,211,'朝阳区',3);
INSERT INTO `clt_region` VALUES (1771,211,'宽城区',3);
INSERT INTO `clt_region` VALUES (1772,211,'二道区',3);
INSERT INTO `clt_region` VALUES (1773,211,'南关区',3);
INSERT INTO `clt_region` VALUES (1774,211,'绿园区',3);
INSERT INTO `clt_region` VALUES (1775,211,'双阳区',3);
INSERT INTO `clt_region` VALUES (1776,211,'净月潭开发区',3);
INSERT INTO `clt_region` VALUES (1777,211,'高新技术开发区',3);
INSERT INTO `clt_region` VALUES (1778,211,'经济技术开发区',3);
INSERT INTO `clt_region` VALUES (1779,211,'汽车产业开发区',3);
INSERT INTO `clt_region` VALUES (1780,211,'德惠市',3);
INSERT INTO `clt_region` VALUES (1781,211,'九台市',3);
INSERT INTO `clt_region` VALUES (1782,211,'榆树市',3);
INSERT INTO `clt_region` VALUES (1783,211,'农安县',3);
INSERT INTO `clt_region` VALUES (1784,212,'船营区',3);
INSERT INTO `clt_region` VALUES (1785,212,'昌邑区',3);
INSERT INTO `clt_region` VALUES (1786,212,'龙潭区',3);
INSERT INTO `clt_region` VALUES (1787,212,'丰满区',3);
INSERT INTO `clt_region` VALUES (1788,212,'蛟河市',3);
INSERT INTO `clt_region` VALUES (1789,212,'桦甸市',3);
INSERT INTO `clt_region` VALUES (1790,212,'舒兰市',3);
INSERT INTO `clt_region` VALUES (1791,212,'磐石市',3);
INSERT INTO `clt_region` VALUES (1792,212,'永吉县',3);
INSERT INTO `clt_region` VALUES (1793,213,'洮北区',3);
INSERT INTO `clt_region` VALUES (1794,213,'洮南市',3);
INSERT INTO `clt_region` VALUES (1795,213,'大安市',3);
INSERT INTO `clt_region` VALUES (1796,213,'镇赉县',3);
INSERT INTO `clt_region` VALUES (1797,213,'通榆县',3);
INSERT INTO `clt_region` VALUES (1798,214,'江源区',3);
INSERT INTO `clt_region` VALUES (1799,214,'八道江区',3);
INSERT INTO `clt_region` VALUES (1800,214,'长白',3);
INSERT INTO `clt_region` VALUES (1801,214,'临江市',3);
INSERT INTO `clt_region` VALUES (1802,214,'抚松县',3);
INSERT INTO `clt_region` VALUES (1803,214,'靖宇县',3);
INSERT INTO `clt_region` VALUES (1804,215,'龙山区',3);
INSERT INTO `clt_region` VALUES (1805,215,'西安区',3);
INSERT INTO `clt_region` VALUES (1806,215,'东丰县',3);
INSERT INTO `clt_region` VALUES (1807,215,'东辽县',3);
INSERT INTO `clt_region` VALUES (1808,216,'铁西区',3);
INSERT INTO `clt_region` VALUES (1809,216,'铁东区',3);
INSERT INTO `clt_region` VALUES (1810,216,'伊通',3);
INSERT INTO `clt_region` VALUES (1811,216,'公主岭市',3);
INSERT INTO `clt_region` VALUES (1812,216,'双辽市',3);
INSERT INTO `clt_region` VALUES (1813,216,'梨树县',3);
INSERT INTO `clt_region` VALUES (1814,217,'前郭尔罗斯',3);
INSERT INTO `clt_region` VALUES (1815,217,'宁江区',3);
INSERT INTO `clt_region` VALUES (1816,217,'长岭县',3);
INSERT INTO `clt_region` VALUES (1817,217,'乾安县',3);
INSERT INTO `clt_region` VALUES (1818,217,'扶余县',3);
INSERT INTO `clt_region` VALUES (1819,218,'东昌区',3);
INSERT INTO `clt_region` VALUES (1820,218,'二道江区',3);
INSERT INTO `clt_region` VALUES (1821,218,'梅河口市',3);
INSERT INTO `clt_region` VALUES (1822,218,'集安市',3);
INSERT INTO `clt_region` VALUES (1823,218,'通化县',3);
INSERT INTO `clt_region` VALUES (1824,218,'辉南县',3);
INSERT INTO `clt_region` VALUES (1825,218,'柳河县',3);
INSERT INTO `clt_region` VALUES (1826,219,'延吉市',3);
INSERT INTO `clt_region` VALUES (1827,219,'图们市',3);
INSERT INTO `clt_region` VALUES (1828,219,'敦化市',3);
INSERT INTO `clt_region` VALUES (1829,219,'珲春市',3);
INSERT INTO `clt_region` VALUES (1830,219,'龙井市',3);
INSERT INTO `clt_region` VALUES (1831,219,'和龙市',3);
INSERT INTO `clt_region` VALUES (1832,219,'安图县',3);
INSERT INTO `clt_region` VALUES (1833,219,'汪清县',3);
INSERT INTO `clt_region` VALUES (1834,220,'玄武区',3);
INSERT INTO `clt_region` VALUES (1835,220,'鼓楼区',3);
INSERT INTO `clt_region` VALUES (1836,220,'白下区',3);
INSERT INTO `clt_region` VALUES (1837,220,'建邺区',3);
INSERT INTO `clt_region` VALUES (1838,220,'秦淮区',3);
INSERT INTO `clt_region` VALUES (1839,220,'雨花台区',3);
INSERT INTO `clt_region` VALUES (1840,220,'下关区',3);
INSERT INTO `clt_region` VALUES (1841,220,'栖霞区',3);
INSERT INTO `clt_region` VALUES (1842,220,'浦口区',3);
INSERT INTO `clt_region` VALUES (1843,220,'江宁区',3);
INSERT INTO `clt_region` VALUES (1844,220,'六合区',3);
INSERT INTO `clt_region` VALUES (1845,220,'溧水县',3);
INSERT INTO `clt_region` VALUES (1846,220,'高淳县',3);
INSERT INTO `clt_region` VALUES (1847,221,'沧浪区',3);
INSERT INTO `clt_region` VALUES (1848,221,'金阊区',3);
INSERT INTO `clt_region` VALUES (1849,221,'平江区',3);
INSERT INTO `clt_region` VALUES (1850,221,'虎丘区',3);
INSERT INTO `clt_region` VALUES (1851,221,'吴中区',3);
INSERT INTO `clt_region` VALUES (1852,221,'相城区',3);
INSERT INTO `clt_region` VALUES (1853,221,'园区',3);
INSERT INTO `clt_region` VALUES (1854,221,'新区',3);
INSERT INTO `clt_region` VALUES (1855,221,'常熟市',3);
INSERT INTO `clt_region` VALUES (1856,221,'张家港市',3);
INSERT INTO `clt_region` VALUES (1857,221,'玉山镇',3);
INSERT INTO `clt_region` VALUES (1858,221,'巴城镇',3);
INSERT INTO `clt_region` VALUES (1859,221,'周市镇',3);
INSERT INTO `clt_region` VALUES (1860,221,'陆家镇',3);
INSERT INTO `clt_region` VALUES (1861,221,'花桥镇',3);
INSERT INTO `clt_region` VALUES (1862,221,'淀山湖镇',3);
INSERT INTO `clt_region` VALUES (1863,221,'张浦镇',3);
INSERT INTO `clt_region` VALUES (1864,221,'周庄镇',3);
INSERT INTO `clt_region` VALUES (1865,221,'千灯镇',3);
INSERT INTO `clt_region` VALUES (1866,221,'锦溪镇',3);
INSERT INTO `clt_region` VALUES (1867,221,'开发区',3);
INSERT INTO `clt_region` VALUES (1868,221,'吴江市',3);
INSERT INTO `clt_region` VALUES (1869,221,'太仓市',3);
INSERT INTO `clt_region` VALUES (1870,222,'崇安区',3);
INSERT INTO `clt_region` VALUES (1871,222,'北塘区',3);
INSERT INTO `clt_region` VALUES (1872,222,'南长区',3);
INSERT INTO `clt_region` VALUES (1873,222,'锡山区',3);
INSERT INTO `clt_region` VALUES (1874,222,'惠山区',3);
INSERT INTO `clt_region` VALUES (1875,222,'滨湖区',3);
INSERT INTO `clt_region` VALUES (1876,222,'新区',3);
INSERT INTO `clt_region` VALUES (1877,222,'江阴市',3);
INSERT INTO `clt_region` VALUES (1878,222,'宜兴市',3);
INSERT INTO `clt_region` VALUES (1879,223,'天宁区',3);
INSERT INTO `clt_region` VALUES (1880,223,'钟楼区',3);
INSERT INTO `clt_region` VALUES (1881,223,'戚墅堰区',3);
INSERT INTO `clt_region` VALUES (1882,223,'郊区',3);
INSERT INTO `clt_region` VALUES (1883,223,'新北区',3);
INSERT INTO `clt_region` VALUES (1884,223,'武进区',3);
INSERT INTO `clt_region` VALUES (1885,223,'溧阳市',3);
INSERT INTO `clt_region` VALUES (1886,223,'金坛市',3);
INSERT INTO `clt_region` VALUES (1887,224,'清河区',3);
INSERT INTO `clt_region` VALUES (1888,224,'清浦区',3);
INSERT INTO `clt_region` VALUES (1889,224,'楚州区',3);
INSERT INTO `clt_region` VALUES (1890,224,'淮阴区',3);
INSERT INTO `clt_region` VALUES (1891,224,'涟水县',3);
INSERT INTO `clt_region` VALUES (1892,224,'洪泽县',3);
INSERT INTO `clt_region` VALUES (1893,224,'盱眙县',3);
INSERT INTO `clt_region` VALUES (1894,224,'金湖县',3);
INSERT INTO `clt_region` VALUES (1895,225,'新浦区',3);
INSERT INTO `clt_region` VALUES (1896,225,'连云区',3);
INSERT INTO `clt_region` VALUES (1897,225,'海州区',3);
INSERT INTO `clt_region` VALUES (1898,225,'赣榆县',3);
INSERT INTO `clt_region` VALUES (1899,225,'东海县',3);
INSERT INTO `clt_region` VALUES (1900,225,'灌云县',3);
INSERT INTO `clt_region` VALUES (1901,225,'灌南县',3);
INSERT INTO `clt_region` VALUES (1902,226,'崇川区',3);
INSERT INTO `clt_region` VALUES (1903,226,'港闸区',3);
INSERT INTO `clt_region` VALUES (1904,226,'经济开发区',3);
INSERT INTO `clt_region` VALUES (1905,226,'启东市',3);
INSERT INTO `clt_region` VALUES (1906,226,'如皋市',3);
INSERT INTO `clt_region` VALUES (1907,226,'通州市',3);
INSERT INTO `clt_region` VALUES (1908,226,'海门市',3);
INSERT INTO `clt_region` VALUES (1909,226,'海安县',3);
INSERT INTO `clt_region` VALUES (1910,226,'如东县',3);
INSERT INTO `clt_region` VALUES (1911,227,'宿城区',3);
INSERT INTO `clt_region` VALUES (1912,227,'宿豫区',3);
INSERT INTO `clt_region` VALUES (1913,227,'宿豫县',3);
INSERT INTO `clt_region` VALUES (1914,227,'沭阳县',3);
INSERT INTO `clt_region` VALUES (1915,227,'泗阳县',3);
INSERT INTO `clt_region` VALUES (1916,227,'泗洪县',3);
INSERT INTO `clt_region` VALUES (1917,228,'海陵区',3);
INSERT INTO `clt_region` VALUES (1918,228,'高港区',3);
INSERT INTO `clt_region` VALUES (1919,228,'兴化市',3);
INSERT INTO `clt_region` VALUES (1920,228,'靖江市',3);
INSERT INTO `clt_region` VALUES (1921,228,'泰兴市',3);
INSERT INTO `clt_region` VALUES (1922,228,'姜堰市',3);
INSERT INTO `clt_region` VALUES (1923,229,'云龙区',3);
INSERT INTO `clt_region` VALUES (1924,229,'鼓楼区',3);
INSERT INTO `clt_region` VALUES (1925,229,'九里区',3);
INSERT INTO `clt_region` VALUES (1926,229,'贾汪区',3);
INSERT INTO `clt_region` VALUES (1927,229,'泉山区',3);
INSERT INTO `clt_region` VALUES (1928,229,'新沂市',3);
INSERT INTO `clt_region` VALUES (1929,229,'邳州市',3);
INSERT INTO `clt_region` VALUES (1930,229,'丰县',3);
INSERT INTO `clt_region` VALUES (1931,229,'沛县',3);
INSERT INTO `clt_region` VALUES (1932,229,'铜山县',3);
INSERT INTO `clt_region` VALUES (1933,229,'睢宁县',3);
INSERT INTO `clt_region` VALUES (1934,230,'城区',3);
INSERT INTO `clt_region` VALUES (1935,230,'亭湖区',3);
INSERT INTO `clt_region` VALUES (1936,230,'盐都区',3);
INSERT INTO `clt_region` VALUES (1937,230,'盐都县',3);
INSERT INTO `clt_region` VALUES (1938,230,'东台市',3);
INSERT INTO `clt_region` VALUES (1939,230,'大丰市',3);
INSERT INTO `clt_region` VALUES (1940,230,'响水县',3);
INSERT INTO `clt_region` VALUES (1941,230,'滨海县',3);
INSERT INTO `clt_region` VALUES (1942,230,'阜宁县',3);
INSERT INTO `clt_region` VALUES (1943,230,'射阳县',3);
INSERT INTO `clt_region` VALUES (1944,230,'建湖县',3);
INSERT INTO `clt_region` VALUES (1945,231,'广陵区',3);
INSERT INTO `clt_region` VALUES (1946,231,'维扬区',3);
INSERT INTO `clt_region` VALUES (1947,231,'邗江区',3);
INSERT INTO `clt_region` VALUES (1948,231,'仪征市',3);
INSERT INTO `clt_region` VALUES (1949,231,'高邮市',3);
INSERT INTO `clt_region` VALUES (1950,231,'江都市',3);
INSERT INTO `clt_region` VALUES (1951,231,'宝应县',3);
INSERT INTO `clt_region` VALUES (1952,232,'京口区',3);
INSERT INTO `clt_region` VALUES (1953,232,'润州区',3);
INSERT INTO `clt_region` VALUES (1954,232,'丹徒区',3);
INSERT INTO `clt_region` VALUES (1955,232,'丹阳市',3);
INSERT INTO `clt_region` VALUES (1956,232,'扬中市',3);
INSERT INTO `clt_region` VALUES (1957,232,'句容市',3);
INSERT INTO `clt_region` VALUES (1958,233,'东湖区',3);
INSERT INTO `clt_region` VALUES (1959,233,'西湖区',3);
INSERT INTO `clt_region` VALUES (1960,233,'青云谱区',3);
INSERT INTO `clt_region` VALUES (1961,233,'湾里区',3);
INSERT INTO `clt_region` VALUES (1962,233,'青山湖区',3);
INSERT INTO `clt_region` VALUES (1963,233,'红谷滩新区',3);
INSERT INTO `clt_region` VALUES (1964,233,'昌北区',3);
INSERT INTO `clt_region` VALUES (1965,233,'高新区',3);
INSERT INTO `clt_region` VALUES (1966,233,'南昌县',3);
INSERT INTO `clt_region` VALUES (1967,233,'新建县',3);
INSERT INTO `clt_region` VALUES (1968,233,'安义县',3);
INSERT INTO `clt_region` VALUES (1969,233,'进贤县',3);
INSERT INTO `clt_region` VALUES (1970,234,'临川区',3);
INSERT INTO `clt_region` VALUES (1971,234,'南城县',3);
INSERT INTO `clt_region` VALUES (1972,234,'黎川县',3);
INSERT INTO `clt_region` VALUES (1973,234,'南丰县',3);
INSERT INTO `clt_region` VALUES (1974,234,'崇仁县',3);
INSERT INTO `clt_region` VALUES (1975,234,'乐安县',3);
INSERT INTO `clt_region` VALUES (1976,234,'宜黄县',3);
INSERT INTO `clt_region` VALUES (1977,234,'金溪县',3);
INSERT INTO `clt_region` VALUES (1978,234,'资溪县',3);
INSERT INTO `clt_region` VALUES (1979,234,'东乡县',3);
INSERT INTO `clt_region` VALUES (1980,234,'广昌县',3);
INSERT INTO `clt_region` VALUES (1981,235,'章贡区',3);
INSERT INTO `clt_region` VALUES (1982,235,'于都县',3);
INSERT INTO `clt_region` VALUES (1983,235,'瑞金市',3);
INSERT INTO `clt_region` VALUES (1984,235,'南康市',3);
INSERT INTO `clt_region` VALUES (1985,235,'赣县',3);
INSERT INTO `clt_region` VALUES (1986,235,'信丰县',3);
INSERT INTO `clt_region` VALUES (1987,235,'大余县',3);
INSERT INTO `clt_region` VALUES (1988,235,'上犹县',3);
INSERT INTO `clt_region` VALUES (1989,235,'崇义县',3);
INSERT INTO `clt_region` VALUES (1990,235,'安远县',3);
INSERT INTO `clt_region` VALUES (1991,235,'龙南县',3);
INSERT INTO `clt_region` VALUES (1992,235,'定南县',3);
INSERT INTO `clt_region` VALUES (1993,235,'全南县',3);
INSERT INTO `clt_region` VALUES (1994,235,'宁都县',3);
INSERT INTO `clt_region` VALUES (1995,235,'兴国县',3);
INSERT INTO `clt_region` VALUES (1996,235,'会昌县',3);
INSERT INTO `clt_region` VALUES (1997,235,'寻乌县',3);
INSERT INTO `clt_region` VALUES (1998,235,'石城县',3);
INSERT INTO `clt_region` VALUES (1999,236,'安福县',3);
INSERT INTO `clt_region` VALUES (2000,236,'吉州区',3);
INSERT INTO `clt_region` VALUES (2001,236,'青原区',3);
INSERT INTO `clt_region` VALUES (2002,236,'井冈山市',3);
INSERT INTO `clt_region` VALUES (2003,236,'吉安县',3);
INSERT INTO `clt_region` VALUES (2004,236,'吉水县',3);
INSERT INTO `clt_region` VALUES (2005,236,'峡江县',3);
INSERT INTO `clt_region` VALUES (2006,236,'新干县',3);
INSERT INTO `clt_region` VALUES (2007,236,'永丰县',3);
INSERT INTO `clt_region` VALUES (2008,236,'泰和县',3);
INSERT INTO `clt_region` VALUES (2009,236,'遂川县',3);
INSERT INTO `clt_region` VALUES (2010,236,'万安县',3);
INSERT INTO `clt_region` VALUES (2011,236,'永新县',3);
INSERT INTO `clt_region` VALUES (2012,237,'珠山区',3);
INSERT INTO `clt_region` VALUES (2013,237,'昌江区',3);
INSERT INTO `clt_region` VALUES (2014,237,'乐平市',3);
INSERT INTO `clt_region` VALUES (2015,237,'浮梁县',3);
INSERT INTO `clt_region` VALUES (2016,238,'浔阳区',3);
INSERT INTO `clt_region` VALUES (2017,238,'庐山区',3);
INSERT INTO `clt_region` VALUES (2018,238,'瑞昌市',3);
INSERT INTO `clt_region` VALUES (2019,238,'九江县',3);
INSERT INTO `clt_region` VALUES (2020,238,'武宁县',3);
INSERT INTO `clt_region` VALUES (2021,238,'修水县',3);
INSERT INTO `clt_region` VALUES (2022,238,'永修县',3);
INSERT INTO `clt_region` VALUES (2023,238,'德安县',3);
INSERT INTO `clt_region` VALUES (2024,238,'星子县',3);
INSERT INTO `clt_region` VALUES (2025,238,'都昌县',3);
INSERT INTO `clt_region` VALUES (2026,238,'湖口县',3);
INSERT INTO `clt_region` VALUES (2027,238,'彭泽县',3);
INSERT INTO `clt_region` VALUES (2028,239,'安源区',3);
INSERT INTO `clt_region` VALUES (2029,239,'湘东区',3);
INSERT INTO `clt_region` VALUES (2030,239,'莲花县',3);
INSERT INTO `clt_region` VALUES (2031,239,'芦溪县',3);
INSERT INTO `clt_region` VALUES (2032,239,'上栗县',3);
INSERT INTO `clt_region` VALUES (2033,240,'信州区',3);
INSERT INTO `clt_region` VALUES (2034,240,'德兴市',3);
INSERT INTO `clt_region` VALUES (2035,240,'上饶县',3);
INSERT INTO `clt_region` VALUES (2036,240,'广丰县',3);
INSERT INTO `clt_region` VALUES (2037,240,'玉山县',3);
INSERT INTO `clt_region` VALUES (2038,240,'铅山县',3);
INSERT INTO `clt_region` VALUES (2039,240,'横峰县',3);
INSERT INTO `clt_region` VALUES (2040,240,'弋阳县',3);
INSERT INTO `clt_region` VALUES (2041,240,'余干县',3);
INSERT INTO `clt_region` VALUES (2042,240,'波阳县',3);
INSERT INTO `clt_region` VALUES (2043,240,'万年县',3);
INSERT INTO `clt_region` VALUES (2044,240,'婺源县',3);
INSERT INTO `clt_region` VALUES (2045,241,'渝水区',3);
INSERT INTO `clt_region` VALUES (2046,241,'分宜县',3);
INSERT INTO `clt_region` VALUES (2047,242,'袁州区',3);
INSERT INTO `clt_region` VALUES (2048,242,'丰城市',3);
INSERT INTO `clt_region` VALUES (2049,242,'樟树市',3);
INSERT INTO `clt_region` VALUES (2050,242,'高安市',3);
INSERT INTO `clt_region` VALUES (2051,242,'奉新县',3);
INSERT INTO `clt_region` VALUES (2052,242,'万载县',3);
INSERT INTO `clt_region` VALUES (2053,242,'上高县',3);
INSERT INTO `clt_region` VALUES (2054,242,'宜丰县',3);
INSERT INTO `clt_region` VALUES (2055,242,'靖安县',3);
INSERT INTO `clt_region` VALUES (2056,242,'铜鼓县',3);
INSERT INTO `clt_region` VALUES (2057,243,'月湖区',3);
INSERT INTO `clt_region` VALUES (2058,243,'贵溪市',3);
INSERT INTO `clt_region` VALUES (2059,243,'余江县',3);
INSERT INTO `clt_region` VALUES (2060,244,'沈河区',3);
INSERT INTO `clt_region` VALUES (2061,244,'皇姑区',3);
INSERT INTO `clt_region` VALUES (2062,244,'和平区',3);
INSERT INTO `clt_region` VALUES (2063,244,'大东区',3);
INSERT INTO `clt_region` VALUES (2064,244,'铁西区',3);
INSERT INTO `clt_region` VALUES (2065,244,'苏家屯区',3);
INSERT INTO `clt_region` VALUES (2066,244,'东陵区',3);
INSERT INTO `clt_region` VALUES (2067,244,'沈北新区',3);
INSERT INTO `clt_region` VALUES (2068,244,'于洪区',3);
INSERT INTO `clt_region` VALUES (2069,244,'浑南新区',3);
INSERT INTO `clt_region` VALUES (2070,244,'新民市',3);
INSERT INTO `clt_region` VALUES (2071,244,'辽中县',3);
INSERT INTO `clt_region` VALUES (2072,244,'康平县',3);
INSERT INTO `clt_region` VALUES (2073,244,'法库县',3);
INSERT INTO `clt_region` VALUES (2074,245,'西岗区',3);
INSERT INTO `clt_region` VALUES (2075,245,'中山区',3);
INSERT INTO `clt_region` VALUES (2076,245,'沙河口区',3);
INSERT INTO `clt_region` VALUES (2077,245,'甘井子区',3);
INSERT INTO `clt_region` VALUES (2078,245,'旅顺口区',3);
INSERT INTO `clt_region` VALUES (2079,245,'金州区',3);
INSERT INTO `clt_region` VALUES (2080,245,'开发区',3);
INSERT INTO `clt_region` VALUES (2081,245,'瓦房店市',3);
INSERT INTO `clt_region` VALUES (2082,245,'普兰店市',3);
INSERT INTO `clt_region` VALUES (2083,245,'庄河市',3);
INSERT INTO `clt_region` VALUES (2084,245,'长海县',3);
INSERT INTO `clt_region` VALUES (2085,246,'铁东区',3);
INSERT INTO `clt_region` VALUES (2086,246,'铁西区',3);
INSERT INTO `clt_region` VALUES (2087,246,'立山区',3);
INSERT INTO `clt_region` VALUES (2088,246,'千山区',3);
INSERT INTO `clt_region` VALUES (2089,246,'岫岩',3);
INSERT INTO `clt_region` VALUES (2090,246,'海城市',3);
INSERT INTO `clt_region` VALUES (2091,246,'台安县',3);
INSERT INTO `clt_region` VALUES (2092,247,'本溪',3);
INSERT INTO `clt_region` VALUES (2093,247,'平山区',3);
INSERT INTO `clt_region` VALUES (2094,247,'明山区',3);
INSERT INTO `clt_region` VALUES (2095,247,'溪湖区',3);
INSERT INTO `clt_region` VALUES (2096,247,'南芬区',3);
INSERT INTO `clt_region` VALUES (2097,247,'桓仁',3);
INSERT INTO `clt_region` VALUES (2098,248,'双塔区',3);
INSERT INTO `clt_region` VALUES (2099,248,'龙城区',3);
INSERT INTO `clt_region` VALUES (2100,248,'喀喇沁左翼蒙古族自治县',3);
INSERT INTO `clt_region` VALUES (2101,248,'北票市',3);
INSERT INTO `clt_region` VALUES (2102,248,'凌源市',3);
INSERT INTO `clt_region` VALUES (2103,248,'朝阳县',3);
INSERT INTO `clt_region` VALUES (2104,248,'建平县',3);
INSERT INTO `clt_region` VALUES (2105,249,'振兴区',3);
INSERT INTO `clt_region` VALUES (2106,249,'元宝区',3);
INSERT INTO `clt_region` VALUES (2107,249,'振安区',3);
INSERT INTO `clt_region` VALUES (2108,249,'宽甸',3);
INSERT INTO `clt_region` VALUES (2109,249,'东港市',3);
INSERT INTO `clt_region` VALUES (2110,249,'凤城市',3);
INSERT INTO `clt_region` VALUES (2111,250,'顺城区',3);
INSERT INTO `clt_region` VALUES (2112,250,'新抚区',3);
INSERT INTO `clt_region` VALUES (2113,250,'东洲区',3);
INSERT INTO `clt_region` VALUES (2114,250,'望花区',3);
INSERT INTO `clt_region` VALUES (2115,250,'清原',3);
INSERT INTO `clt_region` VALUES (2116,250,'新宾',3);
INSERT INTO `clt_region` VALUES (2117,250,'抚顺县',3);
INSERT INTO `clt_region` VALUES (2118,251,'阜新',3);
INSERT INTO `clt_region` VALUES (2119,251,'海州区',3);
INSERT INTO `clt_region` VALUES (2120,251,'新邱区',3);
INSERT INTO `clt_region` VALUES (2121,251,'太平区',3);
INSERT INTO `clt_region` VALUES (2122,251,'清河门区',3);
INSERT INTO `clt_region` VALUES (2123,251,'细河区',3);
INSERT INTO `clt_region` VALUES (2124,251,'彰武县',3);
INSERT INTO `clt_region` VALUES (2125,252,'龙港区',3);
INSERT INTO `clt_region` VALUES (2126,252,'南票区',3);
INSERT INTO `clt_region` VALUES (2127,252,'连山区',3);
INSERT INTO `clt_region` VALUES (2128,252,'兴城市',3);
INSERT INTO `clt_region` VALUES (2129,252,'绥中县',3);
INSERT INTO `clt_region` VALUES (2130,252,'建昌县',3);
INSERT INTO `clt_region` VALUES (2131,253,'太和区',3);
INSERT INTO `clt_region` VALUES (2132,253,'古塔区',3);
INSERT INTO `clt_region` VALUES (2133,253,'凌河区',3);
INSERT INTO `clt_region` VALUES (2134,253,'凌海市',3);
INSERT INTO `clt_region` VALUES (2135,253,'北镇市',3);
INSERT INTO `clt_region` VALUES (2136,253,'黑山县',3);
INSERT INTO `clt_region` VALUES (2137,253,'义县',3);
INSERT INTO `clt_region` VALUES (2138,254,'白塔区',3);
INSERT INTO `clt_region` VALUES (2139,254,'文圣区',3);
INSERT INTO `clt_region` VALUES (2140,254,'宏伟区',3);
INSERT INTO `clt_region` VALUES (2141,254,'太子河区',3);
INSERT INTO `clt_region` VALUES (2142,254,'弓长岭区',3);
INSERT INTO `clt_region` VALUES (2143,254,'灯塔市',3);
INSERT INTO `clt_region` VALUES (2144,254,'辽阳县',3);
INSERT INTO `clt_region` VALUES (2145,255,'双台子区',3);
INSERT INTO `clt_region` VALUES (2146,255,'兴隆台区',3);
INSERT INTO `clt_region` VALUES (2147,255,'大洼县',3);
INSERT INTO `clt_region` VALUES (2148,255,'盘山县',3);
INSERT INTO `clt_region` VALUES (2149,256,'银州区',3);
INSERT INTO `clt_region` VALUES (2150,256,'清河区',3);
INSERT INTO `clt_region` VALUES (2151,256,'调兵山市',3);
INSERT INTO `clt_region` VALUES (2152,256,'开原市',3);
INSERT INTO `clt_region` VALUES (2153,256,'铁岭县',3);
INSERT INTO `clt_region` VALUES (2154,256,'西丰县',3);
INSERT INTO `clt_region` VALUES (2155,256,'昌图县',3);
INSERT INTO `clt_region` VALUES (2156,257,'站前区',3);
INSERT INTO `clt_region` VALUES (2157,257,'西市区',3);
INSERT INTO `clt_region` VALUES (2158,257,'鲅鱼圈区',3);
INSERT INTO `clt_region` VALUES (2159,257,'老边区',3);
INSERT INTO `clt_region` VALUES (2160,257,'盖州市',3);
INSERT INTO `clt_region` VALUES (2161,257,'大石桥市',3);
INSERT INTO `clt_region` VALUES (2162,258,'回民区',3);
INSERT INTO `clt_region` VALUES (2163,258,'玉泉区',3);
INSERT INTO `clt_region` VALUES (2164,258,'新城区',3);
INSERT INTO `clt_region` VALUES (2165,258,'赛罕区',3);
INSERT INTO `clt_region` VALUES (2166,258,'清水河县',3);
INSERT INTO `clt_region` VALUES (2167,258,'土默特左旗',3);
INSERT INTO `clt_region` VALUES (2168,258,'托克托县',3);
INSERT INTO `clt_region` VALUES (2169,258,'和林格尔县',3);
INSERT INTO `clt_region` VALUES (2170,258,'武川县',3);
INSERT INTO `clt_region` VALUES (2171,259,'阿拉善左旗',3);
INSERT INTO `clt_region` VALUES (2172,259,'阿拉善右旗',3);
INSERT INTO `clt_region` VALUES (2173,259,'额济纳旗',3);
INSERT INTO `clt_region` VALUES (2174,260,'临河区',3);
INSERT INTO `clt_region` VALUES (2175,260,'五原县',3);
INSERT INTO `clt_region` VALUES (2176,260,'磴口县',3);
INSERT INTO `clt_region` VALUES (2177,260,'乌拉特前旗',3);
INSERT INTO `clt_region` VALUES (2178,260,'乌拉特中旗',3);
INSERT INTO `clt_region` VALUES (2179,260,'乌拉特后旗',3);
INSERT INTO `clt_region` VALUES (2180,260,'杭锦后旗',3);
INSERT INTO `clt_region` VALUES (2181,261,'昆都仑区',3);
INSERT INTO `clt_region` VALUES (2182,261,'青山区',3);
INSERT INTO `clt_region` VALUES (2183,261,'东河区',3);
INSERT INTO `clt_region` VALUES (2184,261,'九原区',3);
INSERT INTO `clt_region` VALUES (2185,261,'石拐区',3);
INSERT INTO `clt_region` VALUES (2186,261,'白云矿区',3);
INSERT INTO `clt_region` VALUES (2187,261,'土默特右旗',3);
INSERT INTO `clt_region` VALUES (2188,261,'固阳县',3);
INSERT INTO `clt_region` VALUES (2189,261,'达尔罕茂明安联合旗',3);
INSERT INTO `clt_region` VALUES (2190,262,'红山区',3);
INSERT INTO `clt_region` VALUES (2191,262,'元宝山区',3);
INSERT INTO `clt_region` VALUES (2192,262,'松山区',3);
INSERT INTO `clt_region` VALUES (2193,262,'阿鲁科尔沁旗',3);
INSERT INTO `clt_region` VALUES (2194,262,'巴林左旗',3);
INSERT INTO `clt_region` VALUES (2195,262,'巴林右旗',3);
INSERT INTO `clt_region` VALUES (2196,262,'林西县',3);
INSERT INTO `clt_region` VALUES (2197,262,'克什克腾旗',3);
INSERT INTO `clt_region` VALUES (2198,262,'翁牛特旗',3);
INSERT INTO `clt_region` VALUES (2199,262,'喀喇沁旗',3);
INSERT INTO `clt_region` VALUES (2200,262,'宁城县',3);
INSERT INTO `clt_region` VALUES (2201,262,'敖汉旗',3);
INSERT INTO `clt_region` VALUES (2202,263,'东胜区',3);
INSERT INTO `clt_region` VALUES (2203,263,'达拉特旗',3);
INSERT INTO `clt_region` VALUES (2204,263,'准格尔旗',3);
INSERT INTO `clt_region` VALUES (2205,263,'鄂托克前旗',3);
INSERT INTO `clt_region` VALUES (2206,263,'鄂托克旗',3);
INSERT INTO `clt_region` VALUES (2207,263,'杭锦旗',3);
INSERT INTO `clt_region` VALUES (2208,263,'乌审旗',3);
INSERT INTO `clt_region` VALUES (2209,263,'伊金霍洛旗',3);
INSERT INTO `clt_region` VALUES (2210,264,'海拉尔区',3);
INSERT INTO `clt_region` VALUES (2211,264,'莫力达瓦',3);
INSERT INTO `clt_region` VALUES (2212,264,'满洲里市',3);
INSERT INTO `clt_region` VALUES (2213,264,'牙克石市',3);
INSERT INTO `clt_region` VALUES (2214,264,'扎兰屯市',3);
INSERT INTO `clt_region` VALUES (2215,264,'额尔古纳市',3);
INSERT INTO `clt_region` VALUES (2216,264,'根河市',3);
INSERT INTO `clt_region` VALUES (2217,264,'阿荣旗',3);
INSERT INTO `clt_region` VALUES (2218,264,'鄂伦春自治旗',3);
INSERT INTO `clt_region` VALUES (2219,264,'鄂温克族自治旗',3);
INSERT INTO `clt_region` VALUES (2220,264,'陈巴尔虎旗',3);
INSERT INTO `clt_region` VALUES (2221,264,'新巴尔虎左旗',3);
INSERT INTO `clt_region` VALUES (2222,264,'新巴尔虎右旗',3);
INSERT INTO `clt_region` VALUES (2223,265,'科尔沁区',3);
INSERT INTO `clt_region` VALUES (2224,265,'霍林郭勒市',3);
INSERT INTO `clt_region` VALUES (2225,265,'科尔沁左翼中旗',3);
INSERT INTO `clt_region` VALUES (2226,265,'科尔沁左翼后旗',3);
INSERT INTO `clt_region` VALUES (2227,265,'开鲁县',3);
INSERT INTO `clt_region` VALUES (2228,265,'库伦旗',3);
INSERT INTO `clt_region` VALUES (2229,265,'奈曼旗',3);
INSERT INTO `clt_region` VALUES (2230,265,'扎鲁特旗',3);
INSERT INTO `clt_region` VALUES (2231,266,'海勃湾区',3);
INSERT INTO `clt_region` VALUES (2232,266,'乌达区',3);
INSERT INTO `clt_region` VALUES (2233,266,'海南区',3);
INSERT INTO `clt_region` VALUES (2234,267,'化德县',3);
INSERT INTO `clt_region` VALUES (2235,267,'集宁区',3);
INSERT INTO `clt_region` VALUES (2236,267,'丰镇市',3);
INSERT INTO `clt_region` VALUES (2237,267,'卓资县',3);
INSERT INTO `clt_region` VALUES (2238,267,'商都县',3);
INSERT INTO `clt_region` VALUES (2239,267,'兴和县',3);
INSERT INTO `clt_region` VALUES (2240,267,'凉城县',3);
INSERT INTO `clt_region` VALUES (2241,267,'察哈尔右翼前旗',3);
INSERT INTO `clt_region` VALUES (2242,267,'察哈尔右翼中旗',3);
INSERT INTO `clt_region` VALUES (2243,267,'察哈尔右翼后旗',3);
INSERT INTO `clt_region` VALUES (2244,267,'四子王旗',3);
INSERT INTO `clt_region` VALUES (2245,268,'二连浩特市',3);
INSERT INTO `clt_region` VALUES (2246,268,'锡林浩特市',3);
INSERT INTO `clt_region` VALUES (2247,268,'阿巴嘎旗',3);
INSERT INTO `clt_region` VALUES (2248,268,'苏尼特左旗',3);
INSERT INTO `clt_region` VALUES (2249,268,'苏尼特右旗',3);
INSERT INTO `clt_region` VALUES (2250,268,'东乌珠穆沁旗',3);
INSERT INTO `clt_region` VALUES (2251,268,'西乌珠穆沁旗',3);
INSERT INTO `clt_region` VALUES (2252,268,'太仆寺旗',3);
INSERT INTO `clt_region` VALUES (2253,268,'镶黄旗',3);
INSERT INTO `clt_region` VALUES (2254,268,'正镶白旗',3);
INSERT INTO `clt_region` VALUES (2255,268,'正蓝旗',3);
INSERT INTO `clt_region` VALUES (2256,268,'多伦县',3);
INSERT INTO `clt_region` VALUES (2257,269,'乌兰浩特市',3);
INSERT INTO `clt_region` VALUES (2258,269,'阿尔山市',3);
INSERT INTO `clt_region` VALUES (2259,269,'科尔沁右翼前旗',3);
INSERT INTO `clt_region` VALUES (2260,269,'科尔沁右翼中旗',3);
INSERT INTO `clt_region` VALUES (2261,269,'扎赉特旗',3);
INSERT INTO `clt_region` VALUES (2262,269,'突泉县',3);
INSERT INTO `clt_region` VALUES (2263,270,'西夏区',3);
INSERT INTO `clt_region` VALUES (2264,270,'金凤区',3);
INSERT INTO `clt_region` VALUES (2265,270,'兴庆区',3);
INSERT INTO `clt_region` VALUES (2266,270,'灵武市',3);
INSERT INTO `clt_region` VALUES (2267,270,'永宁县',3);
INSERT INTO `clt_region` VALUES (2268,270,'贺兰县',3);
INSERT INTO `clt_region` VALUES (2269,271,'原州区',3);
INSERT INTO `clt_region` VALUES (2270,271,'海原县',3);
INSERT INTO `clt_region` VALUES (2271,271,'西吉县',3);
INSERT INTO `clt_region` VALUES (2272,271,'隆德县',3);
INSERT INTO `clt_region` VALUES (2273,271,'泾源县',3);
INSERT INTO `clt_region` VALUES (2274,271,'彭阳县',3);
INSERT INTO `clt_region` VALUES (2275,272,'惠农县',3);
INSERT INTO `clt_region` VALUES (2276,272,'大武口区',3);
INSERT INTO `clt_region` VALUES (2277,272,'惠农区',3);
INSERT INTO `clt_region` VALUES (2278,272,'陶乐县',3);
INSERT INTO `clt_region` VALUES (2279,272,'平罗县',3);
INSERT INTO `clt_region` VALUES (2280,273,'利通区',3);
INSERT INTO `clt_region` VALUES (2281,273,'中卫县',3);
INSERT INTO `clt_region` VALUES (2282,273,'青铜峡市',3);
INSERT INTO `clt_region` VALUES (2283,273,'中宁县',3);
INSERT INTO `clt_region` VALUES (2284,273,'盐池县',3);
INSERT INTO `clt_region` VALUES (2285,273,'同心县',3);
INSERT INTO `clt_region` VALUES (2286,274,'沙坡头区',3);
INSERT INTO `clt_region` VALUES (2287,274,'海原县',3);
INSERT INTO `clt_region` VALUES (2288,274,'中宁县',3);
INSERT INTO `clt_region` VALUES (2289,275,'城中区',3);
INSERT INTO `clt_region` VALUES (2290,275,'城东区',3);
INSERT INTO `clt_region` VALUES (2291,275,'城西区',3);
INSERT INTO `clt_region` VALUES (2292,275,'城北区',3);
INSERT INTO `clt_region` VALUES (2293,275,'湟中县',3);
INSERT INTO `clt_region` VALUES (2294,275,'湟源县',3);
INSERT INTO `clt_region` VALUES (2295,275,'大通',3);
INSERT INTO `clt_region` VALUES (2296,276,'玛沁县',3);
INSERT INTO `clt_region` VALUES (2297,276,'班玛县',3);
INSERT INTO `clt_region` VALUES (2298,276,'甘德县',3);
INSERT INTO `clt_region` VALUES (2299,276,'达日县',3);
INSERT INTO `clt_region` VALUES (2300,276,'久治县',3);
INSERT INTO `clt_region` VALUES (2301,276,'玛多县',3);
INSERT INTO `clt_region` VALUES (2302,277,'海晏县',3);
INSERT INTO `clt_region` VALUES (2303,277,'祁连县',3);
INSERT INTO `clt_region` VALUES (2304,277,'刚察县',3);
INSERT INTO `clt_region` VALUES (2305,277,'门源',3);
INSERT INTO `clt_region` VALUES (2306,278,'平安县',3);
INSERT INTO `clt_region` VALUES (2307,278,'乐都县',3);
INSERT INTO `clt_region` VALUES (2308,278,'民和',3);
INSERT INTO `clt_region` VALUES (2309,278,'互助',3);
INSERT INTO `clt_region` VALUES (2310,278,'化隆',3);
INSERT INTO `clt_region` VALUES (2311,278,'循化',3);
INSERT INTO `clt_region` VALUES (2312,279,'共和县',3);
INSERT INTO `clt_region` VALUES (2313,279,'同德县',3);
INSERT INTO `clt_region` VALUES (2314,279,'贵德县',3);
INSERT INTO `clt_region` VALUES (2315,279,'兴海县',3);
INSERT INTO `clt_region` VALUES (2316,279,'贵南县',3);
INSERT INTO `clt_region` VALUES (2317,280,'德令哈市',3);
INSERT INTO `clt_region` VALUES (2318,280,'格尔木市',3);
INSERT INTO `clt_region` VALUES (2319,280,'乌兰县',3);
INSERT INTO `clt_region` VALUES (2320,280,'都兰县',3);
INSERT INTO `clt_region` VALUES (2321,280,'天峻县',3);
INSERT INTO `clt_region` VALUES (2322,281,'同仁县',3);
INSERT INTO `clt_region` VALUES (2323,281,'尖扎县',3);
INSERT INTO `clt_region` VALUES (2324,281,'泽库县',3);
INSERT INTO `clt_region` VALUES (2325,281,'河南蒙古族自治县',3);
INSERT INTO `clt_region` VALUES (2326,282,'玉树县',3);
INSERT INTO `clt_region` VALUES (2327,282,'杂多县',3);
INSERT INTO `clt_region` VALUES (2328,282,'称多县',3);
INSERT INTO `clt_region` VALUES (2329,282,'治多县',3);
INSERT INTO `clt_region` VALUES (2330,282,'囊谦县',3);
INSERT INTO `clt_region` VALUES (2331,282,'曲麻莱县',3);
INSERT INTO `clt_region` VALUES (2332,283,'市中区',3);
INSERT INTO `clt_region` VALUES (2333,283,'历下区',3);
INSERT INTO `clt_region` VALUES (2334,283,'天桥区',3);
INSERT INTO `clt_region` VALUES (2335,283,'槐荫区',3);
INSERT INTO `clt_region` VALUES (2336,283,'历城区',3);
INSERT INTO `clt_region` VALUES (2337,283,'长清区',3);
INSERT INTO `clt_region` VALUES (2338,283,'章丘市',3);
INSERT INTO `clt_region` VALUES (2339,283,'平阴县',3);
INSERT INTO `clt_region` VALUES (2340,283,'济阳县',3);
INSERT INTO `clt_region` VALUES (2341,283,'商河县',3);
INSERT INTO `clt_region` VALUES (2342,284,'市南区',3);
INSERT INTO `clt_region` VALUES (2343,284,'市北区',3);
INSERT INTO `clt_region` VALUES (2344,284,'城阳区',3);
INSERT INTO `clt_region` VALUES (2345,284,'四方区',3);
INSERT INTO `clt_region` VALUES (2346,284,'李沧区',3);
INSERT INTO `clt_region` VALUES (2347,284,'黄岛区',3);
INSERT INTO `clt_region` VALUES (2348,284,'崂山区',3);
INSERT INTO `clt_region` VALUES (2349,284,'胶州市',3);
INSERT INTO `clt_region` VALUES (2350,284,'即墨市',3);
INSERT INTO `clt_region` VALUES (2351,284,'平度市',3);
INSERT INTO `clt_region` VALUES (2352,284,'胶南市',3);
INSERT INTO `clt_region` VALUES (2353,284,'莱西市',3);
INSERT INTO `clt_region` VALUES (2354,285,'滨城区',3);
INSERT INTO `clt_region` VALUES (2355,285,'惠民县',3);
INSERT INTO `clt_region` VALUES (2356,285,'阳信县',3);
INSERT INTO `clt_region` VALUES (2357,285,'无棣县',3);
INSERT INTO `clt_region` VALUES (2358,285,'沾化县',3);
INSERT INTO `clt_region` VALUES (2359,285,'博兴县',3);
INSERT INTO `clt_region` VALUES (2360,285,'邹平县',3);
INSERT INTO `clt_region` VALUES (2361,286,'德城区',3);
INSERT INTO `clt_region` VALUES (2362,286,'陵县',3);
INSERT INTO `clt_region` VALUES (2363,286,'乐陵市',3);
INSERT INTO `clt_region` VALUES (2364,286,'禹城市',3);
INSERT INTO `clt_region` VALUES (2365,286,'宁津县',3);
INSERT INTO `clt_region` VALUES (2366,286,'庆云县',3);
INSERT INTO `clt_region` VALUES (2367,286,'临邑县',3);
INSERT INTO `clt_region` VALUES (2368,286,'齐河县',3);
INSERT INTO `clt_region` VALUES (2369,286,'平原县',3);
INSERT INTO `clt_region` VALUES (2370,286,'夏津县',3);
INSERT INTO `clt_region` VALUES (2371,286,'武城县',3);
INSERT INTO `clt_region` VALUES (2372,287,'东营区',3);
INSERT INTO `clt_region` VALUES (2373,287,'河口区',3);
INSERT INTO `clt_region` VALUES (2374,287,'垦利县',3);
INSERT INTO `clt_region` VALUES (2375,287,'利津县',3);
INSERT INTO `clt_region` VALUES (2376,287,'广饶县',3);
INSERT INTO `clt_region` VALUES (2377,288,'牡丹区',3);
INSERT INTO `clt_region` VALUES (2378,288,'曹县',3);
INSERT INTO `clt_region` VALUES (2379,288,'单县',3);
INSERT INTO `clt_region` VALUES (2380,288,'成武县',3);
INSERT INTO `clt_region` VALUES (2381,288,'巨野县',3);
INSERT INTO `clt_region` VALUES (2382,288,'郓城县',3);
INSERT INTO `clt_region` VALUES (2383,288,'鄄城县',3);
INSERT INTO `clt_region` VALUES (2384,288,'定陶县',3);
INSERT INTO `clt_region` VALUES (2385,288,'东明县',3);
INSERT INTO `clt_region` VALUES (2386,289,'市中区',3);
INSERT INTO `clt_region` VALUES (2387,289,'任城区',3);
INSERT INTO `clt_region` VALUES (2388,289,'曲阜市',3);
INSERT INTO `clt_region` VALUES (2389,289,'兖州市',3);
INSERT INTO `clt_region` VALUES (2390,289,'邹城市',3);
INSERT INTO `clt_region` VALUES (2391,289,'微山县',3);
INSERT INTO `clt_region` VALUES (2392,289,'鱼台县',3);
INSERT INTO `clt_region` VALUES (2393,289,'金乡县',3);
INSERT INTO `clt_region` VALUES (2394,289,'嘉祥县',3);
INSERT INTO `clt_region` VALUES (2395,289,'汶上县',3);
INSERT INTO `clt_region` VALUES (2396,289,'泗水县',3);
INSERT INTO `clt_region` VALUES (2397,289,'梁山县',3);
INSERT INTO `clt_region` VALUES (2398,290,'莱城区',3);
INSERT INTO `clt_region` VALUES (2399,290,'钢城区',3);
INSERT INTO `clt_region` VALUES (2400,291,'东昌府区',3);
INSERT INTO `clt_region` VALUES (2401,291,'临清市',3);
INSERT INTO `clt_region` VALUES (2402,291,'阳谷县',3);
INSERT INTO `clt_region` VALUES (2403,291,'莘县',3);
INSERT INTO `clt_region` VALUES (2404,291,'茌平县',3);
INSERT INTO `clt_region` VALUES (2405,291,'东阿县',3);
INSERT INTO `clt_region` VALUES (2406,291,'冠县',3);
INSERT INTO `clt_region` VALUES (2407,291,'高唐县',3);
INSERT INTO `clt_region` VALUES (2408,292,'兰山区',3);
INSERT INTO `clt_region` VALUES (2409,292,'罗庄区',3);
INSERT INTO `clt_region` VALUES (2410,292,'河东区',3);
INSERT INTO `clt_region` VALUES (2411,292,'沂南县',3);
INSERT INTO `clt_region` VALUES (2412,292,'郯城县',3);
INSERT INTO `clt_region` VALUES (2413,292,'沂水县',3);
INSERT INTO `clt_region` VALUES (2414,292,'苍山县',3);
INSERT INTO `clt_region` VALUES (2415,292,'费县',3);
INSERT INTO `clt_region` VALUES (2416,292,'平邑县',3);
INSERT INTO `clt_region` VALUES (2417,292,'莒南县',3);
INSERT INTO `clt_region` VALUES (2418,292,'蒙阴县',3);
INSERT INTO `clt_region` VALUES (2419,292,'临沭县',3);
INSERT INTO `clt_region` VALUES (2420,293,'东港区',3);
INSERT INTO `clt_region` VALUES (2421,293,'岚山区',3);
INSERT INTO `clt_region` VALUES (2422,293,'五莲县',3);
INSERT INTO `clt_region` VALUES (2423,293,'莒县',3);
INSERT INTO `clt_region` VALUES (2424,294,'泰山区',3);
INSERT INTO `clt_region` VALUES (2425,294,'岱岳区',3);
INSERT INTO `clt_region` VALUES (2426,294,'新泰市',3);
INSERT INTO `clt_region` VALUES (2427,294,'肥城市',3);
INSERT INTO `clt_region` VALUES (2428,294,'宁阳县',3);
INSERT INTO `clt_region` VALUES (2429,294,'东平县',3);
INSERT INTO `clt_region` VALUES (2430,295,'荣成市',3);
INSERT INTO `clt_region` VALUES (2431,295,'乳山市',3);
INSERT INTO `clt_region` VALUES (2432,295,'环翠区',3);
INSERT INTO `clt_region` VALUES (2433,295,'文登市',3);
INSERT INTO `clt_region` VALUES (2434,296,'潍城区',3);
INSERT INTO `clt_region` VALUES (2435,296,'寒亭区',3);
INSERT INTO `clt_region` VALUES (2436,296,'坊子区',3);
INSERT INTO `clt_region` VALUES (2437,296,'奎文区',3);
INSERT INTO `clt_region` VALUES (2438,296,'青州市',3);
INSERT INTO `clt_region` VALUES (2439,296,'诸城市',3);
INSERT INTO `clt_region` VALUES (2440,296,'寿光市',3);
INSERT INTO `clt_region` VALUES (2441,296,'安丘市',3);
INSERT INTO `clt_region` VALUES (2442,296,'高密市',3);
INSERT INTO `clt_region` VALUES (2443,296,'昌邑市',3);
INSERT INTO `clt_region` VALUES (2444,296,'临朐县',3);
INSERT INTO `clt_region` VALUES (2445,296,'昌乐县',3);
INSERT INTO `clt_region` VALUES (2446,297,'芝罘区',3);
INSERT INTO `clt_region` VALUES (2447,297,'福山区',3);
INSERT INTO `clt_region` VALUES (2448,297,'牟平区',3);
INSERT INTO `clt_region` VALUES (2449,297,'莱山区',3);
INSERT INTO `clt_region` VALUES (2450,297,'开发区',3);
INSERT INTO `clt_region` VALUES (2451,297,'龙口市',3);
INSERT INTO `clt_region` VALUES (2452,297,'莱阳市',3);
INSERT INTO `clt_region` VALUES (2453,297,'莱州市',3);
INSERT INTO `clt_region` VALUES (2454,297,'蓬莱市',3);
INSERT INTO `clt_region` VALUES (2455,297,'招远市',3);
INSERT INTO `clt_region` VALUES (2456,297,'栖霞市',3);
INSERT INTO `clt_region` VALUES (2457,297,'海阳市',3);
INSERT INTO `clt_region` VALUES (2458,297,'长岛县',3);
INSERT INTO `clt_region` VALUES (2459,298,'市中区',3);
INSERT INTO `clt_region` VALUES (2460,298,'山亭区',3);
INSERT INTO `clt_region` VALUES (2461,298,'峄城区',3);
INSERT INTO `clt_region` VALUES (2462,298,'台儿庄区',3);
INSERT INTO `clt_region` VALUES (2463,298,'薛城区',3);
INSERT INTO `clt_region` VALUES (2464,298,'滕州市',3);
INSERT INTO `clt_region` VALUES (2465,299,'张店区',3);
INSERT INTO `clt_region` VALUES (2466,299,'临淄区',3);
INSERT INTO `clt_region` VALUES (2467,299,'淄川区',3);
INSERT INTO `clt_region` VALUES (2468,299,'博山区',3);
INSERT INTO `clt_region` VALUES (2469,299,'周村区',3);
INSERT INTO `clt_region` VALUES (2470,299,'桓台县',3);
INSERT INTO `clt_region` VALUES (2471,299,'高青县',3);
INSERT INTO `clt_region` VALUES (2472,299,'沂源县',3);
INSERT INTO `clt_region` VALUES (2473,300,'杏花岭区',3);
INSERT INTO `clt_region` VALUES (2474,300,'小店区',3);
INSERT INTO `clt_region` VALUES (2475,300,'迎泽区',3);
INSERT INTO `clt_region` VALUES (2476,300,'尖草坪区',3);
INSERT INTO `clt_region` VALUES (2477,300,'万柏林区',3);
INSERT INTO `clt_region` VALUES (2478,300,'晋源区',3);
INSERT INTO `clt_region` VALUES (2479,300,'高新开发区',3);
INSERT INTO `clt_region` VALUES (2480,300,'民营经济开发区',3);
INSERT INTO `clt_region` VALUES (2481,300,'经济技术开发区',3);
INSERT INTO `clt_region` VALUES (2482,300,'清徐县',3);
INSERT INTO `clt_region` VALUES (2483,300,'阳曲县',3);
INSERT INTO `clt_region` VALUES (2484,300,'娄烦县',3);
INSERT INTO `clt_region` VALUES (2485,300,'古交市',3);
INSERT INTO `clt_region` VALUES (2486,301,'城区',3);
INSERT INTO `clt_region` VALUES (2487,301,'郊区',3);
INSERT INTO `clt_region` VALUES (2488,301,'沁县',3);
INSERT INTO `clt_region` VALUES (2489,301,'潞城市',3);
INSERT INTO `clt_region` VALUES (2490,301,'长治县',3);
INSERT INTO `clt_region` VALUES (2491,301,'襄垣县',3);
INSERT INTO `clt_region` VALUES (2492,301,'屯留县',3);
INSERT INTO `clt_region` VALUES (2493,301,'平顺县',3);
INSERT INTO `clt_region` VALUES (2494,301,'黎城县',3);
INSERT INTO `clt_region` VALUES (2495,301,'壶关县',3);
INSERT INTO `clt_region` VALUES (2496,301,'长子县',3);
INSERT INTO `clt_region` VALUES (2497,301,'武乡县',3);
INSERT INTO `clt_region` VALUES (2498,301,'沁源县',3);
INSERT INTO `clt_region` VALUES (2499,302,'城区',3);
INSERT INTO `clt_region` VALUES (2500,302,'矿区',3);
INSERT INTO `clt_region` VALUES (2501,302,'南郊区',3);
INSERT INTO `clt_region` VALUES (2502,302,'新荣区',3);
INSERT INTO `clt_region` VALUES (2503,302,'阳高县',3);
INSERT INTO `clt_region` VALUES (2504,302,'天镇县',3);
INSERT INTO `clt_region` VALUES (2505,302,'广灵县',3);
INSERT INTO `clt_region` VALUES (2506,302,'灵丘县',3);
INSERT INTO `clt_region` VALUES (2507,302,'浑源县',3);
INSERT INTO `clt_region` VALUES (2508,302,'左云县',3);
INSERT INTO `clt_region` VALUES (2509,302,'大同县',3);
INSERT INTO `clt_region` VALUES (2510,303,'城区',3);
INSERT INTO `clt_region` VALUES (2511,303,'高平市',3);
INSERT INTO `clt_region` VALUES (2512,303,'沁水县',3);
INSERT INTO `clt_region` VALUES (2513,303,'阳城县',3);
INSERT INTO `clt_region` VALUES (2514,303,'陵川县',3);
INSERT INTO `clt_region` VALUES (2515,303,'泽州县',3);
INSERT INTO `clt_region` VALUES (2516,304,'榆次区',3);
INSERT INTO `clt_region` VALUES (2517,304,'介休市',3);
INSERT INTO `clt_region` VALUES (2518,304,'榆社县',3);
INSERT INTO `clt_region` VALUES (2519,304,'左权县',3);
INSERT INTO `clt_region` VALUES (2520,304,'和顺县',3);
INSERT INTO `clt_region` VALUES (2521,304,'昔阳县',3);
INSERT INTO `clt_region` VALUES (2522,304,'寿阳县',3);
INSERT INTO `clt_region` VALUES (2523,304,'太谷县',3);
INSERT INTO `clt_region` VALUES (2524,304,'祁县',3);
INSERT INTO `clt_region` VALUES (2525,304,'平遥县',3);
INSERT INTO `clt_region` VALUES (2526,304,'灵石县',3);
INSERT INTO `clt_region` VALUES (2527,305,'尧都区',3);
INSERT INTO `clt_region` VALUES (2528,305,'侯马市',3);
INSERT INTO `clt_region` VALUES (2529,305,'霍州市',3);
INSERT INTO `clt_region` VALUES (2530,305,'曲沃县',3);
INSERT INTO `clt_region` VALUES (2531,305,'翼城县',3);
INSERT INTO `clt_region` VALUES (2532,305,'襄汾县',3);
INSERT INTO `clt_region` VALUES (2533,305,'洪洞县',3);
INSERT INTO `clt_region` VALUES (2534,305,'吉县',3);
INSERT INTO `clt_region` VALUES (2535,305,'安泽县',3);
INSERT INTO `clt_region` VALUES (2536,305,'浮山县',3);
INSERT INTO `clt_region` VALUES (2537,305,'古县',3);
INSERT INTO `clt_region` VALUES (2538,305,'乡宁县',3);
INSERT INTO `clt_region` VALUES (2539,305,'大宁县',3);
INSERT INTO `clt_region` VALUES (2540,305,'隰县',3);
INSERT INTO `clt_region` VALUES (2541,305,'永和县',3);
INSERT INTO `clt_region` VALUES (2542,305,'蒲县',3);
INSERT INTO `clt_region` VALUES (2543,305,'汾西县',3);
INSERT INTO `clt_region` VALUES (2544,306,'离石市',3);
INSERT INTO `clt_region` VALUES (2545,306,'离石区',3);
INSERT INTO `clt_region` VALUES (2546,306,'孝义市',3);
INSERT INTO `clt_region` VALUES (2547,306,'汾阳市',3);
INSERT INTO `clt_region` VALUES (2548,306,'文水县',3);
INSERT INTO `clt_region` VALUES (2549,306,'交城县',3);
INSERT INTO `clt_region` VALUES (2550,306,'兴县',3);
INSERT INTO `clt_region` VALUES (2551,306,'临县',3);
INSERT INTO `clt_region` VALUES (2552,306,'柳林县',3);
INSERT INTO `clt_region` VALUES (2553,306,'石楼县',3);
INSERT INTO `clt_region` VALUES (2554,306,'岚县',3);
INSERT INTO `clt_region` VALUES (2555,306,'方山县',3);
INSERT INTO `clt_region` VALUES (2556,306,'中阳县',3);
INSERT INTO `clt_region` VALUES (2557,306,'交口县',3);
INSERT INTO `clt_region` VALUES (2558,307,'朔城区',3);
INSERT INTO `clt_region` VALUES (2559,307,'平鲁区',3);
INSERT INTO `clt_region` VALUES (2560,307,'山阴县',3);
INSERT INTO `clt_region` VALUES (2561,307,'应县',3);
INSERT INTO `clt_region` VALUES (2562,307,'右玉县',3);
INSERT INTO `clt_region` VALUES (2563,307,'怀仁县',3);
INSERT INTO `clt_region` VALUES (2564,308,'忻府区',3);
INSERT INTO `clt_region` VALUES (2565,308,'原平市',3);
INSERT INTO `clt_region` VALUES (2566,308,'定襄县',3);
INSERT INTO `clt_region` VALUES (2567,308,'五台县',3);
INSERT INTO `clt_region` VALUES (2568,308,'代县',3);
INSERT INTO `clt_region` VALUES (2569,308,'繁峙县',3);
INSERT INTO `clt_region` VALUES (2570,308,'宁武县',3);
INSERT INTO `clt_region` VALUES (2571,308,'静乐县',3);
INSERT INTO `clt_region` VALUES (2572,308,'神池县',3);
INSERT INTO `clt_region` VALUES (2573,308,'五寨县',3);
INSERT INTO `clt_region` VALUES (2574,308,'岢岚县',3);
INSERT INTO `clt_region` VALUES (2575,308,'河曲县',3);
INSERT INTO `clt_region` VALUES (2576,308,'保德县',3);
INSERT INTO `clt_region` VALUES (2577,308,'偏关县',3);
INSERT INTO `clt_region` VALUES (2578,309,'城区',3);
INSERT INTO `clt_region` VALUES (2579,309,'矿区',3);
INSERT INTO `clt_region` VALUES (2580,309,'郊区',3);
INSERT INTO `clt_region` VALUES (2581,309,'平定县',3);
INSERT INTO `clt_region` VALUES (2582,309,'盂县',3);
INSERT INTO `clt_region` VALUES (2583,310,'盐湖区',3);
INSERT INTO `clt_region` VALUES (2584,310,'永济市',3);
INSERT INTO `clt_region` VALUES (2585,310,'河津市',3);
INSERT INTO `clt_region` VALUES (2586,310,'临猗县',3);
INSERT INTO `clt_region` VALUES (2587,310,'万荣县',3);
INSERT INTO `clt_region` VALUES (2588,310,'闻喜县',3);
INSERT INTO `clt_region` VALUES (2589,310,'稷山县',3);
INSERT INTO `clt_region` VALUES (2590,310,'新绛县',3);
INSERT INTO `clt_region` VALUES (2591,310,'绛县',3);
INSERT INTO `clt_region` VALUES (2592,310,'垣曲县',3);
INSERT INTO `clt_region` VALUES (2593,310,'夏县',3);
INSERT INTO `clt_region` VALUES (2594,310,'平陆县',3);
INSERT INTO `clt_region` VALUES (2595,310,'芮城县',3);
INSERT INTO `clt_region` VALUES (2596,311,'莲湖区',3);
INSERT INTO `clt_region` VALUES (2597,311,'新城区',3);
INSERT INTO `clt_region` VALUES (2598,311,'碑林区',3);
INSERT INTO `clt_region` VALUES (2599,311,'雁塔区',3);
INSERT INTO `clt_region` VALUES (2600,311,'灞桥区',3);
INSERT INTO `clt_region` VALUES (2601,311,'未央区',3);
INSERT INTO `clt_region` VALUES (2602,311,'阎良区',3);
INSERT INTO `clt_region` VALUES (2603,311,'临潼区',3);
INSERT INTO `clt_region` VALUES (2604,311,'长安区',3);
INSERT INTO `clt_region` VALUES (2605,311,'蓝田县',3);
INSERT INTO `clt_region` VALUES (2606,311,'周至县',3);
INSERT INTO `clt_region` VALUES (2607,311,'户县',3);
INSERT INTO `clt_region` VALUES (2608,311,'高陵县',3);
INSERT INTO `clt_region` VALUES (2609,312,'汉滨区',3);
INSERT INTO `clt_region` VALUES (2610,312,'汉阴县',3);
INSERT INTO `clt_region` VALUES (2611,312,'石泉县',3);
INSERT INTO `clt_region` VALUES (2612,312,'宁陕县',3);
INSERT INTO `clt_region` VALUES (2613,312,'紫阳县',3);
INSERT INTO `clt_region` VALUES (2614,312,'岚皋县',3);
INSERT INTO `clt_region` VALUES (2615,312,'平利县',3);
INSERT INTO `clt_region` VALUES (2616,312,'镇坪县',3);
INSERT INTO `clt_region` VALUES (2617,312,'旬阳县',3);
INSERT INTO `clt_region` VALUES (2618,312,'白河县',3);
INSERT INTO `clt_region` VALUES (2619,313,'陈仓区',3);
INSERT INTO `clt_region` VALUES (2620,313,'渭滨区',3);
INSERT INTO `clt_region` VALUES (2621,313,'金台区',3);
INSERT INTO `clt_region` VALUES (2622,313,'凤翔县',3);
INSERT INTO `clt_region` VALUES (2623,313,'岐山县',3);
INSERT INTO `clt_region` VALUES (2624,313,'扶风县',3);
INSERT INTO `clt_region` VALUES (2625,313,'眉县',3);
INSERT INTO `clt_region` VALUES (2626,313,'陇县',3);
INSERT INTO `clt_region` VALUES (2627,313,'千阳县',3);
INSERT INTO `clt_region` VALUES (2628,313,'麟游县',3);
INSERT INTO `clt_region` VALUES (2629,313,'凤县',3);
INSERT INTO `clt_region` VALUES (2630,313,'太白县',3);
INSERT INTO `clt_region` VALUES (2631,314,'汉台区',3);
INSERT INTO `clt_region` VALUES (2632,314,'南郑县',3);
INSERT INTO `clt_region` VALUES (2633,314,'城固县',3);
INSERT INTO `clt_region` VALUES (2634,314,'洋县',3);
INSERT INTO `clt_region` VALUES (2635,314,'西乡县',3);
INSERT INTO `clt_region` VALUES (2636,314,'勉县',3);
INSERT INTO `clt_region` VALUES (2637,314,'宁强县',3);
INSERT INTO `clt_region` VALUES (2638,314,'略阳县',3);
INSERT INTO `clt_region` VALUES (2639,314,'镇巴县',3);
INSERT INTO `clt_region` VALUES (2640,314,'留坝县',3);
INSERT INTO `clt_region` VALUES (2641,314,'佛坪县',3);
INSERT INTO `clt_region` VALUES (2642,315,'商州区',3);
INSERT INTO `clt_region` VALUES (2643,315,'洛南县',3);
INSERT INTO `clt_region` VALUES (2644,315,'丹凤县',3);
INSERT INTO `clt_region` VALUES (2645,315,'商南县',3);
INSERT INTO `clt_region` VALUES (2646,315,'山阳县',3);
INSERT INTO `clt_region` VALUES (2647,315,'镇安县',3);
INSERT INTO `clt_region` VALUES (2648,315,'柞水县',3);
INSERT INTO `clt_region` VALUES (2649,316,'耀州区',3);
INSERT INTO `clt_region` VALUES (2650,316,'王益区',3);
INSERT INTO `clt_region` VALUES (2651,316,'印台区',3);
INSERT INTO `clt_region` VALUES (2652,316,'宜君县',3);
INSERT INTO `clt_region` VALUES (2653,317,'临渭区',3);
INSERT INTO `clt_region` VALUES (2654,317,'韩城市',3);
INSERT INTO `clt_region` VALUES (2655,317,'华阴市',3);
INSERT INTO `clt_region` VALUES (2656,317,'华县',3);
INSERT INTO `clt_region` VALUES (2657,317,'潼关县',3);
INSERT INTO `clt_region` VALUES (2658,317,'大荔县',3);
INSERT INTO `clt_region` VALUES (2659,317,'合阳县',3);
INSERT INTO `clt_region` VALUES (2660,317,'澄城县',3);
INSERT INTO `clt_region` VALUES (2661,317,'蒲城县',3);
INSERT INTO `clt_region` VALUES (2662,317,'白水县',3);
INSERT INTO `clt_region` VALUES (2663,317,'富平县',3);
INSERT INTO `clt_region` VALUES (2664,318,'秦都区',3);
INSERT INTO `clt_region` VALUES (2665,318,'渭城区',3);
INSERT INTO `clt_region` VALUES (2666,318,'杨陵区',3);
INSERT INTO `clt_region` VALUES (2667,318,'兴平市',3);
INSERT INTO `clt_region` VALUES (2668,318,'三原县',3);
INSERT INTO `clt_region` VALUES (2669,318,'泾阳县',3);
INSERT INTO `clt_region` VALUES (2670,318,'乾县',3);
INSERT INTO `clt_region` VALUES (2671,318,'礼泉县',3);
INSERT INTO `clt_region` VALUES (2672,318,'永寿县',3);
INSERT INTO `clt_region` VALUES (2673,318,'彬县',3);
INSERT INTO `clt_region` VALUES (2674,318,'长武县',3);
INSERT INTO `clt_region` VALUES (2675,318,'旬邑县',3);
INSERT INTO `clt_region` VALUES (2676,318,'淳化县',3);
INSERT INTO `clt_region` VALUES (2677,318,'武功县',3);
INSERT INTO `clt_region` VALUES (2678,319,'吴起县',3);
INSERT INTO `clt_region` VALUES (2679,319,'宝塔区',3);
INSERT INTO `clt_region` VALUES (2680,319,'延长县',3);
INSERT INTO `clt_region` VALUES (2681,319,'延川县',3);
INSERT INTO `clt_region` VALUES (2682,319,'子长县',3);
INSERT INTO `clt_region` VALUES (2683,319,'安塞县',3);
INSERT INTO `clt_region` VALUES (2684,319,'志丹县',3);
INSERT INTO `clt_region` VALUES (2685,319,'甘泉县',3);
INSERT INTO `clt_region` VALUES (2686,319,'富县',3);
INSERT INTO `clt_region` VALUES (2687,319,'洛川县',3);
INSERT INTO `clt_region` VALUES (2688,319,'宜川县',3);
INSERT INTO `clt_region` VALUES (2689,319,'黄龙县',3);
INSERT INTO `clt_region` VALUES (2690,319,'黄陵县',3);
INSERT INTO `clt_region` VALUES (2691,320,'榆阳区',3);
INSERT INTO `clt_region` VALUES (2692,320,'神木县',3);
INSERT INTO `clt_region` VALUES (2693,320,'府谷县',3);
INSERT INTO `clt_region` VALUES (2694,320,'横山县',3);
INSERT INTO `clt_region` VALUES (2695,320,'靖边县',3);
INSERT INTO `clt_region` VALUES (2696,320,'定边县',3);
INSERT INTO `clt_region` VALUES (2697,320,'绥德县',3);
INSERT INTO `clt_region` VALUES (2698,320,'米脂县',3);
INSERT INTO `clt_region` VALUES (2699,320,'佳县',3);
INSERT INTO `clt_region` VALUES (2700,320,'吴堡县',3);
INSERT INTO `clt_region` VALUES (2701,320,'清涧县',3);
INSERT INTO `clt_region` VALUES (2702,320,'子洲县',3);
INSERT INTO `clt_region` VALUES (2703,321,'长宁区',3);
INSERT INTO `clt_region` VALUES (2704,321,'闸北区',3);
INSERT INTO `clt_region` VALUES (2705,321,'闵行区',3);
INSERT INTO `clt_region` VALUES (2706,321,'徐汇区',3);
INSERT INTO `clt_region` VALUES (2707,321,'浦东新区',3);
INSERT INTO `clt_region` VALUES (2708,321,'杨浦区',3);
INSERT INTO `clt_region` VALUES (2709,321,'普陀区',3);
INSERT INTO `clt_region` VALUES (2710,321,'静安区',3);
INSERT INTO `clt_region` VALUES (2711,321,'卢湾区',3);
INSERT INTO `clt_region` VALUES (2712,321,'虹口区',3);
INSERT INTO `clt_region` VALUES (2713,321,'黄浦区',3);
INSERT INTO `clt_region` VALUES (2714,321,'南汇区',3);
INSERT INTO `clt_region` VALUES (2715,321,'松江区',3);
INSERT INTO `clt_region` VALUES (2716,321,'嘉定区',3);
INSERT INTO `clt_region` VALUES (2717,321,'宝山区',3);
INSERT INTO `clt_region` VALUES (2718,321,'青浦区',3);
INSERT INTO `clt_region` VALUES (2719,321,'金山区',3);
INSERT INTO `clt_region` VALUES (2720,321,'奉贤区',3);
INSERT INTO `clt_region` VALUES (2721,321,'崇明县',3);
INSERT INTO `clt_region` VALUES (2722,322,'青羊区',3);
INSERT INTO `clt_region` VALUES (2723,322,'锦江区',3);
INSERT INTO `clt_region` VALUES (2724,322,'金牛区',3);
INSERT INTO `clt_region` VALUES (2725,322,'武侯区',3);
INSERT INTO `clt_region` VALUES (2726,322,'成华区',3);
INSERT INTO `clt_region` VALUES (2727,322,'龙泉驿区',3);
INSERT INTO `clt_region` VALUES (2728,322,'青白江区',3);
INSERT INTO `clt_region` VALUES (2729,322,'新都区',3);
INSERT INTO `clt_region` VALUES (2730,322,'温江区',3);
INSERT INTO `clt_region` VALUES (2731,322,'高新区',3);
INSERT INTO `clt_region` VALUES (2732,322,'高新西区',3);
INSERT INTO `clt_region` VALUES (2733,322,'都江堰市',3);
INSERT INTO `clt_region` VALUES (2734,322,'彭州市',3);
INSERT INTO `clt_region` VALUES (2735,322,'邛崃市',3);
INSERT INTO `clt_region` VALUES (2736,322,'崇州市',3);
INSERT INTO `clt_region` VALUES (2737,322,'金堂县',3);
INSERT INTO `clt_region` VALUES (2738,322,'双流县',3);
INSERT INTO `clt_region` VALUES (2739,322,'郫县',3);
INSERT INTO `clt_region` VALUES (2740,322,'大邑县',3);
INSERT INTO `clt_region` VALUES (2741,322,'蒲江县',3);
INSERT INTO `clt_region` VALUES (2742,322,'新津县',3);
INSERT INTO `clt_region` VALUES (2743,322,'都江堰市',3);
INSERT INTO `clt_region` VALUES (2744,322,'彭州市',3);
INSERT INTO `clt_region` VALUES (2745,322,'邛崃市',3);
INSERT INTO `clt_region` VALUES (2746,322,'崇州市',3);
INSERT INTO `clt_region` VALUES (2747,322,'金堂县',3);
INSERT INTO `clt_region` VALUES (2748,322,'双流县',3);
INSERT INTO `clt_region` VALUES (2749,322,'郫县',3);
INSERT INTO `clt_region` VALUES (2750,322,'大邑县',3);
INSERT INTO `clt_region` VALUES (2751,322,'蒲江县',3);
INSERT INTO `clt_region` VALUES (2752,322,'新津县',3);
INSERT INTO `clt_region` VALUES (2753,323,'涪城区',3);
INSERT INTO `clt_region` VALUES (2754,323,'游仙区',3);
INSERT INTO `clt_region` VALUES (2755,323,'江油市',3);
INSERT INTO `clt_region` VALUES (2756,323,'盐亭县',3);
INSERT INTO `clt_region` VALUES (2757,323,'三台县',3);
INSERT INTO `clt_region` VALUES (2758,323,'平武县',3);
INSERT INTO `clt_region` VALUES (2759,323,'安县',3);
INSERT INTO `clt_region` VALUES (2760,323,'梓潼县',3);
INSERT INTO `clt_region` VALUES (2761,323,'北川县',3);
INSERT INTO `clt_region` VALUES (2762,324,'马尔康县',3);
INSERT INTO `clt_region` VALUES (2763,324,'汶川县',3);
INSERT INTO `clt_region` VALUES (2764,324,'理县',3);
INSERT INTO `clt_region` VALUES (2765,324,'茂县',3);
INSERT INTO `clt_region` VALUES (2766,324,'松潘县',3);
INSERT INTO `clt_region` VALUES (2767,324,'九寨沟县',3);
INSERT INTO `clt_region` VALUES (2768,324,'金川县',3);
INSERT INTO `clt_region` VALUES (2769,324,'小金县',3);
INSERT INTO `clt_region` VALUES (2770,324,'黑水县',3);
INSERT INTO `clt_region` VALUES (2771,324,'壤塘县',3);
INSERT INTO `clt_region` VALUES (2772,324,'阿坝县',3);
INSERT INTO `clt_region` VALUES (2773,324,'若尔盖县',3);
INSERT INTO `clt_region` VALUES (2774,324,'红原县',3);
INSERT INTO `clt_region` VALUES (2775,325,'巴州区',3);
INSERT INTO `clt_region` VALUES (2776,325,'通江县',3);
INSERT INTO `clt_region` VALUES (2777,325,'南江县',3);
INSERT INTO `clt_region` VALUES (2778,325,'平昌县',3);
INSERT INTO `clt_region` VALUES (2779,326,'通川区',3);
INSERT INTO `clt_region` VALUES (2780,326,'万源市',3);
INSERT INTO `clt_region` VALUES (2781,326,'达县',3);
INSERT INTO `clt_region` VALUES (2782,326,'宣汉县',3);
INSERT INTO `clt_region` VALUES (2783,326,'开江县',3);
INSERT INTO `clt_region` VALUES (2784,326,'大竹县',3);
INSERT INTO `clt_region` VALUES (2785,326,'渠县',3);
INSERT INTO `clt_region` VALUES (2786,327,'旌阳区',3);
INSERT INTO `clt_region` VALUES (2787,327,'广汉市',3);
INSERT INTO `clt_region` VALUES (2788,327,'什邡市',3);
INSERT INTO `clt_region` VALUES (2789,327,'绵竹市',3);
INSERT INTO `clt_region` VALUES (2790,327,'罗江县',3);
INSERT INTO `clt_region` VALUES (2791,327,'中江县',3);
INSERT INTO `clt_region` VALUES (2792,328,'康定县',3);
INSERT INTO `clt_region` VALUES (2793,328,'丹巴县',3);
INSERT INTO `clt_region` VALUES (2794,328,'泸定县',3);
INSERT INTO `clt_region` VALUES (2795,328,'炉霍县',3);
INSERT INTO `clt_region` VALUES (2796,328,'九龙县',3);
INSERT INTO `clt_region` VALUES (2797,328,'甘孜县',3);
INSERT INTO `clt_region` VALUES (2798,328,'雅江县',3);
INSERT INTO `clt_region` VALUES (2799,328,'新龙县',3);
INSERT INTO `clt_region` VALUES (2800,328,'道孚县',3);
INSERT INTO `clt_region` VALUES (2801,328,'白玉县',3);
INSERT INTO `clt_region` VALUES (2802,328,'理塘县',3);
INSERT INTO `clt_region` VALUES (2803,328,'德格县',3);
INSERT INTO `clt_region` VALUES (2804,328,'乡城县',3);
INSERT INTO `clt_region` VALUES (2805,328,'石渠县',3);
INSERT INTO `clt_region` VALUES (2806,328,'稻城县',3);
INSERT INTO `clt_region` VALUES (2807,328,'色达县',3);
INSERT INTO `clt_region` VALUES (2808,328,'巴塘县',3);
INSERT INTO `clt_region` VALUES (2809,328,'得荣县',3);
INSERT INTO `clt_region` VALUES (2810,329,'广安区',3);
INSERT INTO `clt_region` VALUES (2811,329,'华蓥市',3);
INSERT INTO `clt_region` VALUES (2812,329,'岳池县',3);
INSERT INTO `clt_region` VALUES (2813,329,'武胜县',3);
INSERT INTO `clt_region` VALUES (2814,329,'邻水县',3);
INSERT INTO `clt_region` VALUES (2815,330,'利州区',3);
INSERT INTO `clt_region` VALUES (2816,330,'元坝区',3);
INSERT INTO `clt_region` VALUES (2817,330,'朝天区',3);
INSERT INTO `clt_region` VALUES (2818,330,'旺苍县',3);
INSERT INTO `clt_region` VALUES (2819,330,'青川县',3);
INSERT INTO `clt_region` VALUES (2820,330,'剑阁县',3);
INSERT INTO `clt_region` VALUES (2821,330,'苍溪县',3);
INSERT INTO `clt_region` VALUES (2822,331,'峨眉山市',3);
INSERT INTO `clt_region` VALUES (2823,331,'乐山市',3);
INSERT INTO `clt_region` VALUES (2824,331,'犍为县',3);
INSERT INTO `clt_region` VALUES (2825,331,'井研县',3);
INSERT INTO `clt_region` VALUES (2826,331,'夹江县',3);
INSERT INTO `clt_region` VALUES (2827,331,'沐川县',3);
INSERT INTO `clt_region` VALUES (2828,331,'峨边',3);
INSERT INTO `clt_region` VALUES (2829,331,'马边',3);
INSERT INTO `clt_region` VALUES (2830,332,'西昌市',3);
INSERT INTO `clt_region` VALUES (2831,332,'盐源县',3);
INSERT INTO `clt_region` VALUES (2832,332,'德昌县',3);
INSERT INTO `clt_region` VALUES (2833,332,'会理县',3);
INSERT INTO `clt_region` VALUES (2834,332,'会东县',3);
INSERT INTO `clt_region` VALUES (2835,332,'宁南县',3);
INSERT INTO `clt_region` VALUES (2836,332,'普格县',3);
INSERT INTO `clt_region` VALUES (2837,332,'布拖县',3);
INSERT INTO `clt_region` VALUES (2838,332,'金阳县',3);
INSERT INTO `clt_region` VALUES (2839,332,'昭觉县',3);
INSERT INTO `clt_region` VALUES (2840,332,'喜德县',3);
INSERT INTO `clt_region` VALUES (2841,332,'冕宁县',3);
INSERT INTO `clt_region` VALUES (2842,332,'越西县',3);
INSERT INTO `clt_region` VALUES (2843,332,'甘洛县',3);
INSERT INTO `clt_region` VALUES (2844,332,'美姑县',3);
INSERT INTO `clt_region` VALUES (2845,332,'雷波县',3);
INSERT INTO `clt_region` VALUES (2846,332,'木里',3);
INSERT INTO `clt_region` VALUES (2847,333,'东坡区',3);
INSERT INTO `clt_region` VALUES (2848,333,'仁寿县',3);
INSERT INTO `clt_region` VALUES (2849,333,'彭山县',3);
INSERT INTO `clt_region` VALUES (2850,333,'洪雅县',3);
INSERT INTO `clt_region` VALUES (2851,333,'丹棱县',3);
INSERT INTO `clt_region` VALUES (2852,333,'青神县',3);
INSERT INTO `clt_region` VALUES (2853,334,'阆中市',3);
INSERT INTO `clt_region` VALUES (2854,334,'南部县',3);
INSERT INTO `clt_region` VALUES (2855,334,'营山县',3);
INSERT INTO `clt_region` VALUES (2856,334,'蓬安县',3);
INSERT INTO `clt_region` VALUES (2857,334,'仪陇县',3);
INSERT INTO `clt_region` VALUES (2858,334,'顺庆区',3);
INSERT INTO `clt_region` VALUES (2859,334,'高坪区',3);
INSERT INTO `clt_region` VALUES (2860,334,'嘉陵区',3);
INSERT INTO `clt_region` VALUES (2861,334,'西充县',3);
INSERT INTO `clt_region` VALUES (2862,335,'市中区',3);
INSERT INTO `clt_region` VALUES (2863,335,'东兴区',3);
INSERT INTO `clt_region` VALUES (2864,335,'威远县',3);
INSERT INTO `clt_region` VALUES (2865,335,'资中县',3);
INSERT INTO `clt_region` VALUES (2866,335,'隆昌县',3);
INSERT INTO `clt_region` VALUES (2867,336,'东  区',3);
INSERT INTO `clt_region` VALUES (2868,336,'西  区',3);
INSERT INTO `clt_region` VALUES (2869,336,'仁和区',3);
INSERT INTO `clt_region` VALUES (2870,336,'米易县',3);
INSERT INTO `clt_region` VALUES (2871,336,'盐边县',3);
INSERT INTO `clt_region` VALUES (2872,337,'船山区',3);
INSERT INTO `clt_region` VALUES (2873,337,'安居区',3);
INSERT INTO `clt_region` VALUES (2874,337,'蓬溪县',3);
INSERT INTO `clt_region` VALUES (2875,337,'射洪县',3);
INSERT INTO `clt_region` VALUES (2876,337,'大英县',3);
INSERT INTO `clt_region` VALUES (2877,338,'雨城区',3);
INSERT INTO `clt_region` VALUES (2878,338,'名山县',3);
INSERT INTO `clt_region` VALUES (2879,338,'荥经县',3);
INSERT INTO `clt_region` VALUES (2880,338,'汉源县',3);
INSERT INTO `clt_region` VALUES (2881,338,'石棉县',3);
INSERT INTO `clt_region` VALUES (2882,338,'天全县',3);
INSERT INTO `clt_region` VALUES (2883,338,'芦山县',3);
INSERT INTO `clt_region` VALUES (2884,338,'宝兴县',3);
INSERT INTO `clt_region` VALUES (2885,339,'翠屏区',3);
INSERT INTO `clt_region` VALUES (2886,339,'宜宾县',3);
INSERT INTO `clt_region` VALUES (2887,339,'南溪县',3);
INSERT INTO `clt_region` VALUES (2888,339,'江安县',3);
INSERT INTO `clt_region` VALUES (2889,339,'长宁县',3);
INSERT INTO `clt_region` VALUES (2890,339,'高县',3);
INSERT INTO `clt_region` VALUES (2891,339,'珙县',3);
INSERT INTO `clt_region` VALUES (2892,339,'筠连县',3);
INSERT INTO `clt_region` VALUES (2893,339,'兴文县',3);
INSERT INTO `clt_region` VALUES (2894,339,'屏山县',3);
INSERT INTO `clt_region` VALUES (2895,340,'雁江区',3);
INSERT INTO `clt_region` VALUES (2896,340,'简阳市',3);
INSERT INTO `clt_region` VALUES (2897,340,'安岳县',3);
INSERT INTO `clt_region` VALUES (2898,340,'乐至县',3);
INSERT INTO `clt_region` VALUES (2899,341,'大安区',3);
INSERT INTO `clt_region` VALUES (2900,341,'自流井区',3);
INSERT INTO `clt_region` VALUES (2901,341,'贡井区',3);
INSERT INTO `clt_region` VALUES (2902,341,'沿滩区',3);
INSERT INTO `clt_region` VALUES (2903,341,'荣县',3);
INSERT INTO `clt_region` VALUES (2904,341,'富顺县',3);
INSERT INTO `clt_region` VALUES (2905,342,'江阳区',3);
INSERT INTO `clt_region` VALUES (2906,342,'纳溪区',3);
INSERT INTO `clt_region` VALUES (2907,342,'龙马潭区',3);
INSERT INTO `clt_region` VALUES (2908,342,'泸县',3);
INSERT INTO `clt_region` VALUES (2909,342,'合江县',3);
INSERT INTO `clt_region` VALUES (2910,342,'叙永县',3);
INSERT INTO `clt_region` VALUES (2911,342,'古蔺县',3);
INSERT INTO `clt_region` VALUES (2912,343,'和平区',3);
INSERT INTO `clt_region` VALUES (2913,343,'河西区',3);
INSERT INTO `clt_region` VALUES (2914,343,'南开区',3);
INSERT INTO `clt_region` VALUES (2915,343,'河北区',3);
INSERT INTO `clt_region` VALUES (2916,343,'河东区',3);
INSERT INTO `clt_region` VALUES (2917,343,'红桥区',3);
INSERT INTO `clt_region` VALUES (2918,343,'东丽区',3);
INSERT INTO `clt_region` VALUES (2919,343,'津南区',3);
INSERT INTO `clt_region` VALUES (2920,343,'西青区',3);
INSERT INTO `clt_region` VALUES (2921,343,'北辰区',3);
INSERT INTO `clt_region` VALUES (2922,343,'塘沽区',3);
INSERT INTO `clt_region` VALUES (2923,343,'汉沽区',3);
INSERT INTO `clt_region` VALUES (2924,343,'大港区',3);
INSERT INTO `clt_region` VALUES (2925,343,'武清区',3);
INSERT INTO `clt_region` VALUES (2926,343,'宝坻区',3);
INSERT INTO `clt_region` VALUES (2927,343,'经济开发区',3);
INSERT INTO `clt_region` VALUES (2928,343,'宁河县',3);
INSERT INTO `clt_region` VALUES (2929,343,'静海县',3);
INSERT INTO `clt_region` VALUES (2930,343,'蓟县',3);
INSERT INTO `clt_region` VALUES (2931,344,'城关区',3);
INSERT INTO `clt_region` VALUES (2932,344,'林周县',3);
INSERT INTO `clt_region` VALUES (2933,344,'当雄县',3);
INSERT INTO `clt_region` VALUES (2934,344,'尼木县',3);
INSERT INTO `clt_region` VALUES (2935,344,'曲水县',3);
INSERT INTO `clt_region` VALUES (2936,344,'堆龙德庆县',3);
INSERT INTO `clt_region` VALUES (2937,344,'达孜县',3);
INSERT INTO `clt_region` VALUES (2938,344,'墨竹工卡县',3);
INSERT INTO `clt_region` VALUES (2939,345,'噶尔县',3);
INSERT INTO `clt_region` VALUES (2940,345,'普兰县',3);
INSERT INTO `clt_region` VALUES (2941,345,'札达县',3);
INSERT INTO `clt_region` VALUES (2942,345,'日土县',3);
INSERT INTO `clt_region` VALUES (2943,345,'革吉县',3);
INSERT INTO `clt_region` VALUES (2944,345,'改则县',3);
INSERT INTO `clt_region` VALUES (2945,345,'措勤县',3);
INSERT INTO `clt_region` VALUES (2946,346,'昌都县',3);
INSERT INTO `clt_region` VALUES (2947,346,'江达县',3);
INSERT INTO `clt_region` VALUES (2948,346,'贡觉县',3);
INSERT INTO `clt_region` VALUES (2949,346,'类乌齐县',3);
INSERT INTO `clt_region` VALUES (2950,346,'丁青县',3);
INSERT INTO `clt_region` VALUES (2951,346,'察雅县',3);
INSERT INTO `clt_region` VALUES (2952,346,'八宿县',3);
INSERT INTO `clt_region` VALUES (2953,346,'左贡县',3);
INSERT INTO `clt_region` VALUES (2954,346,'芒康县',3);
INSERT INTO `clt_region` VALUES (2955,346,'洛隆县',3);
INSERT INTO `clt_region` VALUES (2956,346,'边坝县',3);
INSERT INTO `clt_region` VALUES (2957,347,'林芝县',3);
INSERT INTO `clt_region` VALUES (2958,347,'工布江达县',3);
INSERT INTO `clt_region` VALUES (2959,347,'米林县',3);
INSERT INTO `clt_region` VALUES (2960,347,'墨脱县',3);
INSERT INTO `clt_region` VALUES (2961,347,'波密县',3);
INSERT INTO `clt_region` VALUES (2962,347,'察隅县',3);
INSERT INTO `clt_region` VALUES (2963,347,'朗县',3);
INSERT INTO `clt_region` VALUES (2964,348,'那曲县',3);
INSERT INTO `clt_region` VALUES (2965,348,'嘉黎县',3);
INSERT INTO `clt_region` VALUES (2966,348,'比如县',3);
INSERT INTO `clt_region` VALUES (2967,348,'聂荣县',3);
INSERT INTO `clt_region` VALUES (2968,348,'安多县',3);
INSERT INTO `clt_region` VALUES (2969,348,'申扎县',3);
INSERT INTO `clt_region` VALUES (2970,348,'索县',3);
INSERT INTO `clt_region` VALUES (2971,348,'班戈县',3);
INSERT INTO `clt_region` VALUES (2972,348,'巴青县',3);
INSERT INTO `clt_region` VALUES (2973,348,'尼玛县',3);
INSERT INTO `clt_region` VALUES (2974,349,'日喀则市',3);
INSERT INTO `clt_region` VALUES (2975,349,'南木林县',3);
INSERT INTO `clt_region` VALUES (2976,349,'江孜县',3);
INSERT INTO `clt_region` VALUES (2977,349,'定日县',3);
INSERT INTO `clt_region` VALUES (2978,349,'萨迦县',3);
INSERT INTO `clt_region` VALUES (2979,349,'拉孜县',3);
INSERT INTO `clt_region` VALUES (2980,349,'昂仁县',3);
INSERT INTO `clt_region` VALUES (2981,349,'谢通门县',3);
INSERT INTO `clt_region` VALUES (2982,349,'白朗县',3);
INSERT INTO `clt_region` VALUES (2983,349,'仁布县',3);
INSERT INTO `clt_region` VALUES (2984,349,'康马县',3);
INSERT INTO `clt_region` VALUES (2985,349,'定结县',3);
INSERT INTO `clt_region` VALUES (2986,349,'仲巴县',3);
INSERT INTO `clt_region` VALUES (2987,349,'亚东县',3);
INSERT INTO `clt_region` VALUES (2988,349,'吉隆县',3);
INSERT INTO `clt_region` VALUES (2989,349,'聂拉木县',3);
INSERT INTO `clt_region` VALUES (2990,349,'萨嘎县',3);
INSERT INTO `clt_region` VALUES (2991,349,'岗巴县',3);
INSERT INTO `clt_region` VALUES (2992,350,'乃东县',3);
INSERT INTO `clt_region` VALUES (2993,350,'扎囊县',3);
INSERT INTO `clt_region` VALUES (2994,350,'贡嘎县',3);
INSERT INTO `clt_region` VALUES (2995,350,'桑日县',3);
INSERT INTO `clt_region` VALUES (2996,350,'琼结县',3);
INSERT INTO `clt_region` VALUES (2997,350,'曲松县',3);
INSERT INTO `clt_region` VALUES (2998,350,'措美县',3);
INSERT INTO `clt_region` VALUES (2999,350,'洛扎县',3);
INSERT INTO `clt_region` VALUES (3000,350,'加查县',3);
INSERT INTO `clt_region` VALUES (3001,350,'隆子县',3);
INSERT INTO `clt_region` VALUES (3002,350,'错那县',3);
INSERT INTO `clt_region` VALUES (3003,350,'浪卡子县',3);
INSERT INTO `clt_region` VALUES (3004,351,'天山区',3);
INSERT INTO `clt_region` VALUES (3005,351,'沙依巴克区',3);
INSERT INTO `clt_region` VALUES (3006,351,'新市区',3);
INSERT INTO `clt_region` VALUES (3007,351,'水磨沟区',3);
INSERT INTO `clt_region` VALUES (3008,351,'头屯河区',3);
INSERT INTO `clt_region` VALUES (3009,351,'达坂城区',3);
INSERT INTO `clt_region` VALUES (3010,351,'米东区',3);
INSERT INTO `clt_region` VALUES (3011,351,'乌鲁木齐县',3);
INSERT INTO `clt_region` VALUES (3012,352,'阿克苏市',3);
INSERT INTO `clt_region` VALUES (3013,352,'温宿县',3);
INSERT INTO `clt_region` VALUES (3014,352,'库车县',3);
INSERT INTO `clt_region` VALUES (3015,352,'沙雅县',3);
INSERT INTO `clt_region` VALUES (3016,352,'新和县',3);
INSERT INTO `clt_region` VALUES (3017,352,'拜城县',3);
INSERT INTO `clt_region` VALUES (3018,352,'乌什县',3);
INSERT INTO `clt_region` VALUES (3019,352,'阿瓦提县',3);
INSERT INTO `clt_region` VALUES (3020,352,'柯坪县',3);
INSERT INTO `clt_region` VALUES (3021,353,'阿拉尔市',3);
INSERT INTO `clt_region` VALUES (3022,354,'库尔勒市',3);
INSERT INTO `clt_region` VALUES (3023,354,'轮台县',3);
INSERT INTO `clt_region` VALUES (3024,354,'尉犁县',3);
INSERT INTO `clt_region` VALUES (3025,354,'若羌县',3);
INSERT INTO `clt_region` VALUES (3026,354,'且末县',3);
INSERT INTO `clt_region` VALUES (3027,354,'焉耆',3);
INSERT INTO `clt_region` VALUES (3028,354,'和静县',3);
INSERT INTO `clt_region` VALUES (3029,354,'和硕县',3);
INSERT INTO `clt_region` VALUES (3030,354,'博湖县',3);
INSERT INTO `clt_region` VALUES (3031,355,'博乐市',3);
INSERT INTO `clt_region` VALUES (3032,355,'精河县',3);
INSERT INTO `clt_region` VALUES (3033,355,'温泉县',3);
INSERT INTO `clt_region` VALUES (3034,356,'呼图壁县',3);
INSERT INTO `clt_region` VALUES (3035,356,'米泉市',3);
INSERT INTO `clt_region` VALUES (3036,356,'昌吉市',3);
INSERT INTO `clt_region` VALUES (3037,356,'阜康市',3);
INSERT INTO `clt_region` VALUES (3038,356,'玛纳斯县',3);
INSERT INTO `clt_region` VALUES (3039,356,'奇台县',3);
INSERT INTO `clt_region` VALUES (3040,356,'吉木萨尔县',3);
INSERT INTO `clt_region` VALUES (3041,356,'木垒',3);
INSERT INTO `clt_region` VALUES (3042,357,'哈密市',3);
INSERT INTO `clt_region` VALUES (3043,357,'伊吾县',3);
INSERT INTO `clt_region` VALUES (3044,357,'巴里坤',3);
INSERT INTO `clt_region` VALUES (3045,358,'和田市',3);
INSERT INTO `clt_region` VALUES (3046,358,'和田县',3);
INSERT INTO `clt_region` VALUES (3047,358,'墨玉县',3);
INSERT INTO `clt_region` VALUES (3048,358,'皮山县',3);
INSERT INTO `clt_region` VALUES (3049,358,'洛浦县',3);
INSERT INTO `clt_region` VALUES (3050,358,'策勒县',3);
INSERT INTO `clt_region` VALUES (3051,358,'于田县',3);
INSERT INTO `clt_region` VALUES (3052,358,'民丰县',3);
INSERT INTO `clt_region` VALUES (3053,359,'喀什市',3);
INSERT INTO `clt_region` VALUES (3054,359,'疏附县',3);
INSERT INTO `clt_region` VALUES (3055,359,'疏勒县',3);
INSERT INTO `clt_region` VALUES (3056,359,'英吉沙县',3);
INSERT INTO `clt_region` VALUES (3057,359,'泽普县',3);
INSERT INTO `clt_region` VALUES (3058,359,'莎车县',3);
INSERT INTO `clt_region` VALUES (3059,359,'叶城县',3);
INSERT INTO `clt_region` VALUES (3060,359,'麦盖提县',3);
INSERT INTO `clt_region` VALUES (3061,359,'岳普湖县',3);
INSERT INTO `clt_region` VALUES (3062,359,'伽师县',3);
INSERT INTO `clt_region` VALUES (3063,359,'巴楚县',3);
INSERT INTO `clt_region` VALUES (3064,359,'塔什库尔干',3);
INSERT INTO `clt_region` VALUES (3065,360,'克拉玛依市',3);
INSERT INTO `clt_region` VALUES (3066,361,'阿图什市',3);
INSERT INTO `clt_region` VALUES (3067,361,'阿克陶县',3);
INSERT INTO `clt_region` VALUES (3068,361,'阿合奇县',3);
INSERT INTO `clt_region` VALUES (3069,361,'乌恰县',3);
INSERT INTO `clt_region` VALUES (3070,362,'石河子市',3);
INSERT INTO `clt_region` VALUES (3071,363,'图木舒克市',3);
INSERT INTO `clt_region` VALUES (3072,364,'吐鲁番市',3);
INSERT INTO `clt_region` VALUES (3073,364,'鄯善县',3);
INSERT INTO `clt_region` VALUES (3074,364,'托克逊县',3);
INSERT INTO `clt_region` VALUES (3075,365,'五家渠市',3);
INSERT INTO `clt_region` VALUES (3076,366,'阿勒泰市',3);
INSERT INTO `clt_region` VALUES (3077,366,'布克赛尔',3);
INSERT INTO `clt_region` VALUES (3078,366,'伊宁市',3);
INSERT INTO `clt_region` VALUES (3079,366,'布尔津县',3);
INSERT INTO `clt_region` VALUES (3080,366,'奎屯市',3);
INSERT INTO `clt_region` VALUES (3081,366,'乌苏市',3);
INSERT INTO `clt_region` VALUES (3082,366,'额敏县',3);
INSERT INTO `clt_region` VALUES (3083,366,'富蕴县',3);
INSERT INTO `clt_region` VALUES (3084,366,'伊宁县',3);
INSERT INTO `clt_region` VALUES (3085,366,'福海县',3);
INSERT INTO `clt_region` VALUES (3086,366,'霍城县',3);
INSERT INTO `clt_region` VALUES (3087,366,'沙湾县',3);
INSERT INTO `clt_region` VALUES (3088,366,'巩留县',3);
INSERT INTO `clt_region` VALUES (3089,366,'哈巴河县',3);
INSERT INTO `clt_region` VALUES (3090,366,'托里县',3);
INSERT INTO `clt_region` VALUES (3091,366,'青河县',3);
INSERT INTO `clt_region` VALUES (3092,366,'新源县',3);
INSERT INTO `clt_region` VALUES (3093,366,'裕民县',3);
INSERT INTO `clt_region` VALUES (3094,366,'和布克赛尔',3);
INSERT INTO `clt_region` VALUES (3095,366,'吉木乃县',3);
INSERT INTO `clt_region` VALUES (3096,366,'昭苏县',3);
INSERT INTO `clt_region` VALUES (3097,366,'特克斯县',3);
INSERT INTO `clt_region` VALUES (3098,366,'尼勒克县',3);
INSERT INTO `clt_region` VALUES (3099,366,'察布查尔',3);
INSERT INTO `clt_region` VALUES (3100,367,'盘龙区',3);
INSERT INTO `clt_region` VALUES (3101,367,'五华区',3);
INSERT INTO `clt_region` VALUES (3102,367,'官渡区',3);
INSERT INTO `clt_region` VALUES (3103,367,'西山区',3);
INSERT INTO `clt_region` VALUES (3104,367,'东川区',3);
INSERT INTO `clt_region` VALUES (3105,367,'安宁市',3);
INSERT INTO `clt_region` VALUES (3106,367,'呈贡县',3);
INSERT INTO `clt_region` VALUES (3107,367,'晋宁县',3);
INSERT INTO `clt_region` VALUES (3108,367,'富民县',3);
INSERT INTO `clt_region` VALUES (3109,367,'宜良县',3);
INSERT INTO `clt_region` VALUES (3110,367,'嵩明县',3);
INSERT INTO `clt_region` VALUES (3111,367,'石林县',3);
INSERT INTO `clt_region` VALUES (3112,367,'禄劝',3);
INSERT INTO `clt_region` VALUES (3113,367,'寻甸',3);
INSERT INTO `clt_region` VALUES (3114,368,'兰坪',3);
INSERT INTO `clt_region` VALUES (3115,368,'泸水县',3);
INSERT INTO `clt_region` VALUES (3116,368,'福贡县',3);
INSERT INTO `clt_region` VALUES (3117,368,'贡山',3);
INSERT INTO `clt_region` VALUES (3118,369,'宁洱',3);
INSERT INTO `clt_region` VALUES (3119,369,'思茅区',3);
INSERT INTO `clt_region` VALUES (3120,369,'墨江',3);
INSERT INTO `clt_region` VALUES (3121,369,'景东',3);
INSERT INTO `clt_region` VALUES (3122,369,'景谷',3);
INSERT INTO `clt_region` VALUES (3123,369,'镇沅',3);
INSERT INTO `clt_region` VALUES (3124,369,'江城',3);
INSERT INTO `clt_region` VALUES (3125,369,'孟连',3);
INSERT INTO `clt_region` VALUES (3126,369,'澜沧',3);
INSERT INTO `clt_region` VALUES (3127,369,'西盟',3);
INSERT INTO `clt_region` VALUES (3128,370,'古城区',3);
INSERT INTO `clt_region` VALUES (3129,370,'宁蒗',3);
INSERT INTO `clt_region` VALUES (3130,370,'玉龙',3);
INSERT INTO `clt_region` VALUES (3131,370,'永胜县',3);
INSERT INTO `clt_region` VALUES (3132,370,'华坪县',3);
INSERT INTO `clt_region` VALUES (3133,371,'隆阳区',3);
INSERT INTO `clt_region` VALUES (3134,371,'施甸县',3);
INSERT INTO `clt_region` VALUES (3135,371,'腾冲县',3);
INSERT INTO `clt_region` VALUES (3136,371,'龙陵县',3);
INSERT INTO `clt_region` VALUES (3137,371,'昌宁县',3);
INSERT INTO `clt_region` VALUES (3138,372,'楚雄市',3);
INSERT INTO `clt_region` VALUES (3139,372,'双柏县',3);
INSERT INTO `clt_region` VALUES (3140,372,'牟定县',3);
INSERT INTO `clt_region` VALUES (3141,372,'南华县',3);
INSERT INTO `clt_region` VALUES (3142,372,'姚安县',3);
INSERT INTO `clt_region` VALUES (3143,372,'大姚县',3);
INSERT INTO `clt_region` VALUES (3144,372,'永仁县',3);
INSERT INTO `clt_region` VALUES (3145,372,'元谋县',3);
INSERT INTO `clt_region` VALUES (3146,372,'武定县',3);
INSERT INTO `clt_region` VALUES (3147,372,'禄丰县',3);
INSERT INTO `clt_region` VALUES (3148,373,'大理市',3);
INSERT INTO `clt_region` VALUES (3149,373,'祥云县',3);
INSERT INTO `clt_region` VALUES (3150,373,'宾川县',3);
INSERT INTO `clt_region` VALUES (3151,373,'弥渡县',3);
INSERT INTO `clt_region` VALUES (3152,373,'永平县',3);
INSERT INTO `clt_region` VALUES (3153,373,'云龙县',3);
INSERT INTO `clt_region` VALUES (3154,373,'洱源县',3);
INSERT INTO `clt_region` VALUES (3155,373,'剑川县',3);
INSERT INTO `clt_region` VALUES (3156,373,'鹤庆县',3);
INSERT INTO `clt_region` VALUES (3157,373,'漾濞',3);
INSERT INTO `clt_region` VALUES (3158,373,'南涧',3);
INSERT INTO `clt_region` VALUES (3159,373,'巍山',3);
INSERT INTO `clt_region` VALUES (3160,374,'潞西市',3);
INSERT INTO `clt_region` VALUES (3161,374,'瑞丽市',3);
INSERT INTO `clt_region` VALUES (3162,374,'梁河县',3);
INSERT INTO `clt_region` VALUES (3163,374,'盈江县',3);
INSERT INTO `clt_region` VALUES (3164,374,'陇川县',3);
INSERT INTO `clt_region` VALUES (3165,375,'香格里拉县',3);
INSERT INTO `clt_region` VALUES (3166,375,'德钦县',3);
INSERT INTO `clt_region` VALUES (3167,375,'维西',3);
INSERT INTO `clt_region` VALUES (3168,376,'泸西县',3);
INSERT INTO `clt_region` VALUES (3169,376,'蒙自县',3);
INSERT INTO `clt_region` VALUES (3170,376,'个旧市',3);
INSERT INTO `clt_region` VALUES (3171,376,'开远市',3);
INSERT INTO `clt_region` VALUES (3172,376,'绿春县',3);
INSERT INTO `clt_region` VALUES (3173,376,'建水县',3);
INSERT INTO `clt_region` VALUES (3174,376,'石屏县',3);
INSERT INTO `clt_region` VALUES (3175,376,'弥勒县',3);
INSERT INTO `clt_region` VALUES (3176,376,'元阳县',3);
INSERT INTO `clt_region` VALUES (3177,376,'红河县',3);
INSERT INTO `clt_region` VALUES (3178,376,'金平',3);
INSERT INTO `clt_region` VALUES (3179,376,'河口',3);
INSERT INTO `clt_region` VALUES (3180,376,'屏边',3);
INSERT INTO `clt_region` VALUES (3181,377,'临翔区',3);
INSERT INTO `clt_region` VALUES (3182,377,'凤庆县',3);
INSERT INTO `clt_region` VALUES (3183,377,'云县',3);
INSERT INTO `clt_region` VALUES (3184,377,'永德县',3);
INSERT INTO `clt_region` VALUES (3185,377,'镇康县',3);
INSERT INTO `clt_region` VALUES (3186,377,'双江',3);
INSERT INTO `clt_region` VALUES (3187,377,'耿马',3);
INSERT INTO `clt_region` VALUES (3188,377,'沧源',3);
INSERT INTO `clt_region` VALUES (3189,378,'麒麟区',3);
INSERT INTO `clt_region` VALUES (3190,378,'宣威市',3);
INSERT INTO `clt_region` VALUES (3191,378,'马龙县',3);
INSERT INTO `clt_region` VALUES (3192,378,'陆良县',3);
INSERT INTO `clt_region` VALUES (3193,378,'师宗县',3);
INSERT INTO `clt_region` VALUES (3194,378,'罗平县',3);
INSERT INTO `clt_region` VALUES (3195,378,'富源县',3);
INSERT INTO `clt_region` VALUES (3196,378,'会泽县',3);
INSERT INTO `clt_region` VALUES (3197,378,'沾益县',3);
INSERT INTO `clt_region` VALUES (3198,379,'文山县',3);
INSERT INTO `clt_region` VALUES (3199,379,'砚山县',3);
INSERT INTO `clt_region` VALUES (3200,379,'西畴县',3);
INSERT INTO `clt_region` VALUES (3201,379,'麻栗坡县',3);
INSERT INTO `clt_region` VALUES (3202,379,'马关县',3);
INSERT INTO `clt_region` VALUES (3203,379,'丘北县',3);
INSERT INTO `clt_region` VALUES (3204,379,'广南县',3);
INSERT INTO `clt_region` VALUES (3205,379,'富宁县',3);
INSERT INTO `clt_region` VALUES (3206,380,'景洪市',3);
INSERT INTO `clt_region` VALUES (3207,380,'勐海县',3);
INSERT INTO `clt_region` VALUES (3208,380,'勐腊县',3);
INSERT INTO `clt_region` VALUES (3209,381,'红塔区',3);
INSERT INTO `clt_region` VALUES (3210,381,'江川县',3);
INSERT INTO `clt_region` VALUES (3211,381,'澄江县',3);
INSERT INTO `clt_region` VALUES (3212,381,'通海县',3);
INSERT INTO `clt_region` VALUES (3213,381,'华宁县',3);
INSERT INTO `clt_region` VALUES (3214,381,'易门县',3);
INSERT INTO `clt_region` VALUES (3215,381,'峨山',3);
INSERT INTO `clt_region` VALUES (3216,381,'新平',3);
INSERT INTO `clt_region` VALUES (3217,381,'元江',3);
INSERT INTO `clt_region` VALUES (3218,382,'昭阳区',3);
INSERT INTO `clt_region` VALUES (3219,382,'鲁甸县',3);
INSERT INTO `clt_region` VALUES (3220,382,'巧家县',3);
INSERT INTO `clt_region` VALUES (3221,382,'盐津县',3);
INSERT INTO `clt_region` VALUES (3222,382,'大关县',3);
INSERT INTO `clt_region` VALUES (3223,382,'永善县',3);
INSERT INTO `clt_region` VALUES (3224,382,'绥江县',3);
INSERT INTO `clt_region` VALUES (3225,382,'镇雄县',3);
INSERT INTO `clt_region` VALUES (3226,382,'彝良县',3);
INSERT INTO `clt_region` VALUES (3227,382,'威信县',3);
INSERT INTO `clt_region` VALUES (3228,382,'水富县',3);
INSERT INTO `clt_region` VALUES (3229,383,'西湖区',3);
INSERT INTO `clt_region` VALUES (3230,383,'上城区',3);
INSERT INTO `clt_region` VALUES (3231,383,'下城区',3);
INSERT INTO `clt_region` VALUES (3232,383,'拱墅区',3);
INSERT INTO `clt_region` VALUES (3233,383,'滨江区',3);
INSERT INTO `clt_region` VALUES (3234,383,'江干区',3);
INSERT INTO `clt_region` VALUES (3235,383,'萧山区',3);
INSERT INTO `clt_region` VALUES (3236,383,'余杭区',3);
INSERT INTO `clt_region` VALUES (3237,383,'市郊',3);
INSERT INTO `clt_region` VALUES (3238,383,'建德市',3);
INSERT INTO `clt_region` VALUES (3239,383,'富阳市',3);
INSERT INTO `clt_region` VALUES (3240,383,'临安市',3);
INSERT INTO `clt_region` VALUES (3241,383,'桐庐县',3);
INSERT INTO `clt_region` VALUES (3242,383,'淳安县',3);
INSERT INTO `clt_region` VALUES (3243,384,'吴兴区',3);
INSERT INTO `clt_region` VALUES (3244,384,'南浔区',3);
INSERT INTO `clt_region` VALUES (3245,384,'德清县',3);
INSERT INTO `clt_region` VALUES (3246,384,'长兴县',3);
INSERT INTO `clt_region` VALUES (3247,384,'安吉县',3);
INSERT INTO `clt_region` VALUES (3248,385,'南湖区',3);
INSERT INTO `clt_region` VALUES (3249,385,'秀洲区',3);
INSERT INTO `clt_region` VALUES (3250,385,'海宁市',3);
INSERT INTO `clt_region` VALUES (3251,385,'嘉善县',3);
INSERT INTO `clt_region` VALUES (3252,385,'平湖市',3);
INSERT INTO `clt_region` VALUES (3253,385,'桐乡市',3);
INSERT INTO `clt_region` VALUES (3254,385,'海盐县',3);
INSERT INTO `clt_region` VALUES (3255,386,'婺城区',3);
INSERT INTO `clt_region` VALUES (3256,386,'金东区',3);
INSERT INTO `clt_region` VALUES (3257,386,'兰溪市',3);
INSERT INTO `clt_region` VALUES (3258,386,'市区',3);
INSERT INTO `clt_region` VALUES (3259,386,'佛堂镇',3);
INSERT INTO `clt_region` VALUES (3260,386,'上溪镇',3);
INSERT INTO `clt_region` VALUES (3261,386,'义亭镇',3);
INSERT INTO `clt_region` VALUES (3262,386,'大陈镇',3);
INSERT INTO `clt_region` VALUES (3263,386,'苏溪镇',3);
INSERT INTO `clt_region` VALUES (3264,386,'赤岸镇',3);
INSERT INTO `clt_region` VALUES (3265,386,'东阳市',3);
INSERT INTO `clt_region` VALUES (3266,386,'永康市',3);
INSERT INTO `clt_region` VALUES (3267,386,'武义县',3);
INSERT INTO `clt_region` VALUES (3268,386,'浦江县',3);
INSERT INTO `clt_region` VALUES (3269,386,'磐安县',3);
INSERT INTO `clt_region` VALUES (3270,387,'莲都区',3);
INSERT INTO `clt_region` VALUES (3271,387,'龙泉市',3);
INSERT INTO `clt_region` VALUES (3272,387,'青田县',3);
INSERT INTO `clt_region` VALUES (3273,387,'缙云县',3);
INSERT INTO `clt_region` VALUES (3274,387,'遂昌县',3);
INSERT INTO `clt_region` VALUES (3275,387,'松阳县',3);
INSERT INTO `clt_region` VALUES (3276,387,'云和县',3);
INSERT INTO `clt_region` VALUES (3277,387,'庆元县',3);
INSERT INTO `clt_region` VALUES (3278,387,'景宁',3);
INSERT INTO `clt_region` VALUES (3279,388,'海曙区',3);
INSERT INTO `clt_region` VALUES (3280,388,'江东区',3);
INSERT INTO `clt_region` VALUES (3281,388,'江北区',3);
INSERT INTO `clt_region` VALUES (3282,388,'镇海区',3);
INSERT INTO `clt_region` VALUES (3283,388,'北仑区',3);
INSERT INTO `clt_region` VALUES (3284,388,'鄞州区',3);
INSERT INTO `clt_region` VALUES (3285,388,'余姚市',3);
INSERT INTO `clt_region` VALUES (3286,388,'慈溪市',3);
INSERT INTO `clt_region` VALUES (3287,388,'奉化市',3);
INSERT INTO `clt_region` VALUES (3288,388,'象山县',3);
INSERT INTO `clt_region` VALUES (3289,388,'宁海县',3);
INSERT INTO `clt_region` VALUES (3290,389,'越城区',3);
INSERT INTO `clt_region` VALUES (3291,389,'上虞市',3);
INSERT INTO `clt_region` VALUES (3292,389,'嵊州市',3);
INSERT INTO `clt_region` VALUES (3293,389,'绍兴县',3);
INSERT INTO `clt_region` VALUES (3294,389,'新昌县',3);
INSERT INTO `clt_region` VALUES (3295,389,'诸暨市',3);
INSERT INTO `clt_region` VALUES (3296,390,'椒江区',3);
INSERT INTO `clt_region` VALUES (3297,390,'黄岩区',3);
INSERT INTO `clt_region` VALUES (3298,390,'路桥区',3);
INSERT INTO `clt_region` VALUES (3299,390,'温岭市',3);
INSERT INTO `clt_region` VALUES (3300,390,'临海市',3);
INSERT INTO `clt_region` VALUES (3301,390,'玉环县',3);
INSERT INTO `clt_region` VALUES (3302,390,'三门县',3);
INSERT INTO `clt_region` VALUES (3303,390,'天台县',3);
INSERT INTO `clt_region` VALUES (3304,390,'仙居县',3);
INSERT INTO `clt_region` VALUES (3305,391,'鹿城区',3);
INSERT INTO `clt_region` VALUES (3306,391,'龙湾区',3);
INSERT INTO `clt_region` VALUES (3307,391,'瓯海区',3);
INSERT INTO `clt_region` VALUES (3308,391,'瑞安市',3);
INSERT INTO `clt_region` VALUES (3309,391,'乐清市',3);
INSERT INTO `clt_region` VALUES (3310,391,'洞头县',3);
INSERT INTO `clt_region` VALUES (3311,391,'永嘉县',3);
INSERT INTO `clt_region` VALUES (3312,391,'平阳县',3);
INSERT INTO `clt_region` VALUES (3313,391,'苍南县',3);
INSERT INTO `clt_region` VALUES (3314,391,'文成县',3);
INSERT INTO `clt_region` VALUES (3315,391,'泰顺县',3);
INSERT INTO `clt_region` VALUES (3316,392,'定海区',3);
INSERT INTO `clt_region` VALUES (3317,392,'普陀区',3);
INSERT INTO `clt_region` VALUES (3318,392,'岱山县',3);
INSERT INTO `clt_region` VALUES (3319,392,'嵊泗县',3);
INSERT INTO `clt_region` VALUES (3320,393,'衢州市',3);
INSERT INTO `clt_region` VALUES (3321,393,'江山市',3);
INSERT INTO `clt_region` VALUES (3322,393,'常山县',3);
INSERT INTO `clt_region` VALUES (3323,393,'开化县',3);
INSERT INTO `clt_region` VALUES (3324,393,'龙游县',3);
INSERT INTO `clt_region` VALUES (3325,394,'合川区',3);
INSERT INTO `clt_region` VALUES (3326,394,'江津区',3);
INSERT INTO `clt_region` VALUES (3327,394,'南川区',3);
INSERT INTO `clt_region` VALUES (3328,394,'永川区',3);
INSERT INTO `clt_region` VALUES (3329,394,'南岸区',3);
INSERT INTO `clt_region` VALUES (3330,394,'渝北区',3);
INSERT INTO `clt_region` VALUES (3331,394,'万盛区',3);
INSERT INTO `clt_region` VALUES (3332,394,'大渡口区',3);
INSERT INTO `clt_region` VALUES (3333,394,'万州区',3);
INSERT INTO `clt_region` VALUES (3334,394,'北碚区',3);
INSERT INTO `clt_region` VALUES (3335,394,'沙坪坝区',3);
INSERT INTO `clt_region` VALUES (3336,394,'巴南区',3);
INSERT INTO `clt_region` VALUES (3337,394,'涪陵区',3);
INSERT INTO `clt_region` VALUES (3338,394,'江北区',3);
INSERT INTO `clt_region` VALUES (3339,394,'九龙坡区',3);
INSERT INTO `clt_region` VALUES (3340,394,'渝中区',3);
INSERT INTO `clt_region` VALUES (3341,394,'黔江开发区',3);
INSERT INTO `clt_region` VALUES (3342,394,'长寿区',3);
INSERT INTO `clt_region` VALUES (3343,394,'双桥区',3);
INSERT INTO `clt_region` VALUES (3344,394,'綦江县',3);
INSERT INTO `clt_region` VALUES (3345,394,'潼南县',3);
INSERT INTO `clt_region` VALUES (3346,394,'铜梁县',3);
INSERT INTO `clt_region` VALUES (3347,394,'大足县',3);
INSERT INTO `clt_region` VALUES (3348,394,'荣昌县',3);
INSERT INTO `clt_region` VALUES (3349,394,'璧山县',3);
INSERT INTO `clt_region` VALUES (3350,394,'垫江县',3);
INSERT INTO `clt_region` VALUES (3351,394,'武隆县',3);
INSERT INTO `clt_region` VALUES (3352,394,'丰都县',3);
INSERT INTO `clt_region` VALUES (3353,394,'城口县',3);
INSERT INTO `clt_region` VALUES (3354,394,'梁平县',3);
INSERT INTO `clt_region` VALUES (3355,394,'开县',3);
INSERT INTO `clt_region` VALUES (3356,394,'巫溪县',3);
INSERT INTO `clt_region` VALUES (3357,394,'巫山县',3);
INSERT INTO `clt_region` VALUES (3358,394,'奉节县',3);
INSERT INTO `clt_region` VALUES (3359,394,'云阳县',3);
INSERT INTO `clt_region` VALUES (3360,394,'忠县',3);
INSERT INTO `clt_region` VALUES (3361,394,'石柱',3);
INSERT INTO `clt_region` VALUES (3362,394,'彭水',3);
INSERT INTO `clt_region` VALUES (3363,394,'酉阳',3);
INSERT INTO `clt_region` VALUES (3364,394,'秀山',3);
INSERT INTO `clt_region` VALUES (3365,395,'沙田区',3);
INSERT INTO `clt_region` VALUES (3366,395,'东区',3);
INSERT INTO `clt_region` VALUES (3367,395,'观塘区',3);
INSERT INTO `clt_region` VALUES (3368,395,'黄大仙区',3);
INSERT INTO `clt_region` VALUES (3369,395,'九龙城区',3);
INSERT INTO `clt_region` VALUES (3370,395,'屯门区',3);
INSERT INTO `clt_region` VALUES (3371,395,'葵青区',3);
INSERT INTO `clt_region` VALUES (3372,395,'元朗区',3);
INSERT INTO `clt_region` VALUES (3373,395,'深水埗区',3);
INSERT INTO `clt_region` VALUES (3374,395,'西贡区',3);
INSERT INTO `clt_region` VALUES (3375,395,'大埔区',3);
INSERT INTO `clt_region` VALUES (3376,395,'湾仔区',3);
INSERT INTO `clt_region` VALUES (3377,395,'油尖旺区',3);
INSERT INTO `clt_region` VALUES (3378,395,'北区',3);
INSERT INTO `clt_region` VALUES (3379,395,'南区',3);
INSERT INTO `clt_region` VALUES (3380,395,'荃湾区',3);
INSERT INTO `clt_region` VALUES (3381,395,'中西区',3);
INSERT INTO `clt_region` VALUES (3382,395,'离岛区',3);
INSERT INTO `clt_region` VALUES (3383,396,'澳门',3);
INSERT INTO `clt_region` VALUES (3384,397,'台北',3);
INSERT INTO `clt_region` VALUES (3385,397,'高雄',3);
INSERT INTO `clt_region` VALUES (3386,397,'基隆',3);
INSERT INTO `clt_region` VALUES (3387,397,'台中',3);
INSERT INTO `clt_region` VALUES (3388,397,'台南',3);
INSERT INTO `clt_region` VALUES (3389,397,'新竹',3);
INSERT INTO `clt_region` VALUES (3390,397,'嘉义',3);
INSERT INTO `clt_region` VALUES (3391,397,'宜兰县',3);
INSERT INTO `clt_region` VALUES (3392,397,'桃园县',3);
INSERT INTO `clt_region` VALUES (3393,397,'苗栗县',3);
INSERT INTO `clt_region` VALUES (3394,397,'彰化县',3);
INSERT INTO `clt_region` VALUES (3395,397,'南投县',3);
INSERT INTO `clt_region` VALUES (3396,397,'云林县',3);
INSERT INTO `clt_region` VALUES (3397,397,'屏东县',3);
INSERT INTO `clt_region` VALUES (3398,397,'台东县',3);
INSERT INTO `clt_region` VALUES (3399,397,'花莲县',3);
INSERT INTO `clt_region` VALUES (3400,397,'澎湖县',3);
INSERT INTO `clt_region` VALUES (3401,3,'合肥',2);
INSERT INTO `clt_region` VALUES (3402,3401,'庐阳区',3);
INSERT INTO `clt_region` VALUES (3403,3401,'瑶海区',3);
INSERT INTO `clt_region` VALUES (3404,3401,'蜀山区',3);
INSERT INTO `clt_region` VALUES (3405,3401,'包河区',3);
INSERT INTO `clt_region` VALUES (3406,3401,'长丰县',3);
INSERT INTO `clt_region` VALUES (3407,3401,'肥东县',3);
INSERT INTO `clt_region` VALUES (3408,3401,'肥西县',3);
INSERT INTO `clt_region` VALUES (3409,0,'国外',0);
--
-- 表的结构 `clt_role`
-- 
DROP TABLE IF EXISTS `clt_role`;
CREATE TABLE `clt_role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `remark` varchar(255) NOT NULL DEFAULT '',
  `pid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listorder` smallint(6) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- 
-- 导出`clt_role`表中的数据 `clt_role`
--
INSERT INTO `clt_role` VALUES (1,'超级管理员',1,'超级管理',0,0);
INSERT INTO `clt_role` VALUES (2,'普通管理员',1,'普通管理员',0,0);
INSERT INTO `clt_role` VALUES (3,'注册用户',1,'注册用户',0,0);
INSERT INTO `clt_role` VALUES (4,'游客',1,'游客',0,0);
--
-- 表的结构 `clt_role_user`
-- 
DROP TABLE IF EXISTS `clt_role_user`;
CREATE TABLE `clt_role_user` (
  `role_id` mediumint(9) unsigned DEFAULT '0',
  `user_id` char(32) DEFAULT '0',
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
--
-- 表的结构 `clt_site_info`
-- 
DROP TABLE IF EXISTS `clt_site_info`;
CREATE TABLE `clt_site_info` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `icp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- 
-- 导出`clt_site_info`表中的数据 `clt_site_info`
--
INSERT INTO `clt_site_info` VALUES (1,'vzinger','15617774662','vzinger@163.com','豫ICP备17012304号-1');
--
-- 表的结构 `clt_system`
-- 
DROP TABLE IF EXISTS `clt_system`;
CREATE TABLE `clt_system` (
  `id` int(36) unsigned NOT NULL,
  `name` char(36) NOT NULL DEFAULT '' COMMENT '网站名称',
  `url` varchar(36) NOT NULL DEFAULT '' COMMENT '网址',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `key` varchar(200) NOT NULL COMMENT '关键字',
  `des` varchar(200) NOT NULL COMMENT '描述',
  `bah` varchar(50) DEFAULT NULL COMMENT '备案号',
  `copyright` varchar(30) DEFAULT NULL COMMENT 'copyright',
  `ads` varchar(120) DEFAULT NULL COMMENT '公司地址',
  `tel` varchar(15) DEFAULT NULL COMMENT '公司电话',
  `email` varchar(50) DEFAULT NULL COMMENT '公司邮箱',
  `logo` varchar(120) DEFAULT NULL COMMENT 'logo',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- 导出`clt_system`表中的数据 `clt_system`
--
INSERT INTO `clt_system` VALUES (1,'vzinger','http://www.sunshinecom.cn/','vzinger','个人博客。php。PHP。服务器。数据库。','个人博客。php。PHP。服务器。数据库。',' 豫ICP备17012304号-1','2015-2020','河南省洛阳市洛龙区','15617774662','vzinger@163.com','/uploads/20180810/d9a0598c6a8908049352f8e77d3627bc.jpg');
--
-- 表的结构 `clt_team`
-- 
DROP TABLE IF EXISTS `clt_team`;
CREATE TABLE `clt_team` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) NOT NULL DEFAULT '',
  `title_style` varchar(225) NOT NULL DEFAULT '',
  `thumb` varchar(225) NOT NULL DEFAULT '',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `userid` int(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(40) NOT NULL DEFAULT '',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `info` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- 
-- 导出`clt_team`表中的数据 `clt_team`
--
INSERT INTO `clt_team` VALUES (1,'快乐的毛豆豆—前端工程师','color:rgb(57, 61, 73);font-weight:normal;','/uploads/20170905/7ab8f72d93e463183e47a3e596dcd42b.png',0,1,1,'admin',0,1499764958,1504596481,0,7,'<p>2年设计、3年前端，从菜鸟到老手，从未停止追求细节的完美。注重细节，追求完美已成为习惯。</p>');
INSERT INTO `clt_team` VALUES (2,'褫憷—软件工程师','color:rgb(57, 61, 73);font-weight:normal;','/uploads/20170905/775fd1c57af55dd4d4f5f10e6d8390ae.png',0,1,1,'admin',0,1499765015,1504596468,0,7,'<p>5年开发、3年前端，不断的自我建设，来保持向上的状态。</p>');
--
-- 表的结构 `clt_user_level`
-- 
DROP TABLE IF EXISTS `clt_user_level`;
CREATE TABLE `clt_user_level` (
  `level_id` smallint(4) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `level_name` varchar(30) DEFAULT NULL COMMENT '头衔名称',
  `sort` int(3) DEFAULT '0' COMMENT '排序',
  `bomlimit` int(5) DEFAULT '0' COMMENT '积分下限',
  `toplimit` int(5) DEFAULT '0' COMMENT '积分上限',
  PRIMARY KEY (`level_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- 
-- 导出`clt_user_level`表中的数据 `clt_user_level`
--
INSERT INTO `clt_user_level` VALUES (1,'注册会员',1,0,500);
INSERT INTO `clt_user_level` VALUES (2,'铜牌会员',2,501,1000);
INSERT INTO `clt_user_level` VALUES (3,'白银会员',3,1001,2000);
INSERT INTO `clt_user_level` VALUES (4,'黄金会员',4,2001,3500);
INSERT INTO `clt_user_level` VALUES (5,'钻石会员',5,3501,5500);
INSERT INTO `clt_user_level` VALUES (6,'超级VIP',6,5500,99999);
--
-- 表的结构 `clt_users`
-- 
DROP TABLE IF EXISTS `clt_users`;
CREATE TABLE `clt_users` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `email` varchar(60) NOT NULL DEFAULT '' COMMENT '邮件',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '密码',
  `paypwd` varchar(32) DEFAULT NULL COMMENT '支付密码',
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1 男 0 女',
  `birthday` int(11) NOT NULL DEFAULT '0' COMMENT '生日',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '注册时间',
  `delete_time` int(10) unsigned NOT NULL,
  `last_login` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `last_ip` varchar(15) NOT NULL DEFAULT '' COMMENT '最后登录ip',
  `qq` varchar(20) NOT NULL COMMENT 'QQ',
  `mobile` varchar(20) NOT NULL COMMENT '手机号码',
  `mobile_validated` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否验证手机',
  `oauth` varchar(10) DEFAULT '' COMMENT '第三方来源 wx weibo alipay',
  `openid` varchar(100) DEFAULT NULL COMMENT '第三方唯一标示',
  `unionid` varchar(100) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像',
  `province` int(6) DEFAULT '0' COMMENT '省份',
  `city` int(6) DEFAULT '0' COMMENT '市区',
  `district` int(6) DEFAULT '0' COMMENT '县',
  `email_validated` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否验证电子邮箱',
  `username` varchar(50) DEFAULT NULL COMMENT '第三方返回昵称',
  `level` tinyint(1) DEFAULT '1' COMMENT '会员等级',
  `is_lock` tinyint(1) DEFAULT '0' COMMENT '是否被锁定冻结',
  `token` varchar(64) DEFAULT '' COMMENT '用于app 授权类似于session_id',
  `sign` varchar(255) DEFAULT '' COMMENT '签名',
  `status` varchar(20) DEFAULT 'hide' COMMENT '登录状态',
  `ip` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=2601 DEFAULT CHARSET=utf8;

-- 
-- 导出`clt_users`表中的数据 `clt_users`
--
INSERT INTO `clt_users` VALUES (2418,'','','0',0,0,1473066180,0,0,'','','',0,'weixin','oyP7DwGQiH5VQ5EBYFKBuIuu_JXU','0','http://wx.qlogo.cn/mmopen/3ydx8qAabL6ppuCaiaQ9dHrk01rXvbb2N9LShG5N7Dic4ByO6LxUicRxVV8WiaLwuj4sBFT9CibuK8rg0yMvtgC5MdicibwHn5JNy4P/0',0,0,0,0,'波',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2419,'','','0',0,0,1473066272,0,0,'','','',0,'weixin','oyP7DwJI1RwTVZd8T-opkOd-39Yo','0','http://wx.qlogo.cn/mmopen/FrdAUicrPIibdKiaFj3FrFrusNARuzNWicEW9mqpAvu3Ow8ick3YbCtu2yRjPdeDoyAN6086X6KZRlFYbjVhAtrGeQd6gHQBkmziaf/0',0,0,0,0,'胡图+',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2420,'','','0',0,0,1473066316,0,0,'','','',0,'weixin','oyP7DwBKBVbGG-Td1EmvQGqRrr5E','0','http://wx.qlogo.cn/mmopen/3ydx8qAabL5FibLNtP3vw4k5lyxlPQgX5hQkBMUwgu10d9D6HzlxP9RY4hcxknOp0icDZxYSicfIEicsBgMERzjqd6G6FUKyMBCk/0',0,0,0,0,'明少',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2421,'','','0',0,0,1473068358,0,0,'','','',0,'weixin','oyP7DwKzw3yyJo5VHP71GRHZuxho','0','http://wx.qlogo.cn/mmopen/086TMlyKVO6oXKRP2ibJSpNaL8uuJBpibXRwK9Xm10YVZZVw1RoRGQT9kp95NtC88qZaibyFl1fys7Mhbx3WD2f8lIoJpW0CibiaQ/0',0,0,0,0,'_谢',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2422,'','','0',0,0,1473068481,0,0,'','','',0,'weixin','oyP7DwIpahc2NPchA6mXoSEgAFak','0','http://wx.qlogo.cn/mmopen/FrdAUicrPIibdDnzae2picOPfMUDDsK08P3fweYLJag0zRT3neMvBUia2u2H2amC9nNZsicGkKg2dX3qe1IO2CDWFiaw/0',0,0,0,0,'阮伟东（上海圣科）',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2423,'','','0',0,0,1473069054,0,0,'','','',0,'weixin','oyP7DwGwvufglSPnhe3j6VogxImo','0','',0,0,0,0,'后背凉',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2424,'','','0',0,0,1473070165,0,0,'','','',0,'weixin','oyP7DwA5iINWXJ56UZTydmKdW_s4','0','http://wx.qlogo.cn/mmopen/Q8uXlhcy3p3ty0a0Iz3U0c9ebOdpAx2GveLmnyaZpY0fRsz0t4VUjoOuCvBTqCGuhbsaMA30aePEP6KZldu5LD1awGPLKPeJ/0',0,0,0,0,'maobin',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2425,'','','0',0,0,1473071809,0,0,'','','',0,'weixin','oyP7DwPJzLvkfyO6rp9dqfmGrsps','0','http://wx.qlogo.cn/mmopen/25Z0shpDkP1w1xLcdFTY9kuA0iaIiapZhLJvm1HQ0rIuovMN0ibLVArliaVnlnGuSXRsMA3hibU3RoYDLyL8HOQUblibFibb9myqaDI/0',0,0,0,0,'杰',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2426,'','','0',0,0,1473082904,0,0,'','','',0,'weixin','oyP7DwBddSK_qZse_bdqN8pysT64','0','http://wx.qlogo.cn/mmopen/PiajxSqBRaELicoc0fXvgNG9bjIiaUjfJ1KzKePicgmuARgsKvw8qMctIcic0x0FSMicicud406Joz3on4l3d0ic0cicnRw/0',0,0,0,0,'fshark',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2427,'','','0',0,0,1473084562,0,0,'','','',0,'weixin','oyP7DwF-hqWwz8eiUvlKOy2fRrB4','0','http://wx.qlogo.cn/mmopen/Q3auHgzwzM6sA22h4ibnXxagUfib4Y9zqibp7QBbVf7oJzxHzkciblCAibFdfFskqe66zdQh6icVibCHM3aQlAPjzvL8S11DTwkfibA6/0',0,0,0,0,'简优商务',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2428,'','','0',0,0,1473085571,0,0,'','','',0,'weixin','oyP7DwL4A9pFFIXTWLUHxqMTUnnc','0','http://wx.qlogo.cn/mmopen/Q3auHgzwzM75HGOqCeuRORibMaVeYg0R5xTFFJAuv99uO2X0Q1tTibQTHCwNIElnPeuID3ntG0wWx8ibEiaxpTO9OQ/0',0,0,0,0,'微信用户',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2429,'','','0',0,0,1473086235,0,0,'','','',0,'weixin','oyP7DwLKoiVtrTRGWfNkAlOZ_TxY','0','http://wx.qlogo.cn/mmopen/Q3auHgzwzM5eYa3QkvyxkttTv0CTQgbzGcqazwjxvwsOhxcBFX5VsQyvyWLfAfQRzicCEWY2Vqz6cfA4OFBTbXQ/0',0,0,0,0,'兔八哥',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2430,'','','0',0,0,1473086791,0,0,'','','',0,'weixin','oyP7DwOJp-jjX32Sp7LJq820Fia4','0','http://wx.qlogo.cn/mmopen/25Z0shpDkP30Oz0VMes9ia3ibscs0wPrYlmwUa3ic6ljJibfc57r2XgnhsNDMTjGlO9A0Q7OWayhXhm2IBMBdKKTsBATcExuUoJS/0',0,0,0,0,'奋斗',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2431,'','','0',0,0,1473090503,0,0,'','','',0,'weixin','oyP7DwKnrmvYhWOIjJ5vj4lWurjI','0','http://wx.qlogo.cn/mmopen/3ydx8qAabL5jwv9jzV3dELiaybRub1L3odqFOpOZdqUiaKyot70MJFib37bJBfOvz945CRZ2aRnjzTw2WpCjur7JZVO9beAEpXW/0',0,0,0,0,'大浩浩',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2432,'','','0',0,0,1473091471,0,0,'','','',0,'weixin','oyP7DwDkQWihqfjA4BzDLrVFSSUg','0','',0,0,0,0,'巴斯滕',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2433,'','','0',0,0,1473093272,0,0,'','','',0,'weixin','oyP7DwI9nIci5ENWX0Atm8LzP6Xw','0','http://wx.qlogo.cn/mmopen/Q8uXlhcy3p0T34cpiaY0SRNegTb5M3uEMqib4KcBjficBPvjX82K3EkdMnibH1HicDrQYn9Y0N5gSywkDFPUpm17zutkglH1J1LJs/0',0,0,0,0,'越努力 越幸运',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2434,'','','0',0,0,1473110304,0,0,'','','',0,'weixin','oyP7DwAuqnc3C32cq6lIy6JgXvzc','0','http://wx.qlogo.cn/mmopen/ZV9ibMY2iaOQBFXz9l74WY5yAROYbJ2MnJ1CWMyUYia7kJGHdfgvdywnGKKWcIAkmcpibKA0LRwZwvGvX6XlicibdxWoq4b155F2V5/0',0,0,0,0,'A麻辣小龙虾～鸡头王撸串',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2435,'','','0',0,0,1473119022,0,0,'','','',0,'weixin','oyP7DwOVELVtc_CQ7wPnxxjsvZcM','0','http://wx.qlogo.cn/mmopen/FrdAUicrPIibdtgJM1pbD1eGp2NspOAumDbmt9Dtp3cXCl8tYfLfeDEZNAG683bEzbuFaA0iaOdgnXz5vLnbS60icQvLk4rt008k/0',0,0,0,0,'let it go',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2436,'','','0',0,0,1473122323,0,0,'','','',0,'weixin','oyP7DwERPNltTz4sbtIXhtefklus','0','http://wx.qlogo.cn/mmopen/3ydx8qAabL5jwv9jzV3dEKkQkM07m6wFV7IVY7KhtKGOW4GLhzO9mvu9fJUOKYQ199MDibGt7HgCoYuyO7r31ulmo196Pp3K8/0',0,0,0,0,'AA雨鸟 灌溉设备13913853639',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2437,'','','0',0,0,1473122647,0,0,'','','',0,'weixin','oyP7DwBeLq2cG2Q5sqCgb2TAOb9U','0','http://wx.qlogo.cn/mmopen/LF5ufsDqRDZBich9sEj05SKGCibKticAcp07ZvILJxumVxIYhzfSzK4M4Nficpicm2MakiaYYIVjxsibs0FBZHoprdKUj9oL4kDJaog/0',0,0,0,0,'晋朋',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2438,'','','0',0,0,1473124029,0,0,'','','',0,'weixin','oyP7DwE7e5K1w6vQYpSRJBuMDyFo','0','http://wx.qlogo.cn/mmopen/PiajxSqBRaEKdlrKVLMXy2yo1JkBcCEibEUBFDu6e5cJCzKFdA7IsxcjVWK0FZUABD7wLUW2dvW3DCAgWU21Sb8A/0',0,0,0,0,'果子',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2439,'','','0',0,0,1473128141,0,0,'','','',0,'weixin','oyP7DwOyAU9nIVGhgPk0FyPOtjZc','0','http://wx.qlogo.cn/mmopen/Q8uXlhcy3p3ty0a0Iz3U0ZZOEnU8jwB4dibO9raBp1Qiayobkyyz8zbiatnoCwjWFnpsoeySicvKibH2uMMwGqObsO0jIag8Kg5WO/0',0,0,0,0,'DullaHank',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2440,'','','0',0,0,1473129147,0,0,'','','',0,'weixin','oyP7DwIhh59FaiEKu57bXmjRONXc','0','http://wx.qlogo.cn/mmopen/PiajxSqBRaEKZWX35WOgjChwuc3ibm4jP8ycuPs2VT8DkX71pPRj9qpBXwiatCoPomLm1rdZ3GLGkzxlhrLEgqFjg/0',0,0,0,0,'芝麻',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2441,'','','0',0,0,1473129601,0,0,'','','',0,'weixin','oyP7DwLoL8oCgSOLk8yE1OlCT49s','0','http://wx.qlogo.cn/mmopen/3ydx8qAabL5jwv9jzV3dEI5MuLAVibeRWcGoPbpeEgZhTwiaoIibkib3dCedgpRkAVPmZvguOat14iaYA94NMXoiaiaNVj7OyyibJA9g/0',0,0,0,0,'伟志丶ZHAO',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2442,'','','0',0,0,1473131125,0,0,'','','',0,'weixin','oyP7DwJ3fyB9D4Zc1mdgfNzCAQuY','0','http://wx.qlogo.cn/mmopen/3ydx8qAabL6svbjy58HtGlpZ40jxbtV9KSTqOqEwIuzFibxicLcwnDtnKDQWkpibB9JybQzXM0TXcg0VzoVia42QAJZQjPyQkS4A/0',0,0,0,0,'木木',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2443,'','','0',0,0,1473131923,0,0,'','','',0,'weixin','oyP7DwEs0o4laMBPngGeNwFK7fZk','0','http://wx.qlogo.cn/mmopen/Q8uXlhcy3p09e9nl5xN90CmXibcBzzpTXTfv41ibXwHqk1rCkEWQ3WJeQAZsqGsu0R6nalbI7d2EZjy42aF9TaZKsokzxm2koO/0',0,0,0,0,'拂晓',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2444,'','','0',0,0,1473133530,0,0,'','','',0,'weixin','oyP7DwP6XQtSjhw0wJmafFd0WjEA','0','http://wx.qlogo.cn/mmopen/086TMlyKVO4V3fdSWdOn195PEoavweficF7pbHYGuRKTialoxicoB0mEJ7ic1tdcNgkiaILsZMibVZ7uATrXRhjNZiaaGghTMKPoH8S/0',0,0,0,0,'杜杰',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2445,'','','0',0,0,1473134381,0,0,'','','',0,'weixin','oyP7DwA_aTM-WM5ikz2aY4J5Cow8','0','http://wx.qlogo.cn/mmopen/iaic26T1Lo3pGAOAQckkQNzE5dqnvT5Kn9ickBJ75V8kiaG2dcJFPqS4iavOAzYQyjy91lsWP2lOz01ZI2CkHrCj82d2PPUNABLSN/0',0,0,0,0,'桂林自由行开心旅',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2446,'','','0',0,0,1473138871,0,0,'','','',0,'weixin','oyP7DwIALN50O9JEeydo3s3dEPEw','0','',0,0,0,0,'911',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2447,'','','0',0,0,1473140292,0,0,'','','',0,'weixin','oyP7DwKO36pOx5ViwOA9G0idMkzw','0','http://wx.qlogo.cn/mmopen/3ydx8qAabL5jwv9jzV3dEDHDZlVZYgxDGHsurstMciaIn7gKuNQu6SGTyNiaDyGqq73pnww4qtO503qtoeav3qHic8obtKjYmlp/0',0,0,0,0,'六条',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2448,'','','0',0,0,1473140558,0,0,'','','',0,'weixin','oyP7DwBZnK1uIx2mVbWFYbXr-G44','0','http://wx.qlogo.cn/mmopen/FrdAUicrPIibdtgJM1pbD1eJtoqRMwOaD9JnvAuMlNniad4b0fl2DXAbicDdOqdBI0TncrjHBia6huPssTybOUV3ZKeyzlibMPWd2w/0',0,0,0,0,'鲁曦',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2449,'','','0',0,0,1473141166,0,0,'','','',0,'weixin','oyP7DwPOFdBkEdTY9cxhjTtAAZ6k','0','http://wx.qlogo.cn/mmopen/ajNVdqHZLLBocDGZCfmcUvafaW0Z2lNqTKgwuraVGD2etnzSYtzNs8lAibC7fm1nynjwyU98Ib7mlBExFcIkwuQ/0',0,0,0,0,'TKING',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2450,'','','0',0,0,1473141633,0,0,'','','',0,'weixin','oyP7DwPse1R_enWOl3FC9a-3c-6M','0','http://wx.qlogo.cn/mmopen/Q8uXlhcy3p3ty0a0Iz3U0QkibnBN2wBf7f1teJc28GMUSib3M91iaPnawAKkBSQicDfKg1kpmxgnNYvnYkV2o3HCicakoRztKPia2o/0',0,0,0,0,'力涛',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2451,'','','0',0,0,1473142835,0,0,'','','',0,'weixin','oyP7DwDhOj83qQCGco8NrGFi34_c','0','http://wx.qlogo.cn/mmopen/ajNVdqHZLLB62AUkahThYsBmy2huFgbx3N8PLvJVbGb9sjMwRuo3nEH2sCmx75acDZYpJc4OEibRrcTicNTArt53NeEDrKC7ia6iccEeJZsSRPM/0',0,0,0,0,'吉祥如意喜训如山',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2452,'','','0',0,0,1473144209,0,0,'','','',0,'weixin','oyP7DwCdOcLNMKdV5agzPct5QInU','0','http://wx.qlogo.cn/mmopen/3ydx8qAabL5jwv9jzV3dEMcJVgt5VibFnFjFjUEevEeaOibqG1QPeyYbP1OTNf3AvbBr1Ov0evQVY1vQicOqNRJ9D8EajicHlNzia/0',0,0,0,0,'Klaus',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2453,'','','0',0,0,1473144952,0,0,'','','',0,'weixin','oyP7DwNwQulRkf7zJtBAYi8qkJAw','0','http://wx.qlogo.cn/mmopen/25Z0shpDkP3UbT7YAPiakgkorqVh6Vico9nWicxnQtabXUAobnaNCiaQniaicDWIyPRZibfIn9I88xgNo2MGqWxhuFxxd3mNyElFP0t/0',0,0,0,0,'张涵宇',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2454,'','','0',0,0,1473146482,0,0,'','','',0,'weixin','oyP7DwKugbXzKOPJE-eX8AJ09NhE','0','http://wx.qlogo.cn/mmopen/PiajxSqBRaELBrTRCgEvO3bGHD9Ksnj0bgiclDlibYMz7sbCmoZkdd6nOryFkFeDziblqlNKjCVX5FyyibJBoctYT6Q/0',0,0,0,0,'淡水',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2455,'','','0',0,0,1473147422,0,0,'','','',0,'weixin','oyP7DwMxUQiJ3I8lMzfRyjC_rm28','0','http://wx.qlogo.cn/mmopen/Q8uXlhcy3p3ty0a0Iz3U0RibdWBkmp2fMBz58qIibDARcoho8YfyD5JDRQcmYXFytIagpwatT3OXt00KN6XE9rsZz7juicUytdV/0',0,0,0,0,'等潇湘[太阳]',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2456,'','','0',0,0,1473147666,0,0,'','','',0,'qq','25B6226FC55A42A2B28FCA1C3DCD226C','0','0',0,0,0,0,'QQ用户',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2457,'','','0',0,0,1473148235,0,0,'','','',0,'weixin','oyP7DwA0JrTAZEE0Wuc7Fk_OmApY','0','http://wx.qlogo.cn/mmopen/25Z0shpDkP30Oz0VMes9ia47m1k3vL0h30AQQPGxnOs7p8e6h38dyJF1Bia9ibhHbCxBaaokTIuuyfrhTBuwDqmbiaC9qfXdcnz4/0',0,0,0,0,'老凯啊！',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2458,'','','0',0,0,1473148831,0,0,'','','',0,'weixin','oyP7DwGJkXjOkx_lpKlJCu3hywJ0','0','http://wx.qlogo.cn/mmopen/ZV9ibMY2iaOQBFXz9l74WY525JRiayIRzJcD2sn9uNzdvCHJiabcVbvEflNCj9zvTFVia3EMr8sFYZNhe90fv0vpgxp4XrSmUbM6D/0',0,0,0,0,'特种兵',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2459,'','','0',0,0,1473149514,0,0,'','','',0,'weixin','oyP7DwJmPCcCoQaxVY1DYZtZMfyc','0','http://wx.qlogo.cn/mmopen/Q8uXlhcy3p3ty0a0Iz3U0QicGznwLBWxa0iatLEoErC41nv84pFsr2JWf5UTcGZfzb6gVuzWZGDxdLCDhFMNfDiaC67BkNMHqCs/0',0,0,0,0,'安东州精品商城andongzhou.com',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2460,'','','0',0,0,1473150236,0,0,'','','',0,'weixin','oyP7DwLuCWq1roDfaT2AwW6k50OA','0','http://wx.qlogo.cn/mmopen/25Z0shpDkP3YQNEP3k0AyibaLesXfbXqWKlLWt0k465RWDDKxM87Q9ZtaticbxFjWum6TMV2jiacPPquDAd4KFVwg/0',0,0,0,0,'冣賢',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2461,'','','0',0,0,1473150485,0,0,'','','',0,'qq','D2457C2769A0F1143119B22884FD251B','0','0',0,0,0,0,'QQ用户',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2462,'','','0',0,0,1473150819,0,0,'','','',0,'weixin','oyP7DwAj4eQIUYClkNAfP5E4lAWc','0','http://wx.qlogo.cn/mmopen/BzWCcPP22nOy45LczFRHcZO2bPKNkB1kX2MczVwy6KFhGwvU4Y2ysdRRjZibMKQNiciacfqiaUPibg7gDY4ic5mOGYr3OAY4r8bF1b/0',0,0,0,0,'草莓',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2463,'','','0',0,0,1473151175,0,0,'','','',0,'weixin','oyP7DwD-5ozV9bIB_IA1_cWfb2Zk','0','http://wx.qlogo.cn/mmopen/ajNVdqHZLLAMcnwSWKiaXstXYcFnkvaQvmEJm8PXvHQDPyD7SVPR4c0TDSC3PLbQRySSOPzVZZiaGKfj2V030x0Q/0',0,0,0,0,'赵小八',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2464,'','','0',0,0,1473151475,0,0,'','','',0,'weixin','oyP7DwJ21Zahe-flCqaDVREYzBRk','0','http://wx.qlogo.cn/mmopen/ajNVdqHZLLCg7tzl4j1tDXdxvSBXdvebSP4SQtHtYs1MYOxl7GAJAKsGMbmfricRFicVf9b17axicvvmGBZovmSicg/0',0,0,0,0,'pei',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2465,'','','0',0,0,1473153618,0,0,'','','',0,'weixin','oyP7DwOmWw6hv1ewYYvxFDrqDRqQ','0','http://wx.qlogo.cn/mmopen/FrdAUicrPIibeos4uwWxfpJ804o6Zribb3WfRkYcia0qBK1m8AuicZnbd4l2YV3ox5yh7cKoGjaUXZGl0CsV6uYHWqcDnicywic5wCia/0',0,0,0,0,'大白',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2466,'','','0',0,0,1473153671,0,0,'','','',0,'weixin','oyP7DwEEyRaZeBCiADwLFqcF72VA','0','http://wx.qlogo.cn/mmopen/3ydx8qAabL5FibLNtP3vw4ial2aKkDE9V7p5aibRUruCtNEDnKCibAJVZQXAyOgicANtK0rbzN3ibFyfSmn1fZvs5rguAlFZcQXR5w/0',0,0,0,0,'梅花一点默',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2467,'','','0',0,0,1473157170,0,0,'','','',0,'weixin','oyP7DwLTfKKio_rHT8BGlpviQack','0','http://wx.qlogo.cn/mmopen/25Z0shpDkP3Uf81O59cia4rxIdmWxnL73zIlU6mC3116qLCugxc2c6edw5EgYO3gFwRpl66FribqtyF6WZvV6J5g/0',0,0,0,0,'天蓝',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2468,'','','0',0,0,1473158893,0,0,'','','',0,'weixin','oyP7DwF-xoz2p7rB10MpkT2JJFQA','0','http://wx.qlogo.cn/mmopen/25Z0shpDkP30Oz0VMes9ia0Ckyz8US4WiaCcmmsR8Jw9MgPSAgHF9l07BwIxwElHkFuic2XdicKjnjlF6scdSIDMvhqbicN8rJCyB/0',0,0,0,0,'测试',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2469,'','','0',0,0,1473158986,0,0,'','','',0,'weixin','oyP7DwGBF4KkmblFw54cM_u0JWE4','0','http://wx.qlogo.cn/mmopen/25Z0shpDkP0RvV7Afp8wrdYNC2kGXMribxpic4cibO0qvKNG3bgMANWMK2xdZkiata0HHqiawm0TtU6s47pf3bkNmLNQLicoPiaMDjF/0',0,0,0,0,'Stroustrup_Lee',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2470,'','','0',0,0,1473160648,0,0,'','','',0,'weixin','oyP7DwKtiZc7G6R6znh_mtVROh0c','0','http://wx.qlogo.cn/mmopen/25Z0shpDkP3qaDNsCRUQvBrFaicSSNMk2UR11dpkibDGInmpZ7FWsXVK0nF0dnz4jIibKyY6tW3zIZKZPICiaqiaD5fh3Zds45tMT/0',0,0,0,0,'AAA十倍不是梦',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2471,'','','0',0,0,1473162381,0,0,'','','',0,'weixin','oyP7DwDNINN0zV6n-uzWG4nCUzUc','0','http://wx.qlogo.cn/mmopen/FrdAUicrPIibepibq4vHMUYJQg9ZawSGU90icna5ibtHL7AWBbj4OWMNfe6PZsrrFn09Uocqsa5dAttE9OEjxVqYQDg/0',0,0,0,0,'淡忘',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2472,'','','0',0,0,1473164314,0,0,'','','',0,'weixin','oyP7DwNObImdP-3-vNkoQAVd4NuE','0','http://wx.qlogo.cn/mmopen/25Z0shpDkP30Oz0VMes9ia0yK7WOBsYgAvicWIRYzcjHkMajibsqVHaSV0H9VQJLCXGE2QA6bLa5um1kpmUf9V68o7RYZ7fEy5v/0',0,0,0,0,'林贵良',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2473,'','','0',0,0,1473169295,0,0,'','','',0,'weixin','oyP7DwPQ4QrRzXvxwz2YNrnHAVio','0','http://wx.qlogo.cn/mmopen/PiajxSqBRaEIy00PHyESZGQZibo2M44KEvjon3gfB5UUcFiaFjqhQ2Rj1dFJXuzQicEA2mJ6yrggJEmiaOwTjzpFZeA/0',0,0,0,0,'百里奚',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2474,'','','0',0,0,1473169788,0,0,'','','',0,'weixin','oyP7DwIU_odcheau81rNUklohqJE','0','http://wx.qlogo.cn/mmopen/25Z0shpDkP30Oz0VMes9iayYia9HCv45D2n9J1mNWDxibNQCxUX44n4n7xHLJEK9tro4Epql4RvKNHRqyvrqdzlQVW3VsomNYZ7/0',0,0,0,0,'瑞班克',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2475,'','','0',0,0,1473174122,0,0,'','','',0,'weixin','oyP7DwNETn9cHy1Uc7N1g08xEVHo','0','http://wx.qlogo.cn/mmopen/FrdAUicrPIibcoic0xFZSEtaBjU6mK0Hth5PnmviaDrHWQz68BrYdlqibKRoRRCrpBGxX9rafic6yaD0YlZbcgc3Wd0g/0',0,0,0,0,'海纳百川',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2476,'','','0',0,0,1473174695,0,0,'','','',0,'weixin','oyP7DwALPtHTEUGWpCL0fKFjeOqQ','0','http://wx.qlogo.cn/mmopen/ajNVdqHZLLCCdDpJF0HLA4pSCnn5iccQTRklRInibFcsiaWYkFOCx1UYHodiccTqBx23VcZO3yJZT6c52Q4tyf2oBjzMD0SDWYibiakWZ6Jmeqyso/0',0,0,0,0,'大神',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2477,'','','0',0,0,1473176002,0,0,'','','',0,'weixin','oyP7DwG6XoX-bPJAAUYTFW6qbD7s','0','http://wx.qlogo.cn/mmopen/Q3auHgzwzM5kLBFeEqOa4s9TzUEFxVIjCvMGCvgR9dEKXxhbg3HgybTZR4dW33PWXHG1cibsCtTASr1qzOibuboA/0',0,0,0,0,'胖胖灰太狼',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2478,'','','0',0,0,1473176508,0,0,'','','',0,'weixin','oyP7DwIY5Zn0T6WeG4vj3bWQcTww','0','http://wx.qlogo.cn/mmopen/FrdAUicrPIibdiaYc8hFicrMvMqD7RzWSNFSneVlnmqFWrklrlljqYOQYKkwobIugHMPVcd3jc9yT5acvruWZoAibAw/0',0,0,0,0,'谢凌剑 Linkin',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2479,'','','0',0,0,1473208844,0,0,'','','',0,'weixin','oyP7DwJHEmCE14xg3HdZ3N5kXfms','0','http://wx.qlogo.cn/mmopen/Q8uXlhcy3p3ty0a0Iz3U0W2zKKxLGBI0HYR7OPtSUtGRD4hUv8ic9CTT7hvvIWKoDmFnRa9FvXibKesA0P3ZAmwFUWuYj0wgk8/0',0,0,0,0,'吾皇万岁',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2480,'','','0',0,0,1473209662,0,0,'','','',0,'weixin','oyP7DwCLFOVwTPwgP4yJJPvyKKic','0','http://wx.qlogo.cn/mmopen/Q8uXlhcy3p3ty0a0Iz3U0VB0GdFR3kznJibE5JhiaeW7ThFIK0CpDfIibeY28HKaxKDvvuXib8GXM3UicbfjGF0KzibiaL2JT5XKbm7/0',0,0,0,0,'D.C',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2481,'','','0',0,0,1473210650,0,0,'','','',0,'weixin','oyP7DwDz0-rn7urarikWcNUCA2c4','0','http://wx.qlogo.cn/mmopen/FrdAUicrPIibdtgJM1pbD1eOYs2AgZaibbq7ictKOkrqAfkJQ7vpCPovXDic64tmI5v6O0fmvwYCJWWK6sTrSSTNCAaVAoKKHezzt/0',0,0,0,0,'墙',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2482,'','','0',0,0,1473210981,0,0,'','','',0,'weixin','oyP7DwDK5IHjyfx7H__XQLd9PDdY','0','http://wx.qlogo.cn/mmopen/FrdAUicrPIibdtgJM1pbD1eIgp7SQsFMZGMn6uTYL1iatfy9mBthmibjaObpldPyibpLIic0q2hP3WxyNI9icic8AlSM1iaMia6ASLx8wN/0',0,0,0,0,'韩振军',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2483,'','','0',0,0,1473211330,0,0,'','','',0,'weixin','oyP7DwGZPdIGGY3_uaQjg77ZH4es','0','http://wx.qlogo.cn/mmopen/Q3auHgzwzM74kP9icupNjsp9iclibARsaDdE2ZflYB2Fial5UT0WhHa2bJpRWZfP2u9de6y8MF6MHDxdIIE3RYiaf3Nu4Sxeg2soEcRr51SUcaK4/0',0,0,0,0,'喜马拉雅',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2484,'','','0',0,0,1473211386,0,0,'','','',0,'weixin','oyP7DwJWbQudaY4Ok8imPz5Wl7_4','0','http://wx.qlogo.cn/mmopen/ajNVdqHZLLCfaxkRjnBXzsxf0A3Rn9b445DNEibJE84EO7s0VQJhPNmjibZ0HJ2Fp2kvuyiahVsbrNGIlc0SKhnCg/0',0,0,0,0,'醉·清风',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2485,'','','0',0,0,1473212190,0,0,'','','',0,'weixin','oyP7DwNTywBLCm_6bo7_48fsUHqk','0','',0,0,0,0,'JasonTang',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2486,'','','0',0,0,1473213358,0,0,'','','',0,'weixin','oyP7DwI2eYVV6DUU5rnU1y5VM-4Q','0','http://wx.qlogo.cn/mmopen/25Z0shpDkP1Z3W2Kb0YMuQDAfT8qSjohoDtt5Q76iclfhLlZibQPlMAgria36jEMibmakDSuribUHFDzKTpPHNoFIxdGw2KM4bicJr/0',0,0,0,0,'寒星晓月',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2487,'','','0',0,0,1473213584,0,0,'','','',0,'weixin','oyP7DwER8GVECy1l9WbwRD6m_Jms','0','http://wx.qlogo.cn/mmopen/25Z0shpDkP30Oz0VMes9ia9gz8xFZfXj7q8BBh9jMvJvAqf0YSlmdm5lII3heXjEx39iaPMEC42OtpKNQibicYNZncHAzibklFmvK/0',0,0,0,0,'瓢儿白',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2488,'','','0',0,0,1473214689,0,0,'','','',0,'weixin','oyP7DwLjJxcrtVJbVxHlJ-fEidpM','0','http://wx.qlogo.cn/mmopen/3ydx8qAabL5YgeHY5MlXbEjhxcDppic1lGSBKET2T1jlCf9Asbx2tncF2K3gpOLpibIjvkfKEicBg70nEzdN2icxy75I9nIHmO5a/0',0,0,0,0,'fishstudio',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2489,'','','0',0,0,1473217776,0,0,'','','',0,'weixin','oyP7DwBxss0aEGnUNlZhARzBlIxM','0','http://wx.qlogo.cn/mmopen/ajNVdqHZLLC7BVu3pChC0bJJBH9MGKDPhdHDeJBEPDsg7Gju8wC007ES0QHvGxWiakwGNFic3uLU35FHsWsLHGoA/0',0,0,0,0,'Carsen赖志华',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2490,'','','0',0,0,1473218609,0,0,'','','',0,'weixin','oyP7DwJfK_uzhS4p3S1dbbcUefi8','0','http://wx.qlogo.cn/mmopen/vzdiaa5rSAQ5z2VfdYML8UPoaHsqcYpRh74ZrW47rBoyHziccyZRxEWA5FhZ9bgOBIa9pY8Rfkfxe9eXibXBEL2NnNdCibDsKBo8/0',0,0,0,0,'Mr.郑恒锋',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2491,'','','0',0,0,1473219320,0,0,'','','',0,'weixin','oyP7DwIYjWeqgcb7Dr421RXzevJ8','0','http://wx.qlogo.cn/mmopen/25Z0shpDkP30Oz0VMes9ia1gMuFN5wtfDiazbOZTe0vbY5Bk44N9xGaZHlRCPKVXp2wF0VtKMVEibicJfAZpD9w4NKRO6e83zP4O/0',0,0,0,0,'冯仲伟『物联网＋平台开发实力派』',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2492,'','','0',0,0,1473219583,0,0,'','','',0,'weixin','oyP7DwKXaaBfiSfKp_yakRLdMRkU','0','http://wx.qlogo.cn/mmopen/3ydx8qAabL5jwv9jzV3dEOY9GNSVy4yAouKCjeYkJ02tN9PNSs7w0dWxemaI4k1cKM3cK1Pm0yIYLjH6OdIDx8UIyMUibB7fP/0',0,0,0,0,'冉',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2493,'','','0',0,0,1473219915,0,0,'','','',0,'weixin','oyP7DwKfGvA7k3w5b9PlQhOqFi2A','0','http://wx.qlogo.cn/mmopen/3ydx8qAabL5jwv9jzV3dEBNciaQic69V7CjDMM9TPZbTibw1910jGNfCywKdWy44gslTQjHTukI2c6MrLfFPJMUGENsecVe6N92/0',0,0,0,0,'宋恒冲|物联网互联网电商平台建设',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2494,'','','0',0,0,1473220016,0,0,'','','',0,'weixin','oyP7DwONtyNgqOBhzxdW8OEbba3g','0','http://wx.qlogo.cn/mmopen/ajNVdqHZLLBPaNVJVKyKich83acZAckZA4DWqjHEGlKjoBqkZNl1KicUyy3FT8Sk1Fzno6tZXibKic4wp7zWaCUFSA/0',0,0,0,0,'Joy',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2495,'','','0',0,0,1473230572,0,0,'','','',0,'weixin','oyP7DwFSUAQPzoKQhQ96D7vaartA','0','http://wx.qlogo.cn/mmopen/25Z0shpDkP1WrzV1w7894Lb0oicR9Dahhibyup2YunoV8m84tHj9JCy3LMWD7JFWhXZB1xPibGa4NftFtrHLaJsUibMco3WWfZrd/0',0,0,0,0,'李淋',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2496,'','','0',0,0,1473231161,0,0,'','','',0,'weixin','oyP7DwIe6uZM5L9sCO28B6bBcvjI','0','http://wx.qlogo.cn/mmopen/Q8uXlhcy3p3ty0a0Iz3U0fqbr0ySqXFxHQ7RJ3q8wGfp5Ef1Vg8hJwssTyR1tu2R5lCFknVe0rjwxpIC5G03jJTDQy2Pv7x1/0',0,0,0,0,'业',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2497,'','','0',0,0,1473231546,0,0,'','','',0,'weixin','oyP7DwPgxKb388u3SspRnCHEi000','0','http://wx.qlogo.cn/mmopen/Q8uXlhcy3p3ty0a0Iz3U0SSkOmE2OTGM5gH8H4RgoK7efsnEbpf7cicAIq2947Krq0NFn2XAVpchPxV3cKicmhjcMh6OqMgQTh/0',0,0,0,0,'肖柯',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2498,'','','0',0,0,1473231786,0,0,'','','',0,'weixin','oyP7DwHCEncpD6ZhlQu-I41lrh-U','0','http://wx.qlogo.cn/mmopen/FrdAUicrPIibdtgJM1pbD1eMt0vwPzr2z2A9HyPDBsx8eMnRTWKWnl4ztYzXX69bpBJYibUmcFe10RcZNHnPGyz5UKWlJEbH6O5/0',0,0,0,0,'肖志斌',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2499,'','','0',0,0,1473232498,0,0,'','','',0,'weixin','oyP7DwM29zE6vVteHlj1i7qjDhRs','0','http://wx.qlogo.cn/mmopen/3ydx8qAabL4JRgAp5blkfSORWoAkoQTAJJ6s9IqjicA7aiaf1jBQgUlvOvPYSNWAMNNa2adWqsddHLRAQbIXDN3Bib9Gypb30H6/0',0,0,0,0,'David_ssc',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2500,'','','0',0,0,1473236492,0,0,'','','',0,'weixin','oyP7DwLZ6wj4eD3tyyvm3aoQhdgQ','0','http://wx.qlogo.cn/mmopen/ajNVdqHZLLCNqs6siby7EY1UY7OL7CQprVkM5pFyeBuYg3luRlvyVSPo9yb3HrksfFdeBQc9fUhqxic5OQ2kNdLA/0',0,0,0,0,'JHC',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2501,'','','0',0,0,1473236647,0,0,'','','',0,'weixin','oyP7DwLA_tgReV-E_w7s1vo4Bdak','0','http://wx.qlogo.cn/mmopen/3ydx8qAabL5jwv9jzV3dECXW8gYMs54DMKxjO8C0NSvb8Via5YqegBDJBJdVqdce8bSLh84IaFXZ67qtVmVx1mU9AvRkib4rVe/0',0,0,0,0,'叫我林山',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2502,'','','0',0,0,1473236909,0,0,'','','',0,'weixin','oyP7DwPCV3Z9AvwpfhPsmZdfks4k','0','http://wx.qlogo.cn/mmopen/ajNVdqHZLLBULQOf805sUHmcdukVSsJjw89TId9JrzS1fXZc70uBbAr7nibDVwMGeossr5UbIoA9M2vvCh0wp5Q/0',0,0,0,0,'来自地狱的勇士',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2503,'','','0',0,0,1473239300,0,0,'','','',0,'weixin','oyP7DwCwxvPAJvXgS2PnXuGFKU4Q','0','http://wx.qlogo.cn/mmopen/3ydx8qAabL5jwv9jzV3dEAmTib4DMZib7sQ9h2pSJ80Wp5ibK3DgQicavte3JhXqWGibB5xWLzSLYwG6j7fJjywVwz4keaPb8mClF/0',0,0,0,0,'哆唻咪',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2504,'','','0',0,0,1473239329,0,0,'','','',0,'weixin','oyP7DwPuFHsBC3nTwLZ4J4PzoPxY','0','http://wx.qlogo.cn/mmopen/3ydx8qAabL5tDQw57uAQTpicP1VXibReAmTRbJG5gF2EmKBibJvPrHlXgKUtURpeTKo7TUgicONzglXt8HqZRDjX7wuQlJszw8Wz/0',0,0,0,0,'夏至未至',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2505,'','','0',0,0,1473239506,0,0,'','','',0,'weixin','oyP7DwOKRMFZ86LmF6Tfz5GEBt9Y','0','http://wx.qlogo.cn/mmopen/25Z0shpDkP30Oz0VMes9iayQpdFvMS4Rra6icIDol8yJyAI5DiaOEe7fjuIuslb7b6GK6cMjRFQ7sEibcBAjAB3HXotzURfqVJiah/0',0,0,0,0,'A#  言•者 ¹²³ 〰',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2506,'','','0',0,0,1473239546,0,0,'','','',0,'qq','B78557EE910CF56122E938414457D579','0','0',0,0,0,0,'QQ用户',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2507,'','','0',0,0,1473239827,0,0,'','','',0,'weixin','oyP7DwNXk3bv2VhY-xqo8m5ENjsY','0','http://wx.qlogo.cn/mmopen/25Z0shpDkP30Oz0VMes9iaibLbssBVkFJwaIOjsuNAicCXJLRwX086O2oCKnVm0KYNZDnt1VqeSw5dIcnr8ADfZgFCdEAbdsxVC/0',0,0,0,0,'A  +  V龚',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2508,'','','0',0,0,1473241051,0,0,'','','',0,'weixin','oyP7DwB7z8kg0G6JEht6hrtvHjg4','0','http://wx.qlogo.cn/mmopen/PiajxSqBRaEI3hjB76DFplI2UAX0OJ1IiaibxkUm0ERibAUgMONwKWkKicRc3RdyqibanwEH3Cnw1wpudDwa7yHyJp8g/0',0,0,0,0,'Temp',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2509,'','','0',0,0,1473242079,0,0,'','','',0,'weixin','oyP7DwMJW_idDWrWMAwfHv4CP_q8','0','http://wx.qlogo.cn/mmopen/FrdAUicrPIibfdhbPQwmTImASj1HvLfOLSW0mlw2RmSt5ybYPmsQSh4ZMu5I4ib90aqDticAspjc1wY5XxjDo3EQgkmkciaK62vO7/0',0,0,0,0,'',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2510,'','','0',0,0,1473242443,0,0,'','','',0,'weixin','oyP7DwDJTomxOGwEFVWXPkB0wXUU','0','http://wx.qlogo.cn/mmopen/Q3auHgzwzM4w1kCvsF481t3aZKudIw5ic0xZ7O3SkF9DC8FXDScA12pkDxJKj0SPkx2sgZx23e33o8hgxdRH8zDvVvSfOpToYqYnvnHmUhx4/0',0,0,0,0,'诺诺',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2511,'','','0',0,0,1473243050,0,0,'','','',0,'weixin','oyP7DwIwmUsQkv6kltGH97_nxU2k','0','http://wx.qlogo.cn/mmopen/3ydx8qAabL4uYoCYE5dQgicetHH8nLt1ltNC6EXLSf7gb3fSKflrG5PLCcZDruicYOqncZsb3kd7vPgeR7pqqiaFA/0',0,0,0,0,'小巫师',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2512,'','','0',0,0,1473243635,0,0,'','','',0,'weixin','oyP7DwOJZIYDAFkvGuyUicDlauzM','0','http://wx.qlogo.cn/mmopen/Q8uXlhcy3p09e9nl5xN90MHQhThXqfhOPzaDfu8G7KS0aBO6tg8icLGKicYRORJk72icTtuVOPe6NT5C6tgjXhiaRGqiaNebKicycp/0',0,0,0,0,'张惜兮',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2513,'','','0',0,0,1473243766,0,0,'','','',0,'weixin','oyP7DwEth1tanLDpslNX4BIt5sI4','0','http://wx.qlogo.cn/mmopen/Q3auHgzwzM4mEquav8RmeP0pt1ke6BoSaSdyKVyIpTbm8GP80m05NfFArLvXAHTfwrrCPjFLshxiaLJdE1c7rsg/0',0,0,0,0,'哲哲',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2514,'','','0',0,0,1473244558,0,0,'','','',0,'weixin','oyP7DwHVctuF6XGZpnBA9alBM0is','0','http://wx.qlogo.cn/mmopen/Q3auHgzwzM43PoopDw9WXicv2yhT8t1AoZTLhM8v53Q1nbmYmukxjDvJ2GP2vqdZfFBlic0j5ziaWLK1275wu2HdA/0',0,0,0,0,'Toby',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2515,'','','0',0,0,1473248373,0,0,'','','',0,'weixin','oyP7DwFdv6Ewm0m3yrLRiEix4nSY','0','http://wx.qlogo.cn/mmopen/ajNVdqHZLLDNfnOdibnQvfC9uqEqDy8W3npsiaRsMM8vRasyRWGbY8OORZnFHWiapXlLclTbaEqVRibKEDydOemIb0z6ic8Ew0JlMKteTw9l2tH4/0',0,0,0,0,'PAGE Life',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2516,'','','0',0,0,1473249693,0,0,'','','',0,'weixin','oyP7DwDM40sdfLP002_ttWdpRi70','0','http://wx.qlogo.cn/mmopen/3ydx8qAabL5jwv9jzV3dECiaicnv66NtXACSLm1qFEvdEFWXicHQxZOBwKFxiaDK1MAzIDyribNuztm4wjRwtDiagLG4Y7WDl4jfWC/0',0,0,0,0,'beborn',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2517,'','','0',0,0,1473253532,0,0,'','','',0,'weixin','oyP7DwLPFtuKss3Ajgycbie07chs','0','http://wx.qlogo.cn/mmopen/Q3auHgzwzM6pwTZtay1k4ckIibgcTaHLJwA2qc7eqibic8JJ1Z1MC8S9yoliciclbAXpPCSuMVRJ1J0JibdLKE1zQJlg/0',0,0,0,0,'喵帕斯',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2518,'','','0',0,0,1473254974,0,0,'','','',0,'weixin','oyP7DwKPLa8R2d0CrD3ESxTCf1qk','0','http://wx.qlogo.cn/mmopen/FrdAUicrPIibdtgJM1pbD1eIiaHfgiaMp3IqF6diaFQnbIJyeicrgzcVx3jSb1RcAXXrXxjGFKJtY4bumGyN89fK5CcEicxzoeXDChD/0',0,0,0,0,'▇▇▇▇▇刮开有奖',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2519,'','','0',0,0,1473257378,0,0,'','','',0,'weixin','oyP7DwAiwJQhlijoeLHem3M_aZTo','0','http://wx.qlogo.cn/mmopen/25Z0shpDkP2icdkfLQ0H2HTNfgVxp74VRv7VfvpeSDylLicgpyKTF9iaiahcicambzHQpxH7FEjJEDHUF44rHnXnJvg/0',0,0,0,0,'优配菜888',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2520,'','','0',0,0,1473258970,0,0,'','','',0,'weixin','oyP7DwMjHrnLat9XJ3wQeiqrVyxE','0','http://wx.qlogo.cn/mmopen/3ydx8qAabL5jwv9jzV3dEDavibkhUbLzLORjlH7RicR17rRtcx59yFs0ECdkSxjF0znwicI6GtvE4nMTHOQsW4GrFFicUOibnfTBO/0',0,0,0,0,'_Change',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2521,'','','0',0,0,1473261975,0,0,'','','',0,'weixin','oyP7DwIhikGlZcjrBWPeFm2DjEAY','0','http://wx.qlogo.cn/mmopen/3ydx8qAabL5jwv9jzV3dELCpdjlnsZ4yibLC6FEmKVYQenoub2oTTOb5hicwQ9hRLFOJASPMM9IvlDRibZUY3lsveNVI0osZq6s/0',0,0,0,0,'信仰',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2522,'','','0',0,0,1473268303,0,0,'','','',0,'weixin','oyP7DwD_M02eqFicgo509jqNhndk','0','http://wx.qlogo.cn/mmopen/3ydx8qAabL5jwv9jzV3dEOXxxjQYbNfPdicGOmNVMAx4cOI5sHJH57uTMibhN61GialWiaNt2KK4DBAYVBwKBtMxtibiaUgg6CLVth/0',0,0,0,0,'Hhj',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2523,'','','0',0,0,1473277846,0,0,'','','',0,'weixin','oyP7DwOIqpTuAU1wILnwx6zMJino','0','http://wx.qlogo.cn/mmopen/25Z0shpDkP30Oz0VMes9ia1ShCFbMHxSgT7HPoYYJ9Bu3Cd4rRbFLGhP9osW48dLQF1MUFnAgibTwKM9A8HVF65Afibzkgvib4Fd/0',0,0,0,0,'承一',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2524,'','','0',0,0,1473295082,0,0,'','','',0,'weixin','oyP7DwDMUcJLmyLrr8IACswLRLe0','0','http://wx.qlogo.cn/mmopen/FrdAUicrPIibeYomv8uj8bibNc2D7qgJfh3rD753IFBiczfyS95QhTCibOFV9aaguzPmgic1WojGuv1nvyWqXbEVvPPQ/0',0,0,0,0,'下一秒べ变坏',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2525,'','','0',0,0,1473295304,0,0,'','','',0,'weixin','oyP7DwBFitqUu2a6rr7Mb7QQTlbc','0','http://wx.qlogo.cn/mmopen/3ydx8qAabL5jwv9jzV3dEFZkmrxLtNpbWZpnMesnnOuLuBdpF3LhpQO6JAcLxiaibQIx4fN30owVqyfLE9CNibt8e3Eulk9LTI0/0',0,0,0,0,'梦在迪拜',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2526,'','','0',0,0,1473297519,0,0,'','','',0,'weixin','oyP7DwByU_MpCpKccVqMMHQwRcBA','0','http://wx.qlogo.cn/mmopen/Q8uXlhcy3p09e9nl5xN90OiaCTCUqia0cyBUhQIPCs5QhXC4SSxuFsexR27ThoQNc5icic1ZiahoJo1wzKGaqr9cA6GIRLs9TW7Q8/0',0,0,0,0,'安安',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2527,'','','0',0,0,1473297563,0,0,'','','',0,'weixin','oyP7DwD62boGCLWVv1ziqkvxupgE','0','http://wx.qlogo.cn/mmopen/Q8uXlhcy3p3ty0a0Iz3U0cxfhVhIyL8pf4XG7XlgicnuFtl5pA0b2vupEdwroDF1PzDfEiackAfzYV0CKMic1htUgmxC5iaKJEzV/0',0,0,0,0,'范才林-互联',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2528,'','','0',0,0,1473297614,0,0,'','','',0,'weixin','oyP7DwKfhogLpjqnbhCzEHNjquiY','0','http://wx.qlogo.cn/mmopen/PiajxSqBRaEKibMFa0q2UEDKbwCicXUDia5vfDYnQBxhDibjyuqDicu4QlEAeicKX3RxxbUkLnRJQCBhNGWc3VdmMEZPw/0',0,0,0,0,'北吉星网络',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2529,'','','0',0,0,1473298963,0,0,'','','',0,'weixin','oyP7DwDjMS28mmJ3tZUaEGwRBAlU','0','http://wx.qlogo.cn/mmopen/ajNVdqHZLLDRGzFD1mMJUQRBAd16x9X8N3JvQIrv2yRMeicVIrquN5lLnNfeciaiaEA8yGiabQJgeNOe5mxlRjKzIA/0',0,0,0,0,'姚金星',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2530,'','','0',0,0,1473299781,0,0,'','','',0,'weixin','oyP7DwA9yi6PqKk9Peoxk5-6TXq4','0','http://wx.qlogo.cn/mmopen/PiajxSqBRaEKxBZwROHicQV73mYk2CfJ3CdMDjUNFCmWWAIkiaHIeBJ4dKBo055d9ibT5icxkuFdW4f1e9iae7URveKQ/0',0,0,0,0,'沙拉哥',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2531,'','','0',0,0,1473301546,0,0,'','','',0,'weixin','oyP7DwC3Y8jdbR7FG9j3AB6MD_mo','0','http://wx.qlogo.cn/mmopen/WpRX2NRt6oarfiambFwvkN29XVbWhUEwl9YjCnGuBLL6iaMEHyo8Z9eDiaFEUqiahXBFYia6atw90ibCrRq1q340blic5xLlJ5hjZgL/0',0,0,0,0,'阿阳哥',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2532,'','','0',0,0,1473303021,0,0,'','','',0,'weixin','oyP7DwCb43hap-Wquw0fV580Xr9M','0','http://wx.qlogo.cn/mmopen/ajNVdqHZLLBibpuib3O0vRHaHZvPIP6cic9ibWcjSutSYzDB0jaGXcsDREydrKm5wib2QMLYlaejOuN0ico0PfdfbibuQ/0',0,0,0,0,'WangJIa',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2533,'','','0',0,0,1473303052,0,0,'','','',0,'weixin','oyP7DwNhsNF0MH5cQGMI2e35BFJo','0','http://wx.qlogo.cn/mmopen/FrdAUicrPIibdtgJM1pbD1eMlOKXRKicGF9LGeiaHe3wuz8Cbu2tZJqFRR1QBxuoWpjZN6NMyb0T9eoXAVp3JR2E7OWXsWwlx3ZU/0',0,0,0,0,'来，打死我吧',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2534,'','','0',0,0,1473303965,0,0,'','','',0,'weixin','oyP7DwL-OushYBCDeexzL1vg27ms','0','http://wx.qlogo.cn/mmopen/25Z0shpDkP2TQDic4Z3bZUh9FSvc1QiaRlEWicjDewgGtS41WbbRSxUJ3RibUWicKvciag7WSEt5gmNticIlricXUgOrjw/0',0,0,0,0,'AbcKevin',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2535,'','','0',0,0,1473305375,0,0,'','','',0,'weixin','oyP7DwOgsSvDxEQsrUX3CQGM3uOg','0','http://wx.qlogo.cn/mmopen/25Z0shpDkP30Oz0VMes9iaibnKUuKNRfcwqJzTxPcO39dd6wqia7t9Hy7EDZZQHx1Yqe420cibpbJ0EDOXKZNAEWQhc1NJz4xYVl/0',0,0,0,0,'mwenhua',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2536,'','','0',0,0,1473305690,0,0,'','','',0,'weixin','oyP7DwNmJPRMWxkWbn1iiuvxJIsk','0','http://wx.qlogo.cn/mmopen/FrdAUicrPIibdKZIzzO43nY1uF3o1iaDaNk2icuwyh6hD9LZT4wDbKbFZI138kGmclaZGxzLiaptm7hBauBP0En9Kicg/0',0,0,0,0,'祢个怂样子',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2537,'','','0',0,0,1473305859,0,0,'','','',0,'weixin','oyP7DwE0zAV3djpBJ-rWj_ZEUQqU','0','http://wx.qlogo.cn/mmopen/FrdAUicrPIibdRdZbn4OIatu8ic910qYVyf7oWqtFrFsiazliaeq9ibyYr8doibp1oOLsJy1IJln8uyhcuSRKwRSmwMDQ/0',0,0,0,0,'〆乂、尊 ♡上',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2538,'','','0',0,0,1473306504,0,0,'','','',0,'weixin','oyP7DwNPzzhZtQw4pl3b-tIRkkPE','0','http://wx.qlogo.cn/mmopen/FrdAUicrPIibeD2efaCxq3icfLjWSrR6YiaKKgLiafneuw30uh8lGJYtmSaxAR6O1Yiayod8V6w927rH7wKDniby9T3ww/0',0,0,0,0,'风继续吹',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2539,'','','0',0,0,1473306596,0,0,'','','',0,'weixin','oyP7DwH0xTN77PEX8T-TKTbMqqb4','0','http://wx.qlogo.cn/mmopen/Q8uXlhcy3p3jrYpXQDtX9IeQiaE5X0r7Tl5EhHibLic97jep979tEt4O856IwqY1h3gw5RBPq7GkRFP38toTfdhqlnsHZvR7K6y/0',0,0,0,0,'Jigsaw',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2540,'','','0',0,0,1473306872,0,0,'','','',0,'weixin','oyP7DwJu-62hASvMo-JMwq0bsB3Y','0','http://wx.qlogo.cn/mmopen/Q8uXlhcy3p2xObVia7eKSbe8dZWR5WLDKBnrQBDdBzuPrlyl3dcsLztd5WKFwl1EKGYwmd5Yia3icRTyQHZJeWqWEe94B7Q0Stk/0',0,0,0,0,'乐乐呵呵',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2541,'','','0',0,0,1473307716,0,0,'','','',0,'weixin','oyP7DwIsimu38W5bSS0EwaI3TVFs','0','http://wx.qlogo.cn/mmopen/3ydx8qAabL5jwv9jzV3dEPwPW7sicoAINSE4JSFzz728q79kzzVGKntuJYsBiah9NEQLgjkbEAJSt24xM5O1BicAeKu6XwOpfaZ/0',0,0,0,0,'李本伟',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2542,'','','0',0,0,1473312195,0,0,'','','',0,'weixin','oyP7DwPnG8QSNOf3XD8Wda4mrXOI','0','http://wx.qlogo.cn/mmopen/FrdAUicrPIibfkX1EqDick8oKUVrBHbGjiaXicHMJQpniarHWDcqPJACrwVUo1TBWib4H3kEq98NqHsuMzQf5XxU34Msg/0',0,0,0,0,'。。。123',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2543,'','','0',0,0,1473312532,0,0,'','','',0,'weixin','oyP7DwBfTiu0-e_pEWpXKoiehLKI','0','http://wx.qlogo.cn/mmopen/3ydx8qAabL5jwv9jzV3dEOtQzBfpPX3eNQDkUx4LhRFxc4b6uvQ9zycSYyEaXf0icjvRibGjPbIWlqG52iaMNZECm0NoHm9zMYr/0',0,0,0,0,'自由',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2544,'','','0',0,0,1473312660,0,0,'','','',0,'weixin','oyP7DwBZpftEkRR8-yYjM7Z702xk','0','http://wx.qlogo.cn/mmopen/25Z0shpDkP30Oz0VMes9ia4LmkIFibfS6fMrtavTOXNGn4HaGlxv8r127MPBHhLKLrINqGGxOSkChviaLS27JrcXxe10zuqicvPQ/0',0,0,0,0,'A道哥',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2545,'','','0',0,0,1473313466,0,0,'','','',0,'qq','A8E61C688F0D7AC73B563AE37474661B','0','0',0,0,0,0,'QQ用户',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2546,'','','0',0,0,1473314103,0,0,'','','',0,'weixin','oyP7DwLBa991tKw3zgNS3Ccfjfdg','0','http://wx.qlogo.cn/mmopen/Q3auHgzwzM4IGUWpIAUlDkrA8mrK5qraN2gU7oQEKCvzduNjKWXqybgwQcb6JZpp5nlFymB24nsm3sSmQngbiaic24L1KicpFw9IEZ7Wc7KMKk/0',0,0,0,0,'安强',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2547,'','','0',0,0,1473314575,0,0,'','','',0,'weixin','oyP7DwAgKgcuSib89QYPG6wiBs_w','0','http://wx.qlogo.cn/mmopen/vzdiaa5rSAQ5z2VfdYML8UBdkOgecLjMDyoiarnjr4eRpN4Hg74IVdTiazEDmQId3noMkMLxPdOfTTMyl8ef9ExVn8iccldQVl8X/0',0,0,0,0,'半条毛毛虫',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2548,'','','0',0,0,1473315141,0,0,'','','',0,'weixin','oyP7DwH4nvfv0CMGEjTbYzOQm8Kk','0','http://wx.qlogo.cn/mmopen/3ydx8qAabL5U2a3syJha8yNqo8HQL6c5YVCCXNCqxHPMSQiafiaEZhjsb7fiacojckvLuaHRr3OslyNSkY2we6R1tGGroq6OobJ/0',0,0,0,0,'A消臭除醛',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2549,'','','0',0,0,1473315665,0,0,'','','',0,'weixin','oyP7DwDDwfhWxBdxTylL1bOVEIsI','0','http://wx.qlogo.cn/mmopen/3ydx8qAabL5FibLNtP3vw4sS8NWwUccBx2y7X0KV2QQdhUtCKwS8jy6EsWKrJAgws53IfYHWslrcP370jwEiaAiaCHZoYBz6CoC/0',0,0,0,0,'A远方的朋友',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2550,'','','0',0,0,1473317413,0,0,'','','',0,'weixin','oyP7DwGiabwNojMbz-idayajMZ4o','0','http://wx.qlogo.cn/mmopen/25Z0shpDkP1bopXxUwWSgE8tBucyXaaRyXo2N7lbTF3wC3ghSIhLqoaIdJX3hPseYG9rIUhzHARPo5MY38licWw/0',0,0,0,0,'clement',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2551,'','','0',0,0,1473317556,0,0,'','','',0,'weixin','oyP7DwKMLmK4PfABdpc569tqtVAk','0','http://wx.qlogo.cn/mmopen/PiajxSqBRaELoj7XCfHfKMXgSUHRSTiby5qeyMnvWTd3aqITajWibCPzHpMxK8j6bdKqibZ2G46Q3sgL5x4pWGVCtw/0',0,0,0,0,'zoyzo',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2552,'','','0',0,0,1473317648,0,0,'','','',0,'weixin','oyP7DwBF8-txxdheBFpNsk2-dlpk','0','http://wx.qlogo.cn/mmopen/25Z0shpDkP30Oz0VMes9ia4AicHNQhqapVK4LYrscYqQ26UibTw8wH9rLjDccfAibfP4vMHDEUu0MibFUT5oxEYAEIwq0FADow5xX/0',0,0,0,0,'Kevin',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2553,'','','0',0,0,1473319262,0,0,'','','',0,'weixin','oyP7DwAidiGwSPXfLv2aB3PvWQ5c','0','http://wx.qlogo.cn/mmopen/vzdiaa5rSAQ5z2VfdYML8UHDwIt6v1G0UDdZNmkAp45ZLU5bd3P8hDe4Z1uOuY9icHZQE8mk33ajCHxqRt7q6ju7T3yFWKgkDQ/0',0,0,0,0,'郭宝平',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2554,'','','0',0,0,1473319279,0,0,'','','',0,'weixin','oyP7DwM7n393ec2071b4mvOmzWvI','0','http://wx.qlogo.cn/mmopen/PiajxSqBRaEKhJ7RBQgWUVJjosZyWYcBDe6GIANlvgy7gLkV5PZyvztruibREkUFMpia4ol8DWD1icvqibWmUe9yuow/0',0,0,0,0,'A ',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2555,'','','0',0,0,1473319547,0,0,'','','',0,'weixin','oyP7DwEgkJacg1rLqvI5l9skH_1E','0','http://wx.qlogo.cn/mmopen/Q8uXlhcy3p0ONZ5DHJoT6vPmkxpDsJa5PaZjNus28yG6UMghZl0VOia7Eo7p7HR3ia65YA1dsI9zKBA7nicMfQiauKjgX8ObeoMv/0',0,0,0,0,'木Duang-',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2556,'','','0',0,0,1473319948,0,0,'','','',0,'weixin','oyP7DwPLGxCGi1vXAXQ9zhvqQeTg','0','http://wx.qlogo.cn/mmopen/25Z0shpDkP30Oz0VMes9ia1BbHdNpOzEq1CEd7ABg0eliatR8WyRPfhxFnAvFX0baYBRCueTGS1M6EznUyKM8DL74cDiahhEuMf/0',0,0,0,0,'阿斌',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2557,'','','0',0,0,1473320597,0,0,'','','',0,'weixin','oyP7DwDxeke9Scd9bzEsVVcHhP04','0','http://wx.qlogo.cn/mmopen/Q8uXlhcy3p3UQQCibibIY2keY2F2EqkpKkT4o3iaZBicFQvAicicWbw8icDR8empaGbFj1KC3o6MOlowKhCwib91yzibc6ML03jhWPIrO/0',0,0,0,0,'x_wchong',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2558,'','','0',0,0,1473321710,0,0,'','','',0,'weixin','oyP7DwMcDK9kt4Q68sXmuHU7j-mU','0','http://wx.qlogo.cn/mmopen/PiajxSqBRaEItWpoVYAiaZADdia6icNTdG6J6ARd52Vy2jWlpoXjaiaicggFuL1AhQUQb6mSFv6dQKuMNG5HeiaY6cp5Q/0',0,0,0,0,'大A',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2559,'','','0',0,0,1473324033,0,0,'','','',0,'weixin','oyP7DwJFGW3zk4pdlAwbhAqu_TMg','0','http://wx.qlogo.cn/mmopen/3ydx8qAabL5d9T65ZIxQfRLsxRLAWMHwHuNqB8wVeTXyfSO78MIoVMb2JPLA77Dtpd7VD9icZ6WnST8gL0cr4puibIRt2NibINe/0',0,0,0,0,'彭伍阳',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2560,'','','0',0,0,1473324261,0,0,'','','',0,'weixin','oyP7DwMP7gmHEKMQFvDsz8ct9KIQ','0','http://wx.qlogo.cn/mmopen/25Z0shpDkP30Oz0VMes9iaicpSiaSiaA6CF11ibjL0BaFU4n9c99S2h8ibAqicFjL0gbUHp19ga3JqOmsWpQo8IuUzXSy8OxR6aYfRd/0',0,0,0,0,'ekinger',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2561,'','','0',0,0,1473325462,0,0,'','','',0,'weixin','oyP7DwNcHmyPJrbQ7WmW5Itxx94Y','0','http://wx.qlogo.cn/mmopen/FrdAUicrPIibcCap4KxQDSCf82RGHwtyOODznLclCfibOicvnaw7UeQqsdo5WX99ockc3Y4nGho3NqSiaoSwW25Gwrw/0',0,0,0,0,'翔',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2572,'','','0',0,0,1473345922,0,0,'','','',0,'weixin','oyP7DwG7c4aY4gEcj_eCoY3Jyl6c','0','http://wx.qlogo.cn/mmopen/25Z0shpDkP30Oz0VMes9iaickfvQTvBz5TmxSztawewTCXWlJQOibfGGUD2sQThcW9yvhUVZplicKsAguBzuyrZLPpBBzUpgP3vB/0',0,0,0,0,'皈依三宝',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2573,'','','0',0,0,1473348658,0,0,'','','',0,'weixin','oyP7DwIuIbGlBY31Reswekj3cIiM','0','http://wx.qlogo.cn/mmopen/Q3auHgzwzM6eWHev6FswtYrU5ic4Srd60Jy9FvQwEx9wLXibAkO9WzFKV2t6eIylaln09DpOnBk4mCC90K4seQVcq6nfhbKjht7oQe3euVWeU/0',0,0,0,0,'地瓜叶',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2574,'','','0',0,0,1473350807,0,0,'','','',0,'weixin','oyP7DwDf4pv5ZwlS_0ALambS4pFs','0','http://wx.qlogo.cn/mmopen/PiajxSqBRaEKtRMicnIyenXNa79yZricKlmQpE02paDZpE3iclG9BFJJRsXW6iaiaCm6IViaRlJ9B6UjPtsOtS9qIUmfQ/0',0,0,0,0,'吴世威',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2575,'','','0',0,0,1473365960,0,0,'','','',0,'weixin','oyP7DwFS3P8yItGkbL1rT08d3MnA','0','http://wx.qlogo.cn/mmopen/Q8uXlhcy3p00Uxzdrib0snx4JWxowJib1ff3RyZGtdS5MWkLUxiaTM9xUeRx8jCicc4Vh972VlLfcicwhGrJbSbTGG0Zgg3gmpLen/0',0,0,0,0,'A粤（鸿粤网络，新丰同城）',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2577,'','','0',0,0,1473382925,0,0,'','','',0,'weixin','oyP7DwJp2I6Z10mT-les7FV1zR20','0','http://wx.qlogo.cn/mmopen/3ydx8qAabL53jKAK14HxVXbuOCnzCQt0j0tiaxgASjQQX5pm8bywpBCuR2wUD5JXJN5eDIjiabZom0nRUpjiboXX8Y01btuHVOC/0',0,0,0,0,'袁学飞',1,0,'','','hide',0);
INSERT INTO `clt_users` VALUES (2583,'123@qq.com','e10adc3949ba59abbe56e057f20f883e','0',0,0,1473390291,0,0,'','','',0,'weixin','oyP7DwGkhVvAHOR7niEOOG1bDkrI','0','http://wx.qlogo.cn/mmopen/FrdAUicrPIibelAltw240OgZiankOhlKSx7YxHCJbS6FkOwqT7FLC2CWicw6nMfj6kicFzq69vxRubIl1Nvrg54N6LQ/0',0,0,0,0,'施好好',1,0,'','没有谁能理解我的天赋','hide',0);
INSERT INTO `clt_users` VALUES (2595,'1109305987@qq.com','e10adc3949ba59abbe56e057f20f883e','0',1,0,1504510472,0,0,'','','18792402229',0,'qq','9D94D6E2D801436FCF97C01A979BB059','0','/uploads/20170913/a384288d9d10a151fc5682068b2cc34f.jpg',3,37,410,0,'chichu',1,0,'0','不要因为走得太远，就忘了当初为什么出发。','hide',0);
INSERT INTO `clt_users` VALUES (2596,'','','0',1,0,1505263131,0,0,'','','',0,'qq','04CB1AA37323B0BEDD8600A9D3672C8D','0','0',0,0,0,0,'0',1,0,'3efd2fe06217efcfbddb3fc3eceabd80','','hide',0);
INSERT INTO `clt_users` VALUES (2597,'654222249@qq.com','7a93d4f261747ac28ccb1bbe666cacdb','0',0,0,1505265852,0,0,'','','',0,'','0','0','/uploads/20170913/504607a749e40709e884c3afcbf2b87a.png',0,0,0,1,'tynetm',1,0,'5cdcb47d9d0883826d1806563968bc29','','hide',0);
INSERT INTO `clt_users` VALUES (2598,'1090964176@qq.com','e10adc3949ba59abbe56e057f20f883e','0',0,0,1505289591,0,0,'','','',0,'','0','0','0',0,0,0,1,'sgml',1,0,'7ab068241fc74337ad536a8546bafcb8','','hide',0);
INSERT INTO `clt_users` VALUES (2599,'','','0',1,0,1505296130,0,0,'','','',0,'qq','2422B9B86EF1CAFA51D5255F455BDC23','0','http://qzapp.qlogo.cn/qzapp/101386319/2422B9B86EF1CAFA51D5255F455BDC23/100',0,0,0,0,'0',1,0,'226cbb140377ffa5a54a5dfc5d27be9a','','hide',0);
INSERT INTO `clt_users` VALUES (2600,'1060494425@qq.com','25d55ad283aa400af464c76d713c07ad','0',0,0,1512540142,0,0,'','','',0,'','0','0','0',7,101,903,1,'ziyou',1,0,'584e370195aaeaa701fb4708bed2e28c','','hide',0);
--
-- 表的结构 `clt_wx_auth`
-- 
DROP TABLE IF EXISTS `clt_wx_auth`;
CREATE TABLE `clt_wx_auth` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `authorizer_appid` varchar(255) NOT NULL DEFAULT '' COMMENT '店铺的appid  授权之后不用刷新',
  `authorizer_refresh_token` varchar(255) NOT NULL DEFAULT '' COMMENT '店铺授权之后的刷新token，每月刷新',
  `authorizer_access_token` varchar(255) NOT NULL DEFAULT '' COMMENT '店铺的公众号token，只有2小时',
  `func_info` varchar(1000) NOT NULL DEFAULT '' COMMENT '授权项目',
  `nick_name` varchar(50) NOT NULL DEFAULT '' COMMENT '公众号昵称',
  `head_img` varchar(255) NOT NULL DEFAULT '' COMMENT '公众号头像url',
  `user_name` varchar(50) NOT NULL DEFAULT '' COMMENT '公众号原始账号',
  `alias` varchar(255) NOT NULL DEFAULT '' COMMENT '公众号原始名称',
  `qrcode_url` varchar(255) NOT NULL DEFAULT '' COMMENT '公众号二维码url',
  `auth_time` int(11) DEFAULT '0' COMMENT '授权时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=8192 COMMENT='店铺(实例)微信公众账号授权';
--
-- 表的结构 `clt_wx_config`
-- 
DROP TABLE IF EXISTS `clt_wx_config`;
CREATE TABLE `clt_wx_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `instance_id` int(11) NOT NULL DEFAULT '1' COMMENT '实例ID',
  `key` varchar(255) NOT NULL DEFAULT '' COMMENT '配置项WCHAT,QQ,WPAY,ALIPAY...',
  `value` varchar(1000) NOT NULL DEFAULT '' COMMENT '配置值json',
  `desc` varchar(1000) NOT NULL DEFAULT '' COMMENT '描述',
  `is_use` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否启用 1启用 0不启用',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  `modify_time` int(11) DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=963 COMMENT='第三方配置表';

-- 
-- 导出`clt_wx_config`表中的数据 `clt_wx_config`
--
INSERT INTO `clt_wx_config` VALUES (1,0,'WCHAT','{\"APP_KEY\":\"\",\"APP_SECRET\":\"\",\"AUTHORIZE\":\"http:\\/\\/b2c1.01.niushop.com.cn\",\"CALLBACK\":\"http:\\/\\/b2c1.01.niushop.com.cn\\/wap\\/Login\\/callback\"}','微信',0,1488350947,1497105440);
INSERT INTO `clt_wx_config` VALUES (2,0,'SHOPWCHAT','{\"appid\":\"wxc58ae610dbd69843\",\"appsecret\":\"cd1f7dde98209a88cef78e4d50ebede6\",\"token\":\"xj4aovzs1qxt2uepacsgld0jgvgarvui\"}','',1,1497088090,1533624105);
--
-- 表的结构 `clt_wx_default_replay`
-- 
DROP TABLE IF EXISTS `clt_wx_default_replay`;
CREATE TABLE `clt_wx_default_replay` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` int(11) NOT NULL COMMENT '店铺id',
  `reply_media_id` int(11) NOT NULL COMMENT '回复媒体内容id',
  `sort` int(11) NOT NULL,
  `create_time` int(11) DEFAULT '0',
  `modify_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=16384 COMMENT='关注时回复';

-- 
-- 导出`clt_wx_default_replay`表中的数据 `clt_wx_default_replay`
--
INSERT INTO `clt_wx_default_replay` VALUES (2,0,3,0,1512528613,0);
--
-- 表的结构 `clt_wx_fans`
-- 
DROP TABLE IF EXISTS `clt_wx_fans`;
CREATE TABLE `clt_wx_fans` (
  `fans_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '粉丝ID',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '会员编号ID',
  `source_uid` int(11) NOT NULL DEFAULT '0' COMMENT '推广人uid',
  `instance_id` int(11) NOT NULL COMMENT '店铺ID',
  `nickname` varchar(255) NOT NULL COMMENT '昵称',
  `nickname_decode` varchar(255) DEFAULT '',
  `headimgurl` varchar(500) NOT NULL DEFAULT '' COMMENT '头像',
  `sex` smallint(6) NOT NULL DEFAULT '1' COMMENT '性别',
  `language` varchar(20) NOT NULL DEFAULT '' COMMENT '用户语言',
  `country` varchar(60) NOT NULL DEFAULT '' COMMENT '国家',
  `province` varchar(255) NOT NULL DEFAULT '' COMMENT '省',
  `city` varchar(255) NOT NULL DEFAULT '' COMMENT '城市',
  `district` varchar(255) NOT NULL DEFAULT '' COMMENT '行政区/县',
  `openid` varchar(255) NOT NULL DEFAULT '' COMMENT '用户的标识，对当前公众号唯一     用户的唯一身份ID',
  `unionid` varchar(255) NOT NULL DEFAULT '' COMMENT '粉丝unionid',
  `groupid` int(11) NOT NULL DEFAULT '0' COMMENT '粉丝所在组id',
  `is_subscribe` bigint(1) NOT NULL DEFAULT '1' COMMENT '是否订阅',
  `memo` varchar(255) NOT NULL COMMENT '备注',
  `subscribe_date` int(11) DEFAULT '0' COMMENT '订阅时间',
  `unsubscribe_date` int(11) DEFAULT '0' COMMENT '解订阅时间',
  `update_date` int(11) DEFAULT '0' COMMENT '粉丝信息最后更新时间',
  PRIMARY KEY (`fans_id`),
  KEY `IDX_sys_weixin_fans_openid` (`openid`),
  KEY `IDX_sys_weixin_fans_unionid` (`unionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1638 COMMENT='微信公众号获取粉丝列表';
--
-- 表的结构 `clt_wx_follow_replay`
-- 
DROP TABLE IF EXISTS `clt_wx_follow_replay`;
CREATE TABLE `clt_wx_follow_replay` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` int(11) NOT NULL COMMENT '店铺id',
  `reply_media_id` int(11) NOT NULL COMMENT '回复媒体内容id',
  `sort` int(11) NOT NULL,
  `create_time` int(11) DEFAULT '0',
  `modify_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=16384 COMMENT='关注时回复';

-- 
-- 导出`clt_wx_follow_replay`表中的数据 `clt_wx_follow_replay`
--
INSERT INTO `clt_wx_follow_replay` VALUES (1,0,2,0,1512445072,1534002038);
--
-- 表的结构 `clt_wx_key_replay`
-- 
DROP TABLE IF EXISTS `clt_wx_key_replay`;
CREATE TABLE `clt_wx_key_replay` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` int(11) NOT NULL COMMENT '店铺id',
  `key` varchar(255) NOT NULL COMMENT '关键词',
  `match_type` tinyint(4) NOT NULL COMMENT '匹配类型1模糊匹配2全部匹配',
  `reply_media_id` int(11) NOT NULL COMMENT '回复媒体内容id',
  `sort` int(11) NOT NULL,
  `create_time` int(11) DEFAULT '0',
  `modify_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=16384 COMMENT='关键词回复';

-- 
-- 导出`clt_wx_key_replay`表中的数据 `clt_wx_key_replay`
--
INSERT INTO `clt_wx_key_replay` VALUES (1,0,'你好',1,3,0,1537951547,0);
--
-- 表的结构 `clt_wx_media`
-- 
DROP TABLE IF EXISTS `clt_wx_media`;
CREATE TABLE `clt_wx_media` (
  `media_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '图文消息id',
  `title` varchar(100) DEFAULT NULL,
  `instance_id` int(11) NOT NULL DEFAULT '0' COMMENT '实例id店铺id',
  `type` varchar(255) NOT NULL DEFAULT '1' COMMENT '类型1文本(项表无内容) 2单图文 3多图文',
  `sort` int(11) NOT NULL DEFAULT '0',
  `create_time` int(11) DEFAULT '0' COMMENT '创建日期',
  `modify_time` int(11) DEFAULT '0' COMMENT '修改日期',
  PRIMARY KEY (`media_id`),
  UNIQUE KEY `id` (`media_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1170;

-- 
-- 导出`clt_wx_media`表中的数据 `clt_wx_media`
--
INSERT INTO `clt_wx_media` VALUES (1,'欢迎您来到CLTPHP官方公众号大世界！',0,'1',0,1512551413,0);
INSERT INTO `clt_wx_media` VALUES (2,'你好，欢迎来到沃的世界！',0,'1',0,1533624520,0);
INSERT INTO `clt_wx_media` VALUES (3,'VR vs 现实',0,'2',0,1537951502,0);
INSERT INTO `clt_wx_media` VALUES (4,'个人博客网站更新',0,'3',0,1533625235,0);
INSERT INTO `clt_wx_media` VALUES (5,'操作开发已完全',0,'2',0,1533625304,0);
INSERT INTO `clt_wx_media` VALUES (6,'不跟你玩了',0,'1',0,1534004365,0);
--
-- 表的结构 `clt_wx_media_item`
-- 
DROP TABLE IF EXISTS `clt_wx_media_item`;
CREATE TABLE `clt_wx_media_item` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `media_id` int(11) NOT NULL COMMENT '图文消息id',
  `title` varchar(100) DEFAULT NULL,
  `author` varchar(50) NOT NULL COMMENT '作者',
  `cover` varchar(200) NOT NULL COMMENT '图文消息封面',
  `show_cover_pic` tinyint(4) NOT NULL DEFAULT '1' COMMENT '封面图片显示在正文中',
  `summary` text,
  `content` text NOT NULL COMMENT '正文',
  `content_source_url` varchar(200) NOT NULL DEFAULT '' COMMENT '图文消息的原文地址，即点击“阅读原文”后的URL',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序号',
  `hits` int(11) NOT NULL DEFAULT '0' COMMENT '阅读次数',
  PRIMARY KEY (`id`),
  KEY `id` (`media_id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=712;

-- 
-- 导出`clt_wx_media_item`表中的数据 `clt_wx_media_item`
--
INSERT INTO `clt_wx_media_item` VALUES (42,1,'欢迎您来到CLTPHP官方公众号大世界！','','',0,'','','',0,0);
INSERT INTO `clt_wx_media_item` VALUES (48,2,'你好，欢迎来到沃的世界！','','',0,'','','',0,0);
INSERT INTO `clt_wx_media_item` VALUES (56,4,'个人博客网站更新','vzinger','/uploads/20171206/91febfbe3eaaa412ba6b54ca4164402d.jpg',1,'这是一篇多图文','<h4 style=\"box-sizing: border-box; border: 0px; font-variant-numeric: inherit; font-weight: normal; font-stretch: inherit; font-size: 22px; line-height: inherit; font-family: \">网站发布</h4><p style=\"box-sizing: border-box; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 14px; line-height: 24px; font-family: \"><br/></p><p style=\"box-sizing: border-box; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 14px; line-height: 24px;\"><span style=\"box-sizing: border-box; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: 24px; vertical-align: baseline; margin: 0px; padding: 0px;\">网站地址：</span><a href=\"http://www.sunshinecom.cn\" target=\"_blank\"><span style=\"box-sizing: border-box; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: 24px; vertical-align: baseline; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; margin: 0px; padding: 0px; color: rgb(0, 176, 80); outline: 0px;\"><span style=\"box-sizing: border-box; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: 24px; vertical-align: baseline; margin: 0px; padding: 0px; text-decoration-line: none;\">查看网站</span></span></span></a><br/></p>','http://www.cltphp.com/newsInfo-44-5.html',0,0);
INSERT INTO `clt_wx_media_item` VALUES (57,4,'给我们一点点时间 我们给你一个新突破','vzinger','/uploads/20171206/18fd882e982e07e7b35dac5b962ab393.jpg',0,'给我们一点点时间 我们给你一个新突破','<p><span style=\"color: rgb(102, 102, 102); font-family: \">给我一点点时间，还你一个新突破。</span></p>','http://www.cltphp.com/newsInfo-45-5.html',0,0);
INSERT INTO `clt_wx_media_item` VALUES (58,4,'ceshi','vzinger','/uploads/20171206/db19ac0c46a3ffd4ebf94028024d3036.jpg',1,'this\'s test page','<p style=\"box-sizing: border-box; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 14px; line-height: 24px; font-family: \">this&#39;s test page<a href=\"https://www.kancloud.cn/chichu/cltphp/\" target=\"_self\"></a></p><p style=\"box-sizing: border-box; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 14px; line-height: 24px; font-family: \">this&#39;s test page</p><p style=\"box-sizing: border-box; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 14px; line-height: 24px; font-family: \">this&#39;s test page</p><p style=\"box-sizing: border-box; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 14px; line-height: 24px; font-family: \">this&#39;s test page</p><p><br/></p>','http://www.sunshinecom.cn',0,0);
INSERT INTO `clt_wx_media_item` VALUES (59,5,'操作开发已完全','vzinger','/uploads/20180807/2c554c660274ec21c579063c5cb57907.png',0,'核心价值，尽在其中。','<p style=\"box-sizing: border-box; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 14px; line-height: 24px; text-indent: 2em;\">大城小事电视剧是不对的VB深V水电费很多事</p><p><br/></p>','http://www.sunshinecom.cn',0,6);
INSERT INTO `clt_wx_media_item` VALUES (60,6,'不跟你玩了','','',0,'','','',0,0);
INSERT INTO `clt_wx_media_item` VALUES (61,3,'VR vs 现实','vzinger','/uploads/20180926/40f970c0e1fc0cef8507f377359b938e.jpg',1,'微信公众平台、APP移动应用设计、HTML5网站API定制开发。大型企业网站、个人博客论坛、手机网站定制开发。更高效、更快捷的进行定制开发。','<p style=\"text-indent: 2em;\">有需求，来这里，就对了；<img src=\"http://img.baidu.com/hi/jx2/j_0014.gif\"/></p><p><br/></p>','http://www.sunshinecom.cn/time',0,6);
--
-- 表的结构 `clt_wx_menu`
-- 
DROP TABLE IF EXISTS `clt_wx_menu`;
CREATE TABLE `clt_wx_menu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `instance_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `menu_name` varchar(50) NOT NULL DEFAULT '' COMMENT '菜单名称',
  `ico` varchar(32) NOT NULL DEFAULT '' COMMENT '菜图标单',
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '父菜单',
  `menu_event_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1普通url 2 图文素材 3 功能',
  `media_id` int(11) NOT NULL DEFAULT '0' COMMENT '图文消息ID',
  `menu_event_url` varchar(255) NOT NULL DEFAULT '' COMMENT '菜单url',
  `hits` int(11) NOT NULL DEFAULT '0' COMMENT '触发数',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `create_date` int(11) DEFAULT '0' COMMENT '创建日期',
  `modify_date` int(11) DEFAULT '0' COMMENT '修改日期',
  PRIMARY KEY (`menu_id`),
  KEY `IDX_biz_shop_menu_orders` (`sort`),
  KEY `IDX_biz_shop_menu_shopId` (`instance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1638 COMMENT='微设置->微店菜单';

-- 
-- 导出`clt_wx_menu`表中的数据 `clt_wx_menu`
--
INSERT INTO `clt_wx_menu` VALUES (1,0,'官网','',0,2,3,'http://www.cltphp.com/',0,1,1512442512,0);
INSERT INTO `clt_wx_menu` VALUES (2,0,'手册','',0,2,5,'http://www.cltphp.com/',0,2,1512442543,0);
INSERT INTO `clt_wx_menu` VALUES (3,0,'动态','',0,2,0,'http://www.cltphp.com/',0,3,1512547727,0);
INSERT INTO `clt_wx_menu` VALUES (4,0,'子菜单名称','',3,1,0,'',0,1,1532914506,1533707446);
--
-- 表的结构 `clt_wx_user`
-- 
DROP TABLE IF EXISTS `clt_wx_user`;
CREATE TABLE `clt_wx_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '表id',
  `uid` int(11) NOT NULL COMMENT 'uid',
  `wxname` varchar(60) NOT NULL COMMENT '公众号名称',
  `aeskey` varchar(256) NOT NULL DEFAULT '' COMMENT 'aeskey',
  `encode` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'encode',
  `appid` varchar(50) NOT NULL DEFAULT '' COMMENT 'appid',
  `appsecret` varchar(50) NOT NULL DEFAULT '' COMMENT 'appsecret',
  `wxid` varchar(64) NOT NULL COMMENT '公众号原始ID',
  `weixin` char(64) NOT NULL COMMENT '微信号',
  `token` char(255) NOT NULL COMMENT 'token',
  `w_token` varchar(150) NOT NULL DEFAULT '' COMMENT '微信对接token',
  `create_time` int(11) NOT NULL COMMENT 'create_time',
  `updatetime` int(11) NOT NULL COMMENT 'updatetime',
  `tplcontentid` varchar(2) NOT NULL COMMENT '内容模版ID',
  `share_ticket` varchar(150) NOT NULL COMMENT '分享ticket',
  `share_dated` char(15) NOT NULL COMMENT 'share_dated',
  `authorizer_access_token` varchar(200) NOT NULL COMMENT 'authorizer_access_token',
  `authorizer_refresh_token` varchar(200) NOT NULL COMMENT 'authorizer_refresh_token',
  `authorizer_expires` char(10) NOT NULL COMMENT 'authorizer_expires',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '类型',
  `web_access_token` varchar(200) NOT NULL COMMENT '网页授权token',
  `web_refresh_token` varchar(200) NOT NULL COMMENT 'web_refresh_token',
  `web_expires` int(11) NOT NULL COMMENT '过期时间',
  `menu_config` text COMMENT '菜单',
  `wait_access` tinyint(1) DEFAULT '0' COMMENT '微信接入状态,0待接入1已接入',
  `concern` varchar(225) DEFAULT '' COMMENT '关注回复',
  `default` varchar(225) DEFAULT '' COMMENT '默认回复',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `uid_2` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='微信公共帐号';

-- 
-- 导出`clt_wx_user`表中的数据 `clt_wx_user`
--
INSERT INTO `clt_wx_user` VALUES (1,0,'CLTPHP','',0,'wx08c8be078e00b88b','2e6f2d97d60582f21111be7862d14ddc','gh_8aacbef4e497','chichu12345','sdfdsfdsfdsf','cltphp',0,0,'','','','','','',1,'eY9W4LLdISpE3UtTfuodgz1HJdBYCMbzZWkiLEhF0Nzvzv2q2DtGIV5h7CPrc0Nd4_kJgKN_FdM3kNaCxfFC1wmu6JLnNoOrmMuy3FK2AhMDLCbAGAXFW','',1504242136,'0',0,'欢迎来到CLTPHP！CLTPHP采用ThinkPHP5作为基础框架，同时采用Layui作为后台界面，使得CLTPHP适用与大型企业网站、个人博客论坛、企业网站、手机网站的定制开发。更高效、更快捷的进行定制开发一直是CLTPHP追求的价值。','亲！您可以输入关键词来获取您想要知道的内容。（例：手册）');
--
-- 表的结构 `clt_wx_user_msg`
-- 
DROP TABLE IF EXISTS `clt_wx_user_msg`;
CREATE TABLE `clt_wx_user_msg` (
  `msg_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `msg_type` varchar(255) NOT NULL,
  `content` text,
  `is_replay` int(11) NOT NULL DEFAULT '0' COMMENT '是否回复',
  `create_time` int(11) DEFAULT '0',
  PRIMARY KEY (`msg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信用户消息表';
--
-- 表的结构 `clt_wx_user_msg_replay`
-- 
DROP TABLE IF EXISTS `clt_wx_user_msg_replay`;
CREATE TABLE `clt_wx_user_msg_replay` (
  `replay_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `msg_id` int(11) NOT NULL,
  `replay_uid` int(11) NOT NULL COMMENT '当前客服uid',
  `replay_type` varchar(255) NOT NULL,
  `content` text,
  `replay_time` int(11) DEFAULT '0',
  PRIMARY KEY (`replay_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信用户消息回复表';