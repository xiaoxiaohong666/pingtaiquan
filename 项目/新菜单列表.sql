DELETE FROM c_menu;
-- 报表中心
INSERT  INTO `c_menu`(`id`,`fatherId`,`createrid`,`createtime`,`name`,`directory`,`isdata`,`pairingtab`,`pairingalias`,`level`,`sort`,`iscancel`,`type`,`state`,`remark`) VALUES (1,-1,1,NOW(),'报表中心','',0,'','',1,1,0,1,10,'') ;
INSERT  INTO `c_menu`(`id`,`fatherId`,`createrid`,`createtime`,`name`,`directory`,`isdata`,`pairingtab`,`pairingalias`,`level`,`sort`,`iscancel`,`type`,`state`,`remark`) VALUES (101,1,1,NOW(),'媒体报表','/reportmedia',1,'tx_flux_result','tx',2,101,0,1,10,'') ;
-- MediaNameList(控制媒体选择权限)  主表 c_user
-- AppNameList(控制应用选择权限)  主表 app
-- AdslotNameList(控制广告位选择权限)  主表 ad_slot 
INSERT  INTO `c_menu`(`id`,`fatherId`,`createrid`,`createtime`,`name`,`directory`,`isdata`,`pairingtab`,`pairingalias`,`level`,`sort`,`iscancel`,`type`,`state`,`remark`) VALUES (102,1,1,NOW(),'客户报表','/reportadvertiser',1,'tx_flux_result','tx',2,102,0,1,10,'') ;
-- AdvertiserNameList(控制广告主选择权限)  主表 c_user  
-- OrderNameList(控制订单选择权限)  主表 or_indent
-- StrategyNameList(控制策略选择权限)  主表 or_strategy
INSERT  INTO `c_menu`(`id`,`fatherId`,`createrid`,`createtime`,`name`,`directory`,`isdata`,`pairingtab`,`pairingalias`,`level`,`sort`,`iscancel`,`type`,`state`,`remark`) VALUES (103,1,1,NOW(),'内部报表','/viewtx',1,'tx_flux_result','tx',2,103 ,0,1,10,'') ;

-- 媒体管理
INSERT  INTO `c_menu`(`id`,`fatherId`,`createrid`,`createtime`,`name`,`directory`,`isdata`,`pairingtab`,`pairingalias`,`level`,`sort`,`iscancel`,`type`,`state`,`remark`) VALUES (2,-1,1,NOW(),'媒体管理','',0,'','',1,2,0,1,10,'') ;
INSERT  INTO `c_menu`(`id`,`fatherId`,`createrid`,`createtime`,`name`,`directory`,`isdata`,`pairingtab`,`pairingalias`,`level`,`sort`,`iscancel`,`type`,`state`,`remark`) VALUES (201,2,1,NOW(),'应用审核','/mediaApp/mediaapppage',1,'app','a',2,201,0,1,10,'') ;
-- MediaUserName(控制媒体选择权限)
INSERT  INTO `c_menu`(`id`,`fatherId`,`createrid`,`createtime`,`name`,`directory`,`isdata`,`pairingtab`,`pairingalias`,`level`,`sort`,`iscancel`,`type`,`state`,`remark`) VALUES (205,2,1,NOW(),'ad采购定价','/mediaadslot/findnewmediaadslot',1,'ad_slot','a',2,205,0,1,10,'') ;
-- MediaUserName(控制媒体选择权限)
INSERT  INTO `c_menu`(`id`,`fatherId`,`createrid`,`createtime`,`name`,`directory`,`isdata`,`pairingtab`,`pairingalias`,`level`,`sort`,`iscancel`,`type`,`state`,`remark`) VALUES (210,2,1,NOW(),'ad销售报价','/adslotsell',1,'ad_slot','a',2,210,0,1,10,'') ;

INSERT  INTO `c_menu`(`id`,`fatherId`,`createrid`,`createtime`,`name`,`directory`,`isdata`,`pairingtab`,`pairingalias`,`level`,`sort`,`iscancel`,`type`,`state`,`remark`) VALUES (211,2,1,NOW(),'ad对接留档','#',1,'ad_slot','a',2,211,0,1,10,'') ;

