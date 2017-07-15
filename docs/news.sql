create database news;

drop table admin;
drop table news;
--管理员信息表
create table admin(
  aid int primary key auto_increment,  
  aname varchar(100) unique not null,  
  pwd varchar(50)     
);

insert into admin(aname,pwd) values('a','6f9b0a55df8ac28564cb9f63a10be8af6ab3f7c2');

select * from admin;

--会员信息表
create table users(
  usid int primary key auto_increment, 
  uname varchar(100) unique not null,   
  pwd varchar(50),   
  email varchar(100) unique not null,  
  status int  
);

select * from users;

--新闻类型表
create table newsType(
  tid int primary key auto_increment,  
  tname varchar(100),  
  status int  
);

--新闻内容表
--新闻编号
--新闻标题
--最后修改日期
--新闻内容  <img src="">
 --作者
 --图片地址
 --   tid 新闻类型 外键
 --浏览次数
 --权重
create table news(
  nid int primary key auto_increment,  
  title varchar(400) not null, 
  ndate date,  
  content varchar(4000),  
  auth varchar(100),
  pic varchar(4000), 
  tid int,
  views int,  
  weight int  
);

update newstype set status=0  where tname='其他'

insert into newstype(tname,status) values('国内',1);
insert into newstype(tname,status) values('国际',1);
insert into newstype(tname,status) values('军事',1);
insert into newstype(tname,status) values('体育',1);
insert into newstype(tname,status) values('娱乐',1);
insert into newstype(tname,status) values('社会',1);
insert into newstype(tname,status) values('财经',1);
insert into newstype(tname,status) values('科技',1);
insert into newstype(tname,status) values('健康',1);
insert into newstype(tname,status) values('汽车',1);
insert into newstype(tname,status) values('教育',1);
insert into newstype(tname,status) values('房产',1);
insert into newstype(tname,status) values('家居',1);
insert into newstype(tname,status) values('旅游',1);
insert into newstype(tname,status) values('文化',1);
insert into newstype(tname,status) values('其他',1);


insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '重庆沙黑富豪李强夫妇庭审',sysdate(),'good','smith','',1,0,1);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '答辩言辞相互矛盾',sysdate(),'','','',1,10,1);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '发改案：4万亿投资计划',sysdate(),'','','',1,10,1);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '会挤占民间投资空间',sysdate(),'','','',1,10,1);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '河南两个乡镇真伪报告内容',sysdate(),'','','',1,10,1);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '完全一致引关注',sysdate(),'','','',1,10,1);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '答辩言辞相互矛盾',sysdate(),'','','',1,10,1);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '发改案：4万亿投资计划',sysdate(),'','','',1,10,1);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '会挤占民间投资空间',sysdate(),'','','',1,10,1);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '河南两个乡镇真伪报告内容',sysdate(),'','','',1,10,1);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '完全一致引关注',sysdate(),'','','',1,10,1);

insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '重庆沙黑富豪李强夫妇庭审',sysdate(),'','','',2,10,1);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '答辩言辞相互矛盾',sysdate(),'','','',2,10,1);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '发改案：4万亿投资计划',sysdate(),'','','',2,10,1);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '会挤占民间投资空间',sysdate(),'','','',2,10,1);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '河南两个乡镇真伪报告内容',sysdate(),'','','',2,10,1);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '完全一致引关注',sysdate(),'','','',2,10,1);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '答辩言辞相互矛盾',sysdate(),'','','',2,10,1);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '发改案：4万亿投资计划',sysdate(),'','','',2,10,1);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '会挤占民间投资空间',sysdate(),'','','',2,10,1);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '河南两个乡镇真伪报告内容',sysdate(),'','','',2,10,1);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '完全一致引关注',sysdate(),'','','',2,10,1);

insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '重庆沙黑富豪李强夫妇庭审',sysdate(),'','','',5,10,1);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '答辩言辞相互矛盾',sysdate(),'','','',5,10,1);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '发改案：4万亿投资计划',sysdate(),'','','',5,10,1);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '会挤占民间投资空间',sysdate(),'','','',5,10,1);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '河南两个乡镇真伪报告内容',sysdate(),'','','',5,10,1);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '完全一致引关注',sysdate(),'','','',5,10,1);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '答辩言辞相互矛盾',sysdate(),'','','',5,10,1);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '发改案：4万亿投资计划',sysdate(),'','','',5,10,1);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '会挤占民间投资空间',sysdate(),'','','',5,10,1);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '河南两个乡镇真伪报告内容',sysdate(),'','','',5,10,1);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '完全一致引关注',sysdate(),'','','',5,10,1);

insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '深足教练组：我们买球是侮辱，朱广沪暗中支招',sysdate(),'','','',1004,10,111);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '省政府500万悬赏建业基项球员：遗憾主场放炮国安',sysdate(),'','','',1004,10,111);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '洪元帧：北京人的脸就看你们的了 最有机会哆嗦看着办',sysdate(),'','','',1004,10,111);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '进阶冠军京城夺票总动员：夺冠！让所有人闭嘴',sysdate(),'','','',1004,10,111);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '一纸传真暗含申花处理态度 国足征调杜威突生悬疑',sysdate(),'','','',1004,10,111);

insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '气候变化导致海平面上升',sysdate(),'','','',6,10,222);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '商贸联委会在杭州开会 中国美对贸易争端态度低调',sysdate(),'','','',6,10,222);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '迟福妹："十二五"改革应向消费大国转型',sysdate(),'','','',6,10,222);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '伊朗称放弃美元作为外蓄地位 人民币或上位',sysdate(),'','','',6,10,222);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '"持械抢劫，当场击毙"浙江永康超人标语',sysdate(),'','','',6,10,222);

insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '气候变化导致海平面上升',sysdate(),'','','',6,10,333);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '商贸联委会在杭州开会 中国美对贸易争端态度低调',sysdate(),'','','',6,10,333);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '迟福妹："十二五"改革应向消费大国转型',sysdate(),'','','',6,10,333);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '伊朗称放弃美元作为外蓄地位 人民币或上位',sysdate(),'','','',6,10,333);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '"持械抢劫，当场击毙"浙江永康超人标语',sysdate(),'','','',6,10,333);

insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '气候变化导致海平面上升',sysdate(),'','','',6,10,444);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '商贸联委会在杭州开会 中国美对贸易争端态度低调',sysdate(),'','','',6,10,444);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '迟福妹："十二五"改革应向消费大国转型',sysdate(),'','','',6,10,444);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '伊朗称放弃美元作为外蓄地位 人民币或上位',sysdate(),'','','',6,10,444);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '"持械抢劫，当场击毙"浙江永康超人标语',sysdate(),'','','',6,10,444);

insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '气候变化导致海平面上升',sysdate(),'','','',6,10,555);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '商贸联委会在杭州开会 中国美对贸易争端态度低调',sysdate(),'','','',6,10,555);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '迟福妹："十二五"改革应向消费大国转型',sysdate(),'','','',6,10,555);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '伊朗称放弃美元作为外蓄地位 人民币或上位',sysdate(),'','','',6,10,555);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '"持械抢劫，当场击毙"浙江永康超人标语',sysdate(),'','','',6,10,555);

insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '幻想中穿越时空',sysdate(),'','','images/Picture1.jpg',6,10,666);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '庆多亮的发型',sysdate(),'','','images/Picture2.jpg',6,10,666);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '新技术照亮都市',sysdate(),'','','images/Picture3.jpg',6,10,666);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '群星闪耀红地毯',sysdate(),'','','images/Picture4.jpg',6,10,666);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '重庆沙黑富豪李强夫妇庭审',sysdate(),'good','smith','',1,0,1);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '答辩言辞相互矛盾',sysdate(),'','','',1,10,1);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '发改案：4万亿投资计划',sysdate(),'','','',1,10,1);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '会挤占民间投资空间',sysdate(),'','','',1,10,1);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '河南两个乡镇真伪报告内容',sysdate(),'','','',1,10,1);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '完全一致引关注',sysdate(),'','','',1,10,1);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '答辩言辞相互矛盾',sysdate(),'','','',1,10,1);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '发改案：4万亿投资计划',sysdate(),'','','',1,10,1);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '会挤占民间投资空间',sysdate(),'','','',1,10,1);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '河南两个乡镇真伪报告内容',sysdate(),'','','',1,10,1);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '完全一致引关注',sysdate(),'','','',1,10,1);

insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '重庆沙黑富豪李强夫妇庭审',sysdate(),'','','',2,10,1);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '答辩言辞相互矛盾',sysdate(),'','','',2,10,1);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '发改案：4万亿投资计划',sysdate(),'','','',2,10,1);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '会挤占民间投资空间',sysdate(),'','','',2,10,1);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '河南两个乡镇真伪报告内容',sysdate(),'','','',2,10,1);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '完全一致引关注',sysdate(),'','','',2,10,1);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '答辩言辞相互矛盾',sysdate(),'','','',2,10,1);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '发改案：4万亿投资计划',sysdate(),'','','',2,10,1);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '会挤占民间投资空间',sysdate(),'','','',2,10,1);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '河南两个乡镇真伪报告内容',sysdate(),'','','',2,10,1);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '完全一致引关注',sysdate(),'','','',2,10,1);

insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '重庆沙黑富豪李强夫妇庭审',sysdate(),'','','',5,10,1);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '答辩言辞相互矛盾',sysdate(),'','','',5,10,1);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '发改案：4万亿投资计划',sysdate(),'','','',5,10,1);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '会挤占民间投资空间',sysdate(),'','','',5,10,1);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '河南两个乡镇真伪报告内容',sysdate(),'','','',5,10,1);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '完全一致引关注',sysdate(),'','','',5,10,1);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '答辩言辞相互矛盾',sysdate(),'','','',5,10,1);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '发改案：4万亿投资计划',sysdate(),'','','',5,10,1);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '会挤占民间投资空间',sysdate(),'','','',5,10,1);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '河南两个乡镇真伪报告内容',sysdate(),'','','',5,10,1);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '完全一致引关注',sysdate(),'','','',5,10,1);

insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '深足教练组：我们买球是侮辱，朱广沪暗中支招',sysdate(),'','','',1004,10,111);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '省政府500万悬赏建业基项球员：遗憾主场放炮国安',sysdate(),'','','',1004,10,111);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '洪元帧：北京人的脸就看你们的了 最有机会哆嗦看着办',sysdate(),'','','',1004,10,111);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '进阶冠军京城夺票总动员：夺冠！让所有人闭嘴',sysdate(),'','','',1004,10,111);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '一纸传真暗含申花处理态度 国足征调杜威突生悬疑',sysdate(),'','','',1004,10,111);

insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '气候变化导致海平面上升',sysdate(),'','','',6,10,222);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '商贸联委会在杭州开会 中国美对贸易争端态度低调',sysdate(),'','','',6,10,222);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '迟福妹："十二五"改革应向消费大国转型',sysdate(),'','','',6,10,222);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '伊朗称放弃美元作为外蓄地位 人民币或上位',sysdate(),'','','',6,10,222);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '"持械抢劫，当场击毙"浙江永康超人标语',sysdate(),'','','',6,10,222);

insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '气候变化导致海平面上升',sysdate(),'','','',6,10,333);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '商贸联委会在杭州开会 中国美对贸易争端态度低调',sysdate(),'','','',6,10,333);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '迟福妹："十二五"改革应向消费大国转型',sysdate(),'','','',6,10,333);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '伊朗称放弃美元作为外蓄地位 人民币或上位',sysdate(),'','','',6,10,333);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '"持械抢劫，当场击毙"浙江永康超人标语',sysdate(),'','','',6,10,333);

insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '气候变化导致海平面上升',sysdate(),'','','',6,10,444);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '商贸联委会在杭州开会 中国美对贸易争端态度低调',sysdate(),'','','',6,10,444);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '迟福妹："十二五"改革应向消费大国转型',sysdate(),'','','',6,10,444);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '伊朗称放弃美元作为外蓄地位 人民币或上位',sysdate(),'','','',6,10,444);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '"持械抢劫，当场击毙"浙江永康超人标语',sysdate(),'','','',6,10,444);

insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '气候变化导致海平面上升',sysdate(),'','','',6,10,555);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '商贸联委会在杭州开会 中国美对贸易争端态度低调',sysdate(),'','','',6,10,555);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '迟福妹："十二五"改革应向消费大国转型',sysdate(),'','','',6,10,555);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '伊朗称放弃美元作为外蓄地位 人民币或上位',sysdate(),'','','',6,10,555);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '"持械抢劫，当场击毙"浙江永康超人标语',sysdate(),'','','',6,10,555);

insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '幻想中穿越时空',sysdate(),'','','images/Picture1.jpg',6,10,666);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '庆多亮的发型',sysdate(),'','','images/Picture2.jpg',6,10,666);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '新技术照亮都市',sysdate(),'','','images/Picture3.jpg',6,10,666);
insert into news(title,ndate,content,auth,pic,tid,views,weight) values( '群星闪耀红地毯',sysdate(),'','','images/Picture4.jpg',6,10,666);

commit;
select * from news;

select * from (select a.*,rownum rn from (select n.*,tname from news n,newstype t where n.tid=t.tid order by weight desc,ndate desc) a where rownum<=?)b where rn>?


select * from (select a.*,rownum rn from (select nid,title from news n,newstype t where n.tid=t.tid and tname=? order by weight desc,ndate desc) a where rownum<=?)b where rn>?


select * from (select a.*,rownum rn from (select nid,title from news n,newstype t where n.tid=t.tid and tname=? order by weight desc,ndate desc) a where rownum<=?)b where rn>? unionselect * from (select a.*,rownum rn from (select nid,title from news n,newstype t where n.tid=t.tid and tname=? order by weight desc,ndate desc) a where rownum<=?)b where rn>? union select * from (select a.*,rownum rn from (select nid,title from news n,newstype t where n.tid=t.tid and tname=? order by weight desc,ndate desc) a where rownum<=?)b where rn>?


select * from (select a.*,rownum rn from (select nid,title,auth,ndate,views from news n,newstype t where n.tid=t.tid and ndate=? and n.tid=? order by weight desc,ndate desc) a where rownum<=?)b where rn>?

select * from (select a.*,rownum rn from (select nid,title,auth,ndate,views from news n,newstype t where n.tid=t.tid and title like ? order by weight desc,ndate desc) a where rownum<=?)b where rn>?


select nid,title,ndate,content,auth,pic,news.tid,views,weight from news inner join newstype on newstype.tid=news.tid where 1=1;


select * from newstype where 1=1
select count(*) from newstype where 1=1