INSERT  INTO `c_menu`(`id`,`fatherId`,`createrid`,`createtime`,`name`,`directory`,`isdata`,`pairingtab`,`pairingalias`,`level`,`sort`,`iscancel`,`type`,`state`,`remark`) VALUES (215,2,1,NOW(),'应用管理','/app/apppage',1,'app','a',2,215,0,1,10,'') ;
-- MediaUserName(控制媒体选择权限)
INSERT  INTO `c_menu`(`id`,`fatherId`,`createrid`,`createtime`,`name`,`directory`,`isdata`,`pairingtab`,`pairingalias`,`level`,`sort`,`iscancel`,`type`,`state`,`remark`) VALUES (220,2,1,NOW(),'广告位管理','/adSlot/findnewslotpage',1,'ad_slot','a',2,220,0,1,10,'') ;
-- MediaUserName(控制选择媒体)
-- 订单管理
INSERT  INTO `c_menu`(`id`,`fatherId`,`createrid`,`createtime`,`name`,`directory`,`isdata`,`pairingtab`,`pairingalias`,`level`,`sort`,`iscancel`,`type`,`state`,`remark`) VALUES (3,-1,1,NOW(),'订单管理','',0,'','',1,3,0,1,10,'');
INSERT  INTO `c_menu`(`id`,`fatherId`,`createrid`,`createtime`,`name`,`directory`,`isdata`,`pairingtab`,`pairingalias`,`level`,`sort`,`iscancel`,`type`,`state`,`remark`) VALUES (301,3,1,NOW(),'订单审核','/indent/indentauditpage',1,'or_indent','a',2,301,0,1,10,'') ;
INSERT  INTO `c_menu`(`id`,`fatherId`,`createrid`,`createtime`,`name`,`directory`,`isdata`,`pairingtab`,`pairingalias`,`level`,`sort`,`iscancel`,`type`,`state`,`remark`) VALUES (302,3,1,NOW(),'内部订单','/indentin/generalpage',1,'or_indent','a',2,302,0,1,10,'') ;
INSERT  INTO `c_menu`(`id`,`fatherId`,`createrid`,`createtime`,`name`,`directory`,`isdata`,`pairingtab`,`pairingalias`,`level`,`sort`,`iscancel`,`type`,`state`,`remark`) VALUES (303,3,1,NOW(),'客户订单','/indentau/generalpage',1,'or_indent','a',2,303,0,1,10,'') ;
INSERT  INTO `c_menu`(`id`,`fatherId`,`createrid`,`createtime`,`name`,`directory`,`isdata`,`pairingtab`,`pairingalias`,`level`,`sort`,`iscancel`,`type`,`state`,`remark`) VALUES (304,3,1,NOW(),'广告测试','#',1,'or_indent','a',2,304,0,1,10,'') ;
-- 运维监控
INSERT  INTO `c_menu`(`id`,`fatherId`,`createrid`,`createtime`,`name`,`directory`,`isdata`,`pairingtab`,`pairingalias`,`level`,`sort`,`iscancel`,`type`,`state`,`remark`) VALUES (4,-1,1,NOW(),'运维中心','',0,'','',1,4,0,1,10,'') ;
INSERT  INTO `c_menu`(`id`,`fatherId`,`createrid`,`createtime`,`name`,`directory`,`isdata`,`pairingtab`,`pairingalias`,`level`,`sort`,`iscancel`,`type`,`state`,`remark`) VALUES (401,4,1,NOW(),'超级监控','#',0,'#','#',2,401,0,1,10,'') ;
INSERT  INTO `c_menu`(`id`,`fatherId`,`createrid`,`createtime`,`name`,`directory`,`isdata`,`pairingtab`,`pairingalias`,`level`,`sort`,`iscancel`,`type`,`state`,`remark`) VALUES (402,4,1,NOW(),'策略监控','#',0,'#','#',2,402,0,1,10,'') ;
INSERT  INTO `c_menu`(`id`,`fatherId`,`createrid`,`createtime`,`name`,`directory`,`isdata`,`pairingtab`,`pairingalias`,`level`,`sort`,`iscancel`,`type`,`state`,`remark`) VALUES (403,4,1,NOW(),'日监控','#',0,'#','#',2,403,0,1,10,'') ;
-- 结算中心
INSERT  INTO `c_menu`(`id`,`fatherId`,`createrid`,`createtime`,`name`,`directory`,`isdata`,`pairingtab`,`pairingalias`,`level`,`sort`,`iscancel`,`type`,`state`,`remark`) VALUES (5,-1,1,NOW(),'结算中心','',0,'','',1,5,0,1,10,'') ;
INSERT  INTO `c_menu`(`id`,`fatherId`,`createrid`,`createtime`,`name`,`directory`,`isdata`,`pairingtab`,`pairingalias`,`level`,`sort`,`iscancel`,`type`,`state`,`remark`) VALUES (501,5,1,NOW(),'日结算数据','#',0,'#','#',2,501,0,1,10,'') ;
INSERT  INTO `c_menu`(`id`,`fatherId`,`createrid`,`createtime`,`name`,`directory`,`isdata`,`pairingtab`,`pairingalias`,`level`,`sort`,`iscancel`,`type`,`state`,`remark`) VALUES (502,5,1,NOW(),'媒体结算','#',0,'#','#',2,502,0,1,10,'') ;
INSERT  INTO `c_menu`(`id`,`fatherId`,`createrid`,`createtime`,`name`,`directory`,`isdata`,`pairingtab`,`pairingalias`,`level`,`sort`,`iscancel`,`type`,`state`,`remark`) VALUES (503,5,1,NOW(),'客户结算','#',0,'#','#',2,503,0,1,10,'') ;
-- 财务管理
INSERT  INTO `c_menu`(`id`,`fatherId`,`createrid`,`createtime`,`name`,`directory`,`isdata`,`pairingtab`,`pairingalias`,`level`,`sort`,`iscancel`,`type`,`state`,`remark`) VALUES (6,-1,1,NOW(),'财务管理','',0,'','',1,6,0,1,10,'') ;
INSERT  INTO `c_menu`(`id`,`fatherId`,`createrid`,`createtime`,`name`,`directory`,`isdata`,`pairingtab`,`pairingalias`,`level`,`sort`,`iscancel`,`type`,`state`,`remark`) VALUES (601,6,1,NOW(),'付款账户信息','#',0,'#','#',2,601,0,1,10,'') ;
INSERT  INTO `c_menu`(`id`,`fatherId`,`createrid`,`createtime`,`name`,`directory`,`isdata`,`pairingtab`,`pairingalias`,`level`,`sort`,`iscancel`,`type`,`state`,`remark`) VALUES (602,6,1,NOW(),'收款账户信息','#',0,'#','#',2,602,0,1,10,'') ;
INSERT  INTO `c_menu`(`id`,`fatherId`,`createrid`,`createtime`,`name`,`directory`,`isdata`,`pairingtab`,`pairingalias`,`level`,`sort`,`iscancel`,`type`,`state`,`remark`) VALUES (603,6,1,NOW(),'付款管理','#',0,'#','#',2,603,0,1,10,'') ;
INSERT  INTO `c_menu`(`id`,`fatherId`,`createrid`,`createtime`,`name`,`directory`,`isdata`,`pairingtab`,`pairingalias`,`level`,`sort`,`iscancel`,`type`,`state`,`remark`) VALUES (604,6,1,NOW(),'收款管理','#',0,'#','#',2,604,0,1,10,'') ;
-- 平台用户
INSERT  INTO `c_menu`(`id`,`fatherId`,`createrid`,`createtime`,`name`,`directory`,`isdata`,`pairingtab`,`pairingalias`,`level`,`sort`,`iscancel`,`type`,`state`,`remark`) VALUES (7,-1,1,NOW(),'平台用户','',0,'','',1,7,0,1,10,'') ;
INSERT  INTO `c_menu`(`id`,`fatherId`,`createrid`,`createtime`,`name`,`directory`,`isdata`,`pairingtab`,`pairingalias`,`level`,`sort`,`iscancel`,`type`,`state`,`remark`) VALUES (701,7,1,NOW(),'内部员工','/cpersonnel/list',0,'c_personnel','a',2,701,0,1,10,'') ;
INSERT  INTO `c_menu`(`id`,`fatherId`,`createrid`,`createtime`,`name`,`directory`,`isdata`,`pairingtab`,`pairingalias`,`level`,`sort`,`iscancel`,`type`,`state`,`remark`) VALUES (702,7,1,NOW(),'媒体用户','/csupplier/list',0,'c_supplier','a',2,702,0,1,10,'') ;
INSERT  INTO `c_menu`(`id`,`fatherId`,`createrid`,`createtime`,`name`,`directory`,`isdata`,`pairingtab`,`pairingalias`,`level`,`sort`,`iscancel`,`type`,`state`,`remark`) VALUES (703,7,1,NOW(),'客户管理','/cclient/list',0,'c_client','a',2,703,0,1,10,'') ;
-- 信息管理
INSERT  INTO `c_menu`(`id`,`fatherId`,`createrid`,`createtime`,`name`,`directory`,`isdata`,`pairingtab`,`pairingalias`,`level`,`sort`,`iscancel`,`type`,`state`,`remark`) VALUES (8,-1,1,NOW(),'信息管理','',0,'','',1,8,0,1,10,'') ;
INSERT  INTO `c_menu`(`id`,`fatherId`,`createrid`,`createtime`,`name`,`directory`,`isdata`,`pairingtab`,`pairingalias`,`level`,`sort`,`iscancel`,`type`,`state`,`remark`) VALUES (801,8,1,NOW(),'留言板','#',0,'#','#',2,801,0,1,10,'') ;
INSERT  INTO `c_menu`(`id`,`fatherId`,`createrid`,`createtime`,`name`,`directory`,`isdata`,`pairingtab`,`pairingalias`,`level`,`sort`,`iscancel`,`type`,`state`,`remark`) VALUES (802,8,1,NOW(),'信息公告','#',0,'#','#',2,802,0,1,10,'') ;
INSERT  INTO `c_menu`(`id`,`fatherId`,`createrid`,`createtime`,`name`,`directory`,`isdata`,`pairingtab`,`pairingalias`,`level`,`sort`,`iscancel`,`type`,`state`,`remark`) VALUES (803,8,1,NOW(),'新手帮助','#',0,'#','#',2,803,0,1,10,'') ;
INSERT  INTO `c_menu`(`id`,`fatherId`,`createrid`,`createtime`,`name`,`directory`,`isdata`,`pairingtab`,`pairingalias`,`level`,`sort`,`iscancel`,`type`,`state`,`remark`) VALUES (804,8,1,NOW(),'服务条款','#',0,'#','#',2,804,0,1,10,'') ;
INSERT  INTO `c_menu`(`id`,`fatherId`,`createrid`,`createtime`,`name`,`directory`,`isdata`,`pairingtab`,`pairingalias`,`level`,`sort`,`iscancel`,`type`,`state`,`remark`) VALUES (805,8,1,NOW(),'SDK附件','#',0,'#','#',2,805,0,1,10,'') ;

-- 字典设置
INSERT  INTO `c_menu`(`id`,`fatherId`,`createrid`,`createtime`,`name`,`directory`,`isdata`,`pairingtab`,`pairingalias`,`level`,`sort`,`iscancel`,`type`,`state`,`remark`) VALUES (9,-1,1,NOW(),'基础信息','',0,'','',1,9,0,1,10,'') ;
INSERT  INTO `c_menu`(`id`,`fatherId`,`createrid`,`createtime`,`name`,`directory`,`isdata`,`pairingtab`,`pairingalias`,`level`,`sort`,`iscancel`,`type`,`state`,`remark`) VALUES (901,9,1,NOW(),'系统参数','/parameter',0,'','',2,901,0,1,10,'') ;
INSERT  INTO `c_menu`(`id`,`fatherId`,`createrid`,`createtime`,`name`,`directory`,`isdata`,`pairingtab`,`pairingalias`,`level`,`sort`,`iscancel`,`type`,`state`,`remark`) VALUES (902,9,1,NOW(),'投放地区','/putarea',0,'','',2,902,0,1,10,'') ;
INSERT  INTO `c_menu`(`id`,`fatherId`,`createrid`,`createtime`,`name`,`directory`,`isdata`,`pairingtab`,`pairingalias`,`level`,`sort`,`iscancel`,`type`,`state`,`remark`) VALUES (903,9,1,NOW(),'数据字典','/dict',0,'','',2,903,0,1,10,'') ;
INSERT  INTO `c_menu`(`id`,`fatherId`,`createrid`,`createtime`,`name`,`directory`,`isdata`,`pairingtab`,`pairingalias`,`level`,`sort`,`iscancel`,`type`,`state`,`remark`) VALUES (904,9,1,NOW(),'内部职务','/jobposit',0,'','',2,904,0,1,10,'') ;
INSERT  INTO `c_menu`(`id`,`fatherId`,`createrid`,`createtime`,`name`,`directory`,`isdata`,`pairingtab`,`pairingalias`,`level`,`sort`,`iscancel`,`type`,`state`,`remark`) VALUES (905,9,1,NOW(),'媒体分类','#',0,'d_appsubject','',2,905,0,1,10,'') ;
-- 系统设置
INSERT  INTO `c_menu`(`id`,`fatherId`,`createrid`,`createtime`,`name`,`directory`,`isdata`,`pairingtab`,`pairingalias`,`level`,`sort`,`iscancel`,`type`,`state`,`remark`) VALUES (10,-1,1,NOW(),'系统管理','',0,'','',1,10,0,1,10,'') ;
INSERT  INTO `c_menu`(`id`,`fatherId`,`createrid`,`createtime`,`name`,`directory`,`isdata`,`pairingtab`,`pairingalias`,`level`,`sort`,`iscancel`,`type`,`state`,`remark`) VALUES (1001,10,1,NOW(),'功能菜单','/cmenu',0,'','',2,1001,0,1,10,'') ;
INSERT  INTO `c_menu`(`id`,`fatherId`,`createrid`,`createtime`,`name`,`directory`,`isdata`,`pairingtab`,`pairingalias`,`level`,`sort`,`iscancel`,`type`,`state`,`remark`) VALUES (1002,10,1,NOW(),'人员组织','/organize/organizemanage',0,'','',2,1002,0,1,10,'') ;
INSERT  INTO `c_menu`(`id`,`fatherId`,`createrid`,`createtime`,`name`,`directory`,`isdata`,`pairingtab`,`pairingalias`,`level`,`sort`,`iscancel`,`type`,`state`,`remark`) VALUES (1003,10,1,NOW(),'菜单权限','/menupermission',0,'','',2,1003,0,1,10,'') ;
INSERT  INTO `c_menu`(`id`,`fatherId`,`createrid`,`createtime`,`name`,`directory`,`isdata`,`pairingtab`,`pairingalias`,`level`,`sort`,`iscancel`,`type`,`state`,`remark`) VALUES (1004,10,1,NOW(),'数据权限','/datapermission',0,'','',2,1004,0,1,10,'') ;
INSERT  INTO `c_menu`(`id`,`fatherId`,`createrid`,`createtime`,`name`,`directory`,`isdata`,`pairingtab`,`pairingalias`,`level`,`sort`,`iscancel`,`type`,`state`,`remark`) VALUES (1005,10,1,NOW(),'系统日志','#',0,'','',2,1005,0,1,10,'') ;
INSERT  INTO `c_menu`(`id`,`fatherId`,`createrid`,`createtime`,`name`,`directory`,`isdata`,`pairingtab`,`pairingalias`,`level`,`sort`,`iscancel`,`type`,`state`,`remark`) VALUES (1006,10,1,NOW(),'操作日志','#',0,'','',2,1006,0,1,10,'') ;
