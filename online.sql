-- --------------------------------------------------------
-- 主机:                           116.85.30.63
-- 服务器版本:                        5.7.30-log - MySQL Community Server (GPL)
-- 服务器操作系统:                      linux-glibc2.12
-- HeidiSQL 版本:                  11.0.0.6008
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 正在导出表  onlinestore.authtoken_token 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `authtoken_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `authtoken_token` ENABLE KEYS */;

-- 正在导出表  onlinestore.auth_group 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;

-- 正在导出表  onlinestore.auth_group_permissions 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;

-- 正在导出表  onlinestore.auth_permission 的数据：~84 rows (大约)
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(1, 'Can add log entry', 1, 'add_logentry'),
	(2, 'Can change log entry', 1, 'change_logentry'),
	(3, 'Can delete log entry', 1, 'delete_logentry'),
	(4, 'Can view log entry', 1, 'view_logentry'),
	(5, 'Can add permission', 2, 'add_permission'),
	(6, 'Can change permission', 2, 'change_permission'),
	(7, 'Can delete permission', 2, 'delete_permission'),
	(8, 'Can view permission', 2, 'view_permission'),
	(9, 'Can add group', 3, 'add_group'),
	(10, 'Can change group', 3, 'change_group'),
	(11, 'Can delete group', 3, 'delete_group'),
	(12, 'Can view group', 3, 'view_group'),
	(13, 'Can add content type', 4, 'add_contenttype'),
	(14, 'Can change content type', 4, 'change_contenttype'),
	(15, 'Can delete content type', 4, 'delete_contenttype'),
	(16, 'Can view content type', 4, 'view_contenttype'),
	(17, 'Can add session', 5, 'add_session'),
	(18, 'Can change session', 5, 'change_session'),
	(19, 'Can delete session', 5, 'delete_session'),
	(20, 'Can view session', 5, 'view_session'),
	(21, 'Can add verify code', 6, 'add_verifycode'),
	(22, 'Can change verify code', 6, 'change_verifycode'),
	(23, 'Can delete verify code', 6, 'delete_verifycode'),
	(24, 'Can view verify code', 6, 'view_verifycode'),
	(25, 'Can add user', 7, 'add_user'),
	(26, 'Can change user', 7, 'change_user'),
	(27, 'Can delete user', 7, 'delete_user'),
	(28, 'Can view user', 7, 'view_user'),
	(29, 'Can add 商品', 8, 'add_goods'),
	(30, 'Can change 商品', 8, 'change_goods'),
	(31, 'Can delete 商品', 8, 'delete_goods'),
	(32, 'Can view 商品', 8, 'view_goods'),
	(33, 'Can add 商品类别', 9, 'add_goodscategory'),
	(34, 'Can change 商品类别', 9, 'change_goodscategory'),
	(35, 'Can delete 商品类别', 9, 'delete_goodscategory'),
	(36, 'Can view 商品类别', 9, 'view_goodscategory'),
	(37, 'Can add 热搜词', 10, 'add_hotsearchwords'),
	(38, 'Can change 热搜词', 10, 'change_hotsearchwords'),
	(39, 'Can delete 热搜词', 10, 'delete_hotsearchwords'),
	(40, 'Can view 热搜词', 10, 'view_hotsearchwords'),
	(41, 'Can add 首页商品类别广告', 11, 'add_indexad'),
	(42, 'Can change 首页商品类别广告', 11, 'change_indexad'),
	(43, 'Can delete 首页商品类别广告', 11, 'delete_indexad'),
	(44, 'Can view 首页商品类别广告', 11, 'view_indexad'),
	(45, 'Can add 商品图片', 12, 'add_goodsimage'),
	(46, 'Can change 商品图片', 12, 'change_goodsimage'),
	(47, 'Can delete 商品图片', 12, 'delete_goodsimage'),
	(48, 'Can view 商品图片', 12, 'view_goodsimage'),
	(49, 'Can add 品牌', 13, 'add_goodscategorybrand'),
	(50, 'Can change 品牌', 13, 'change_goodscategorybrand'),
	(51, 'Can delete 品牌', 13, 'delete_goodscategorybrand'),
	(52, 'Can view 品牌', 13, 'view_goodscategorybrand'),
	(53, 'Can add 轮播商品', 14, 'add_banner'),
	(54, 'Can change 轮播商品', 14, 'change_banner'),
	(55, 'Can delete 轮播商品', 14, 'delete_banner'),
	(56, 'Can view 轮播商品', 14, 'view_banner'),
	(57, 'Can add 用户留言', 15, 'add_userleavingmessage'),
	(58, 'Can change 用户留言', 15, 'change_userleavingmessage'),
	(59, 'Can delete 用户留言', 15, 'delete_userleavingmessage'),
	(60, 'Can view 用户留言', 15, 'view_userleavingmessage'),
	(61, 'Can add 收货地址', 16, 'add_useraddress'),
	(62, 'Can change 收货地址', 16, 'change_useraddress'),
	(63, 'Can delete 收货地址', 16, 'delete_useraddress'),
	(64, 'Can view 收货地址', 16, 'view_useraddress'),
	(65, 'Can add 用户收藏', 17, 'add_userfav'),
	(66, 'Can change 用户收藏', 17, 'change_userfav'),
	(67, 'Can delete 用户收藏', 17, 'delete_userfav'),
	(68, 'Can view 用户收藏', 17, 'view_userfav'),
	(69, 'Can add 订单商品', 18, 'add_ordergoods'),
	(70, 'Can change 订单商品', 18, 'change_ordergoods'),
	(71, 'Can delete 订单商品', 18, 'delete_ordergoods'),
	(72, 'Can view 订单商品', 18, 'view_ordergoods'),
	(73, 'Can add 订单', 19, 'add_orderinfo'),
	(74, 'Can change 订单', 19, 'change_orderinfo'),
	(75, 'Can delete 订单', 19, 'delete_orderinfo'),
	(76, 'Can view 订单', 19, 'view_orderinfo'),
	(77, 'Can add 购物车', 20, 'add_shoppingcart'),
	(78, 'Can change 购物车', 20, 'change_shoppingcart'),
	(79, 'Can delete 购物车', 20, 'delete_shoppingcart'),
	(80, 'Can view 购物车', 20, 'view_shoppingcart'),
	(81, 'Can add Token', 21, 'add_token'),
	(82, 'Can change Token', 21, 'change_token'),
	(83, 'Can delete Token', 21, 'delete_token'),
	(84, 'Can view Token', 21, 'view_token');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;

-- 正在导出表  onlinestore.django_admin_log 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;

-- 正在导出表  onlinestore.django_content_type 的数据：~21 rows (大约)
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
	(1, 'admin', 'logentry'),
	(3, 'auth', 'group'),
	(2, 'auth', 'permission'),
	(21, 'authtoken', 'token'),
	(4, 'contenttypes', 'contenttype'),
	(14, 'goods', 'banner'),
	(8, 'goods', 'goods'),
	(9, 'goods', 'goodscategory'),
	(13, 'goods', 'goodscategorybrand'),
	(12, 'goods', 'goodsimage'),
	(10, 'goods', 'hotsearchwords'),
	(11, 'goods', 'indexad'),
	(5, 'sessions', 'session'),
	(18, 'trade', 'ordergoods'),
	(19, 'trade', 'orderinfo'),
	(20, 'trade', 'shoppingcart'),
	(7, 'user', 'user'),
	(6, 'user', 'verifycode'),
	(16, 'useroper', 'useraddress'),
	(17, 'useroper', 'userfav'),
	(15, 'useroper', 'userleavingmessage');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;

-- 正在导出表  onlinestore.django_migrations 的数据：~25 rows (大约)
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(1, 'contenttypes', '0001_initial', '2020-08-14 21:23:12.509904'),
	(2, 'contenttypes', '0002_remove_content_type_name', '2020-08-14 21:23:12.921746'),
	(3, 'auth', '0001_initial', '2020-08-14 21:23:13.502038'),
	(4, 'auth', '0002_alter_permission_name_max_length', '2020-08-14 21:23:14.576750'),
	(5, 'auth', '0003_alter_user_email_max_length', '2020-08-14 21:23:14.607506'),
	(6, 'auth', '0004_alter_user_username_opts', '2020-08-14 21:23:14.646633'),
	(7, 'auth', '0005_alter_user_last_login_null', '2020-08-14 21:23:14.686653'),
	(8, 'auth', '0006_require_contenttypes_0002', '2020-08-14 21:23:14.712643'),
	(9, 'auth', '0007_alter_validators_add_error_messages', '2020-08-14 21:23:14.754652'),
	(10, 'auth', '0008_alter_user_username_max_length', '2020-08-14 21:23:14.795647'),
	(11, 'auth', '0009_alter_user_last_name_max_length', '2020-08-14 21:23:14.824648'),
	(12, 'auth', '0010_alter_group_name_max_length', '2020-08-14 21:23:14.923689'),
	(13, 'auth', '0011_update_proxy_permissions', '2020-08-14 21:23:14.999419'),
	(14, 'auth', '0012_alter_user_first_name_max_length', '2020-08-14 21:23:15.029738'),
	(15, 'user', '0001_initial', '2020-08-14 21:23:16.006729'),
	(16, 'admin', '0001_initial', '2020-08-14 21:23:17.396721'),
	(17, 'admin', '0002_logentry_remove_auto_add', '2020-08-14 21:23:17.919579'),
	(18, 'admin', '0003_logentry_add_action_flag_choices', '2020-08-14 21:23:17.963699'),
	(19, 'authtoken', '0001_initial', '2020-08-14 21:23:18.206767'),
	(20, 'authtoken', '0002_auto_20160226_1747', '2020-08-14 21:23:18.814768'),
	(21, 'goods', '0001_initial', '2020-08-14 21:23:20.444811'),
	(22, 'sessions', '0001_initial', '2020-08-14 21:23:22.014770'),
	(23, 'trade', '0001_initial', '2020-08-14 21:23:22.719760'),
	(24, 'trade', '0002_auto_20200814_2123', '2020-08-14 21:23:24.062802'),
	(25, 'useroper', '0001_initial', '2020-08-14 21:23:24.785807');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;

-- 正在导出表  onlinestore.django_session 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;

-- 正在导出表  onlinestore.goods_banner 的数据：~3 rows (大约)
/*!40000 ALTER TABLE `goods_banner` DISABLE KEYS */;
INSERT INTO `goods_banner` (`id`, `image`, `index`, `add_time`, `goods_id`) VALUES
	(1, 'banner/banner1.jpg', 1, '2020-08-14 21:59:40.000000', 35),
	(2, 'banner/banner2.jpg', 2, '2020-08-14 22:00:25.000000', 31),
	(3, 'banner/banner3.jpg', 3, '2020-08-14 22:01:07.000000', 28);
/*!40000 ALTER TABLE `goods_banner` ENABLE KEYS */;

-- 正在导出表  onlinestore.goods_goods 的数据：~52 rows (大约)
/*!40000 ALTER TABLE `goods_goods` DISABLE KEYS */;
INSERT INTO `goods_goods` (`id`, `goods_sn`, `name`, `click_num`, `sold_num`, `fav_num`, `goods_num`, `market_price`, `shop_price`, `goods_brief`, `goods_desc`, `ship_free`, `goods_front_image`, `is_new`, `is_hot`, `add_time`, `category_id`) VALUES
	(1, '', '新鲜水果甜蜜香脆单果约800克', 0, 0, 0, 100, 232, 156, '食用百香果可以增加胃部饱腹感，减少余热量的摄入，还可以吸附胆固醇和胆汁之类有机分子，抑制人体对脂肪的吸收。因此，长期食用有利于改善人体营养吸收结构，降低体内脂肪，塑造健康优美体态。', '<p><img src="/media/goods/images/2_20170719161405_249.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161414_628.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161435_381.jpg" title="" alt="2.jpg"/></p>', 1, 'goods/images/1_P_1449024889889.jpg', 0, 0, '2020-08-14 21:30:23.625888', 20),
	(2, '', '田然牛肉大黄瓜条生鲜牛肉冷冻真空黄牛', 0, 0, 0, 100, 106, 88, '前腿+后腿+羊排共8斤，原生态大山放牧羊羔，曾经的皇室贡品，央视推荐，2005年北京招待全球财金首脑。五层专用包装箱+真空包装+冰袋+保鲜箱+顺丰冷链发货，路途保质期8天', '<p><img src="/media/goods/images/2_20170719161405_249.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161414_628.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161435_381.jpg" title="" alt="2.jpg"/></p>', 1, 'goods/images/2_P_1448945810202.jpg', 1, 0, '2020-08-14 21:30:24.475864', 7),
	(3, '', '酣畅家庭菲力牛排10片澳洲生鲜牛肉团购套餐', 0, 0, 0, 100, 286, 238, '', '<p><img src="/media/goods/images/2_20170719161405_249.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161414_628.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161435_381.jpg" title="" alt="2.jpg"/></p>', 1, 'goods/images/7_P_1448945104883.jpg', 0, 0, '2020-08-14 21:30:24.876919', 15),
	(4, '', '日本蒜蓉粉丝扇贝270克6只装', 0, 0, 0, 100, 156, 108, '', '<p><img src="/media/goods/images/2_20170719161405_249.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161414_628.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161435_381.jpg" title="" alt="2.jpg"/></p>', 1, 'goods/images/47_P_1448946213263.jpg', 1, 0, '2020-08-14 21:30:25.289889', 20),
	(5, '', '内蒙新鲜牛肉1斤清真生鲜牛肉火锅食材', 0, 0, 0, 100, 106, 88, '', '<p><img src="/media/goods/images/2_20170719161405_249.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161414_628.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161435_381.jpg" title="" alt="2.jpg"/></p>', 1, 'goods/images/10_P_1448944572085.jpg', 0, 0, '2020-08-14 21:30:25.787889', 7),
	(6, '', '乌拉圭进口牛肉卷特级肥牛卷', 0, 0, 0, 100, 90, 75, '', '<p><img src="/media/goods/images/2_20170719161405_249.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161414_628.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161435_381.jpg" title="" alt="2.jpg"/></p>', 1, 'goods/images/4_P_1448945381985.jpg', 0, 0, '2020-08-14 21:30:26.429873', 21),
	(7, '', '五星眼肉牛排套餐8片装原味原切生鲜牛肉', 0, 0, 0, 100, 150, 125, '', '<p><img src="/media/goods/images/2_20170719161405_249.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161414_628.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161435_381.jpg" title="" alt="2.jpg"/></p>', 1, 'goods/images/8_P_1448945032810.jpg', 1, 0, '2020-08-14 21:30:26.856890', 23),
	(8, '', '澳洲进口120天谷饲牛仔骨4份原味生鲜', 0, 0, 0, 100, 31, 26, '', '<p><img src="/media/goods/images/2_20170719161405_249.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161414_628.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161435_381.jpg" title="" alt="2.jpg"/></p>', 1, 'goods/images/11_P_1448944388277.jpg', 0, 0, '2020-08-14 21:30:27.260888', 7),
	(9, '', '潮香村澳洲进口牛排家庭团购套餐20片', 0, 0, 0, 100, 239, 199, '', '<p><img src="/media/goods/images/2_20170719161405_249.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161414_628.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161435_381.jpg" title="" alt="2.jpg"/></p>', 1, 'goods/images/6_P_1448945167279.jpg', 0, 0, '2020-08-14 21:30:27.849892', 22),
	(10, '', '爱食派内蒙古呼伦贝尔冷冻生鲜牛腱子肉1000g', 0, 0, 0, 100, 202, 168, '', '<p><img src="/media/goods/images/2_20170719161405_249.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161414_628.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161435_381.jpg" title="" alt="2.jpg"/></p>', 1, 'goods/images/9_P_1448944791617.jpg', 0, 0, '2020-08-14 21:30:28.438889', 20),
	(11, '', '澳洲进口牛尾巴300g新鲜肥牛肉', 0, 0, 0, 100, 306, 255, '新鲜羊羔肉整只共15斤，原生态大山放牧羊羔，曾经的皇室贡品，央视推荐，2005年北京招待全球财金首脑。五层专用包装箱+真空包装+冰袋+保鲜箱+顺丰冷链发货，路途保质期8天', '<p><img src="/media/goods/images/2_20170719161405_249.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161414_628.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161435_381.jpg" title="" alt="2.jpg"/></p>', 1, 'goods/images/3_P_1448945490837.jpg', 0, 0, '2020-08-14 21:30:29.146139', 2),
	(12, '', '新疆巴尔鲁克生鲜牛排眼肉牛扒1200g', 0, 0, 0, 100, 126, 88, '', '<p><img src="/media/goods/images/2_20170719161405_249.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161414_628.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161435_381.jpg" title="" alt="2.jpg"/></p>', 1, 'goods/images/48_P_1448943988970.jpg', 1, 0, '2020-08-14 21:30:29.648238', 7),
	(13, '', '澳洲进口安格斯牛切片上脑牛排1000g', 0, 0, 0, 100, 144, 120, '澳大利亚是国际公认的没有疯牛病和口蹄疫的国家。为了保持澳大利亚产品的高标准，澳大利亚牛肉业和各级政府共同努力简历了严格的标准和体系，以保证生产的整体化和产品的可追溯性', '<p><img src="/media/goods/images/2_20170719161405_249.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161414_628.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161435_381.jpg" title="" alt="2.jpg"/></p>', 1, 'goods/images/5_P_1448945270390.jpg', 0, 0, '2020-08-14 21:30:30.215117', 12),
	(14, '', '帐篷出租', 0, 0, 0, 100, 120, 100, '', '<p><img src="/media/goods/images/2_20170719161405_249.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161414_628.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161435_381.jpg" title="" alt="2.jpg"/></p>', 1, 'images/201705/goods_img/53_P_1495068879687.jpg', 1, 0, '2020-08-14 21:30:30.677116', 21),
	(15, '', '52度茅台集团国隆双喜酒500mlx6', 0, 0, 0, 100, 23, 19, '贵州茅台酒厂（集团）保健酒业有限公司生产，是以“龙”字打头的酒水。中国龙文化上下8000年，源远而流长，龙的形象是一种符号、一种意绪、一种血肉相联的情感。', '<p><img src="/media/goods/images/2_20170719161405_249.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161414_628.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161435_381.jpg" title="" alt="2.jpg"/></p>', 1, 'goods/images/16_P_1448947194687.jpg', 0, 0, '2020-08-14 21:30:30.914238', 37),
	(16, '', '52度水井坊臻酿八號500ml', 0, 0, 0, 100, 43, 36, '', '<p><img src="/media/goods/images/2_20170719161405_249.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161414_628.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161435_381.jpg" title="" alt="2.jpg"/></p>', 1, 'goods/images/14_P_1448947354031.jpg', 0, 0, '2020-08-14 21:30:31.178158', 36),
	(17, '', '53度茅台仁酒500ml', 0, 0, 0, 100, 190, 158, '', '<p><img src="/media/goods/images/2_20170719161405_249.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161414_628.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161435_381.jpg" title="" alt="2.jpg"/></p>', 1, 'goods/images/12_P_1448947547989.jpg', 1, 0, '2020-08-14 21:30:31.612241', 32),
	(18, '', '双响炮洋酒JimBeamwhiskey美国白占边', 0, 0, 0, 100, 38, 28, '', '<p><img src="/media/goods/images/2_20170719161405_249.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161414_628.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161435_381.jpg" title="" alt="2.jpg"/></p>', 1, 'goods/images/46_P_1448946598711.jpg', 0, 0, '2020-08-14 21:30:32.061139', 29),
	(19, '', '西夫拉姆进口洋酒小酒版', 0, 0, 0, 100, 55, 46, '', '<p><img src="/media/goods/images/2_20170719161405_249.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161414_628.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161435_381.jpg" title="" alt="2.jpg"/></p>', 1, 'goods/images/21_P_1448946793276.jpg', 0, 0, '2020-08-14 21:30:32.538138', 36),
	(20, '', '茅台53度飞天茅台500ml', 0, 0, 0, 100, 22, 18, '', '<p><img src="/media/goods/images/2_20170719161405_249.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161414_628.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161435_381.jpg" title="" alt="2.jpg"/></p>', 1, 'goods/images/15_P_1448947257324.jpg', 0, 0, '2020-08-14 21:30:32.853257', 30),
	(21, '', '52度兰陵·紫气东来1600mL山东名酒', 0, 0, 0, 100, 42, 35, '', '<p><img src="/media/goods/images/2_20170719161405_249.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161414_628.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161435_381.jpg" title="" alt="2.jpg"/></p>', 1, 'goods/images/13_P_1448947460386.jpg', 0, 0, '2020-08-14 21:30:33.168233', 29),
	(22, '', 'JohnnieWalker尊尼获加黑牌威士忌', 0, 0, 0, 100, 24, 20, '', '<p><img src="/media/goods/images/2_20170719161405_249.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161414_628.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161435_381.jpg" title="" alt="2.jpg"/></p>', 1, 'goods/images/50_P_1448946543091.jpg', 0, 0, '2020-08-14 21:30:33.654141', 36),
	(23, '', '人头马CLUB特优香槟干邑350ml', 0, 0, 0, 100, 31, 26, '', '<p><img src="/media/goods/images/2_20170719161405_249.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161414_628.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161435_381.jpg" title="" alt="2.jpg"/></p>', 1, 'goods/images/51_P_1448946466595.jpg', 1, 0, '2020-08-14 21:30:34.053140', 30),
	(24, '', '张裕干红葡萄酒750ml*6支', 0, 0, 0, 100, 54, 45, '', '<p><img src="/media/goods/images/2_20170719161405_249.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161414_628.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161435_381.jpg" title="" alt="2.jpg"/></p>', 1, 'goods/images/17_P_1448947102246.jpg', 0, 0, '2020-08-14 21:30:34.392233', 31),
	(25, '', '原瓶原装进口洋酒烈酒法国云鹿XO白兰地', 0, 0, 0, 100, 46, 38, '', '<p><img src="/media/goods/images/2_20170719161405_249.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161414_628.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161435_381.jpg" title="" alt="2.jpg"/></p>', 1, 'goods/images/20_P_1448946850602.jpg', 0, 0, '2020-08-14 21:30:34.674148', 29),
	(26, '', '法国原装进口圣贝克干红葡萄酒750ml', 0, 0, 0, 100, 82, 68, '', '<p><img src="/media/goods/images/2_20170719161405_249.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161414_628.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161435_381.jpg" title="" alt="2.jpg"/></p>', 1, 'goods/images/19_P_1448946951581.jpg', 0, 0, '2020-08-14 21:30:34.913257', 25),
	(27, '', '法国百利威干红葡萄酒AOP级6支装', 0, 0, 0, 100, 67, 56, '', '<p><img src="/media/goods/images/2_20170719161405_249.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161414_628.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161435_381.jpg" title="" alt="2.jpg"/></p>', 1, 'goods/images/18_P_1448947011435.jpg', 0, 0, '2020-08-14 21:30:35.254301', 25),
	(28, '', '芝华士12年苏格兰威士忌700ml', 0, 0, 0, 100, 71, 59, '', '<p><img src="/media/goods/images/2_20170719161405_249.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161414_628.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161435_381.jpg" title="" alt="2.jpg"/></p>', 1, 'goods/images/22_P_1448946729629.jpg', 0, 0, '2020-08-14 21:30:35.511359', 30),
	(29, '', '深蓝伏特加巴维兰利口酒送预调酒', 0, 0, 0, 100, 31, 18, '', '<p><img src="/media/goods/images/2_20170719161405_249.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161414_628.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161435_381.jpg" title="" alt="2.jpg"/></p>', 1, 'goods/images/45_P_1448946661303.jpg', 0, 0, '2020-08-14 21:30:35.728457', 36),
	(30, '', '赣南脐橙特级果10斤装', 0, 0, 0, 100, 43, 36, '', '<p><img src="/media/goods/images/2_20170719161405_249.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161414_628.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161435_381.jpg" title="" alt="2.jpg"/></p>', 1, 'goods/images/32_P_1448948525620.jpg', 0, 0, '2020-08-14 21:30:36.111058', 62),
	(31, '', '泰国菠萝蜜16-18斤1个装', 0, 0, 0, 100, 11, 9, '【懒人吃法】菠萝蜜果肉，冰袋保鲜，收货就吃，冰爽Q脆甜，2斤装，全国顺丰空运包邮，发出后48小时内可达，一线城市基本隔天可达', '<p><img src="/media/goods/images/2_20170719161405_249.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161414_628.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161435_381.jpg" title="" alt="2.jpg"/></p>', 1, 'goods/images/30_P_1448948663450.jpg', 0, 0, '2020-08-14 21:30:36.595055', 66),
	(32, '', '四川双流草莓新鲜水果礼盒2盒', 0, 0, 0, 100, 22, 18, '', '<p><img src="/media/goods/images/2_20170719161405_249.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161414_628.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161435_381.jpg" title="" alt="2.jpg"/></p>', 1, 'goods/images/31_P_1448948598947.jpg', 0, 0, '2020-08-14 21:30:37.096907', 70),
	(33, '', '新鲜头茬非洲冰草冰菜', 0, 0, 0, 100, 67, 56, '', '<p><img src="/media/goods/images/2_20170719161405_249.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161414_628.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161435_381.jpg" title="" alt="2.jpg"/></p>', 1, 'goods/images/35_P_1448948333610.jpg', 0, 0, '2020-08-14 21:30:37.544765', 58),
	(34, '', '仿真蔬菜水果果蔬菜模型', 0, 0, 0, 100, 6, 5, '', '<p><img src="/media/goods/images/2_20170719161405_249.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161414_628.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161435_381.jpg" title="" alt="2.jpg"/></p>', 1, 'goods/images/36_P_1448948234405.jpg', 0, 0, '2020-08-14 21:30:37.942769', 58),
	(35, '', '现摘芭乐番石榴台湾珍珠芭乐', 0, 0, 0, 100, 28, 23, '海南产精品释迦果,\n        释迦是水果中的贵族,\n        产量少,\n        味道很甜,\n        奶香十足,\n        非常可口,\n        果裹果园顺丰空运,\n        保证新鲜.果子个大,\n        一斤1-2个左右,\n        大个头的果子更尽兴!\n        ', '<p><img src="/media/goods/images/2_20170719161405_249.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161414_628.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161435_381.jpg" title="" alt="2.jpg"/></p>', 1, 'goods/images/33_P_1448948479966.jpg', 0, 0, '2020-08-14 21:30:38.308014', 62),
	(36, '', '潍坊萝卜5斤/箱礼盒', 0, 0, 0, 100, 46, 38, '脐橙规格是65-90MM左右（标准果果径平均70MM左右，精品果果径平均80MM左右），一斤大概有2-4个左右，脐橙产自江西省赣州市信丰县安西镇，全过程都是采用农家有机肥种植，生态天然', '<p><img src="/media/goods/images/2_20170719161405_249.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161414_628.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161435_381.jpg" title="" alt="2.jpg"/></p>', 1, 'goods/images/34_P_1448948399009.jpg', 0, 0, '2020-08-14 21:30:38.617215', 70),
	(37, '', '休闲零食膨化食品焦糖/奶油/椒麻味', 0, 0, 0, 100, 154, 99, '', '<p><img src="/media/goods/images/2_20170719161405_249.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161414_628.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161435_381.jpg" title="" alt="2.jpg"/></p>', 1, 'goods/images/43_P_1448948762645.jpg', 0, 0, '2020-08-14 21:30:38.872191', 74),
	(38, '', '蒙牛未来星儿童成长牛奶骨力型190ml*15盒', 0, 0, 0, 100, 84, 70, '', '<p><img src="/media/goods/images/2_20170719161405_249.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161414_628.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161435_381.jpg" title="" alt="2.jpg"/></p>', 1, 'goods/images/38_P_1448949220255.jpg', 0, 0, '2020-08-14 21:30:39.205195', 105),
	(39, '', '蒙牛特仑苏有机奶250ml×12盒', 0, 0, 0, 100, 70, 32, '', '<p><img src="/media/goods/images/2_20170719161405_249.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161414_628.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161435_381.jpg" title="" alt="2.jpg"/></p>', 1, 'goods/images/44_P_1448948850187.jpg', 0, 0, '2020-08-14 21:30:39.457179', 103),
	(40, '', '1元支付测试商品', 0, 0, 0, 100, 1, 1, '', '<p><img src="/media/goods/images/2_20170719161405_249.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161414_628.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161435_381.jpg" title="" alt="2.jpg"/></p>', 1, 'images/201511/goods_img/49_P_1448162819889.jpg', 0, 0, '2020-08-14 21:30:39.826466', 102),
	(41, '', '德运全脂新鲜纯牛奶1L*10盒装整箱', 0, 0, 0, 100, 70, 58, '', '<p><img src="/media/goods/images/2_20170719161405_249.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161414_628.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161435_381.jpg" title="" alt="2.jpg"/></p>', 1, 'goods/images/40_P_1448949038702.jpg', 0, 0, '2020-08-14 21:30:40.112449', 103),
	(42, '', '木糖醇红枣早餐奶即食豆奶粉538g', 0, 0, 0, 100, 38, 32, '', '<p><img src="/media/goods/images/2_20170719161405_249.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161414_628.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161435_381.jpg" title="" alt="2.jpg"/></p>', 1, 'goods/images/39_P_1448949115481.jpg', 0, 0, '2020-08-14 21:30:40.424429', 106),
	(43, '', '高钙液体奶200ml*24盒', 0, 0, 0, 100, 26, 22, '', '<p><img src="/media/goods/images/2_20170719161405_249.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161414_628.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161435_381.jpg" title="" alt="2.jpg"/></p>', 1, 'goods/images/41_P_1448948980358.jpg', 0, 0, '2020-08-14 21:30:40.778446', 107),
	(44, '', '新西兰进口全脂奶粉900g', 0, 0, 0, 100, 720, 600, '', '<p><img src="/media/goods/images/2_20170719161405_249.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161414_628.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161435_381.jpg" title="" alt="2.jpg"/></p>', 1, 'goods/images/37_P_1448949284365.jpg', 0, 0, '2020-08-14 21:30:41.192446', 104),
	(45, '', '伊利官方直营全脂营养舒化奶250ml*12盒*2提', 0, 0, 0, 100, 43, 36, '', '<p><img src="/media/goods/images/2_20170719161405_249.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161414_628.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161435_381.jpg" title="" alt="2.jpg"/></p>', 1, 'goods/images/42_P_1448948895193.jpg', 0, 0, '2020-08-14 21:30:41.512467', 103),
	(46, '', '维纳斯橄榄菜籽油5L/桶', 0, 0, 0, 100, 187, 156, '', '<p><img src="/media/goods/images/2_20170719161405_249.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161414_628.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161435_381.jpg" title="" alt="2.jpg"/></p>', 1, 'goods/images/27_P_1448947771805.jpg', 0, 0, '2020-08-14 21:30:41.831450', 51),
	(47, '', '糙米450gx3包粮油米面', 0, 0, 0, 100, 18, 15, '', '<p><img src="/media/goods/images/2_20170719161405_249.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161414_628.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161435_381.jpg" title="" alt="2.jpg"/></p>', 1, 'goods/images/23_P_1448948070348.jpg', 0, 0, '2020-08-14 21:30:42.138449', 41),
	(48, '', '精炼一级大豆油5L色拉油粮油食用油', 0, 0, 0, 100, 54, 45, '', '<p><img src="/media/goods/images/2_20170719161405_249.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161414_628.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161435_381.jpg" title="" alt="2.jpg"/></p>', 1, 'goods/images/26_P_1448947825754.jpg', 0, 0, '2020-08-14 21:30:42.446463', 56),
	(49, '', '橄榄玉米油5L*2桶', 0, 0, 0, 100, 31, 26, '', '<p><img src="/media/goods/images/2_20170719161405_249.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161414_628.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161435_381.jpg" title="" alt="2.jpg"/></p>', 1, 'goods/images/28_P_1448947699948.jpg', 0, 0, '2020-08-14 21:30:42.800424', 54),
	(50, '', '山西黑米农家黑米4斤', 0, 0, 0, 100, 11, 9, '', '<p><img src="/media/goods/images/2_20170719161405_249.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161414_628.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161435_381.jpg" title="" alt="2.jpg"/></p>', 1, 'goods/images/24_P_1448948023823.jpg', 0, 0, '2020-08-14 21:30:43.196447', 55),
	(51, '', '稻园牌稻米油粮油米糠油绿色植物油', 0, 0, 0, 100, 14, 12, '', '<p><img src="/media/goods/images/2_20170719161405_249.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161414_628.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161435_381.jpg" title="" alt="2.jpg"/></p>', 1, 'goods/images/25_P_1448947875346.jpg', 0, 0, '2020-08-14 21:30:43.593446', 47),
	(52, '', '融氏纯玉米胚芽油5l桶', 0, 0, 0, 100, 14, 12, '', '<p><img src="/media/goods/images/2_20170719161405_249.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161414_628.jpg" title="" alt="2.jpg"/></p><p><img src="/media/goods/images/2_20170719161435_381.jpg" title="" alt="2.jpg"/></p>', 1, 'goods/images/29_P_1448947631994.jpg', 0, 0, '2020-08-14 21:30:43.937448', 41);
/*!40000 ALTER TABLE `goods_goods` ENABLE KEYS */;

-- 正在导出表  onlinestore.goods_goodsbrand 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `goods_goodsbrand` DISABLE KEYS */;
/*!40000 ALTER TABLE `goods_goodsbrand` ENABLE KEYS */;

-- 正在导出表  onlinestore.goods_goodscategory 的数据：~120 rows (大约)
/*!40000 ALTER TABLE `goods_goodscategory` DISABLE KEYS */;
INSERT INTO `goods_goodscategory` (`id`, `name`, `code`, `category_type`, `desc`, `is_tab`, `add_time`, `parent_category_id`) VALUES
	(1, '生鲜食品', 'sxsp', '1', '', 1, '2020-08-14 21:29:58.132653', NULL),
	(2, '精品肉类', 'jprl', '2', '', 0, '2020-08-14 21:29:58.384656', 1),
	(3, '羊肉', 'yr', '3', '', 0, '2020-08-14 21:29:58.550699', 2),
	(4, '禽类', 'ql', '3', '', 0, '2020-08-14 21:29:58.623626', 2),
	(5, '猪肉', 'zr', '3', '', 0, '2020-08-14 21:29:58.691769', 2),
	(6, '牛肉', 'nr', '3', '', 0, '2020-08-14 21:29:58.773628', 2),
	(7, '海鲜水产', 'hxsc', '2', '', 0, '2020-08-14 21:29:58.860627', 1),
	(8, '参鲍', 'cb', '3', '', 0, '2020-08-14 21:29:58.968715', 7),
	(9, '鱼', 'yu', '3', '', 0, '2020-08-14 21:29:59.028653', 7),
	(10, '虾', 'xia', '3', '', 0, '2020-08-14 21:29:59.088701', 7),
	(11, '蟹/贝', 'xb', '3', '', 0, '2020-08-14 21:29:59.191627', 7),
	(12, '蛋制品', 'dzp', '2', '', 0, '2020-08-14 21:29:59.251774', 1),
	(13, '松花蛋/咸鸭蛋', 'xhd_xyd', '3', '', 0, '2020-08-14 21:29:59.329629', 12),
	(14, '鸡蛋', 'jd', '3', '', 0, '2020-08-14 21:29:59.416627', 12),
	(15, '叶菜类', 'ycl', '2', '', 0, '2020-08-14 21:29:59.529628', 1),
	(16, '生菜', 'sc', '3', '', 0, '2020-08-14 21:29:59.611609', 15),
	(17, '菠菜', 'bc', '3', '', 0, '2020-08-14 21:29:59.749630', 15),
	(18, '圆椒', 'yj', '3', '', 0, '2020-08-14 21:29:59.943651', 15),
	(19, '西兰花', 'xlh', '3', '', 0, '2020-08-14 21:30:00.211627', 15),
	(20, '根茎类', 'gjl', '2', '', 0, '2020-08-14 21:30:00.310652', 1),
	(21, '茄果类', 'qgl', '2', '', 0, '2020-08-14 21:30:00.380627', 1),
	(22, '菌菇类', 'jgl', '2', '', 0, '2020-08-14 21:30:00.452625', 1),
	(23, '进口生鲜', 'jksx', '2', '', 0, '2020-08-14 21:30:00.539654', 1),
	(24, '酒水饮料', 'jsyl', '1', '', 1, '2020-08-14 21:30:00.621663', NULL),
	(25, '白酒', 'bk', '2', '', 0, '2020-08-14 21:30:00.710771', 24),
	(26, '五粮液', 'wly', '3', '', 0, '2020-08-14 21:30:00.781631', 25),
	(27, '泸州老窖', 'lzlj', '3', '', 0, '2020-08-14 21:30:00.876602', 25),
	(28, '茅台', 'mt', '3', '', 0, '2020-08-14 21:30:00.982628', 25),
	(29, '葡萄酒', 'ptj', '2', '', 0, '2020-08-14 21:30:01.046628', 24),
	(30, '洋酒', 'yj', '2', '', 0, '2020-08-14 21:30:01.132659', 24),
	(31, '啤酒', 'pj', '2', '', 0, '2020-08-14 21:30:01.241634', 24),
	(32, '其他酒品', 'qtjp', '2', '', 0, '2020-08-14 21:30:01.336653', 24),
	(33, '其他品牌', 'qtpp', '3', '', 0, '2020-08-14 21:30:01.427627', 32),
	(34, '黄酒', 'hj', '3', '', 0, '2020-08-14 21:30:01.555631', 32),
	(35, '养生酒', 'ysj', '3', '', 0, '2020-08-14 21:30:01.619653', 32),
	(36, '饮料/水', 'yls', '2', '', 0, '2020-08-14 21:30:01.713629', 24),
	(37, '红酒', 'hj', '2', '', 0, '2020-08-14 21:30:01.819767', 24),
	(38, '白兰地', 'bld', '3', '', 0, '2020-08-14 21:30:01.901642', 37),
	(39, '威士忌', 'wsj', '3', '', 0, '2020-08-14 21:30:01.974630', 37),
	(40, '粮油副食', '粮油副食', '1', '', 1, '2020-08-14 21:30:02.093627', NULL),
	(41, '食用油', '食用油', '2', '', 0, '2020-08-14 21:30:02.187628', 40),
	(42, '其他食用油', '其他食用油', '3', '', 0, '2020-08-14 21:30:02.274766', 41),
	(43, '菜仔油', '菜仔油', '3', '', 0, '2020-08-14 21:30:02.361602', 41),
	(44, '花生油', '花生油', '3', '', 0, '2020-08-14 21:30:02.479629', 41),
	(45, '橄榄油', '橄榄油', '3', '', 0, '2020-08-14 21:30:02.658743', 41),
	(46, '礼盒', '礼盒', '3', '', 0, '2020-08-14 21:30:02.749662', 41),
	(47, '米面杂粮', '米面杂粮', '2', '', 0, '2020-08-14 21:30:02.846655', 40),
	(48, '面粉/面条', '面粉/面条', '3', '', 0, '2020-08-14 21:30:02.943669', 47),
	(49, '大米', '大米', '3', '', 0, '2020-08-14 21:30:03.020657', 47),
	(50, '意大利面', '意大利面', '3', '', 0, '2020-08-14 21:30:03.187629', 47),
	(51, '厨房调料', '厨房调料', '2', '', 0, '2020-08-14 21:30:03.278657', 40),
	(52, '调味油/汁', '调味油/汁', '3', '', 0, '2020-08-14 21:30:03.473775', 51),
	(53, '酱油/醋', '酱油/醋', '3', '', 0, '2020-08-14 21:30:03.558743', 51),
	(54, '南北干货', '南北干货', '2', '', 0, '2020-08-14 21:30:03.693654', 40),
	(55, '方便速食', '方便速食', '2', '', 0, '2020-08-14 21:30:03.872633', 40),
	(56, '调味品', '调味品', '2', '', 0, '2020-08-14 21:30:03.980631', 40),
	(57, '蔬菜水果', '蔬菜水果', '1', '', 1, '2020-08-14 21:30:04.108747', NULL),
	(58, '有机蔬菜', '有机蔬菜', '2', '', 0, '2020-08-14 21:30:04.177772', 57),
	(59, '西红柿', '西红柿', '3', '', 0, '2020-08-14 21:30:04.314630', 58),
	(60, '韭菜', '韭菜', '3', '', 0, '2020-08-14 21:30:04.375627', 58),
	(61, '青菜', '青菜', '3', '', 0, '2020-08-14 21:30:04.455628', 58),
	(62, '精选蔬菜', '精选蔬菜', '2', '', 0, '2020-08-14 21:30:04.537637', 57),
	(63, '甘蓝', '甘蓝', '3', '', 0, '2020-08-14 21:30:04.796664', 62),
	(64, '胡萝卜', '胡萝卜', '3', '', 0, '2020-08-14 21:30:04.971628', 62),
	(65, '黄瓜', '黄瓜', '3', '', 0, '2020-08-14 21:30:05.048741', 62),
	(66, '进口水果', '进口水果', '2', '', 0, '2020-08-14 21:30:05.186645', 57),
	(67, '火龙果', '火龙果', '3', '', 0, '2020-08-14 21:30:05.312627', 66),
	(68, '菠萝蜜', '菠萝蜜', '3', '', 0, '2020-08-14 21:30:05.392654', 66),
	(69, '奇异果', '奇异果', '3', '', 0, '2020-08-14 21:30:05.469630', 66),
	(70, '国产水果', '国产水果', '2', '', 0, '2020-08-14 21:30:05.577654', 57),
	(71, '水果礼盒', '水果礼盒', '3', '', 0, '2020-08-14 21:30:05.713651', 70),
	(72, '苹果', '苹果', '3', '', 0, '2020-08-14 21:30:05.845628', 70),
	(73, '雪梨', '雪梨', '3', '', 0, '2020-08-14 21:30:05.995657', 70),
	(74, '休闲食品', '休闲食品', '1', '', 0, '2020-08-14 21:30:06.075631', NULL),
	(75, '休闲零食', '休闲零食', '2', '', 0, '2020-08-14 21:30:06.252630', 74),
	(76, '果冻', '果冻', '3', '', 0, '2020-08-14 21:30:06.468627', 75),
	(77, '枣类', '枣类', '3', '', 0, '2020-08-14 21:30:06.529653', 75),
	(78, '蜜饯', '蜜饯', '3', '', 0, '2020-08-14 21:30:06.624627', 75),
	(79, '肉类零食', '肉类零食', '3', '', 0, '2020-08-14 21:30:06.694982', 75),
	(80, '坚果炒货', '坚果炒货', '3', '', 0, '2020-08-14 21:30:06.774933', 75),
	(81, '糖果', '糖果', '2', '', 0, '2020-08-14 21:30:06.855932', 74),
	(82, '创意喜糖', '创意喜糖', '3', '', 0, '2020-08-14 21:30:06.983933', 81),
	(83, '口香糖', '口香糖', '3', '', 0, '2020-08-14 21:30:07.059909', 81),
	(84, '软糖', '软糖', '3', '', 0, '2020-08-14 21:30:07.161932', 81),
	(85, '棒棒糖', '棒棒糖', '3', '', 0, '2020-08-14 21:30:07.284929', 81),
	(86, '巧克力', '巧克力', '2', '', 0, '2020-08-14 21:30:07.427905', 74),
	(87, '夹心巧克力', '夹心巧克力', '3', '', 0, '2020-08-14 21:30:07.555927', 86),
	(88, '白巧克力', '白巧克力', '3', '', 0, '2020-08-14 21:30:07.689061', 86),
	(89, '松露巧克力', '松露巧克力', '3', '', 0, '2020-08-14 21:30:07.783911', 86),
	(90, '黑巧克力', '黑巧克力', '3', '', 0, '2020-08-14 21:30:07.854963', 86),
	(91, '肉干肉脯/豆干', '肉干肉脯/豆干', '2', '', 0, '2020-08-14 21:30:07.989932', 74),
	(92, '牛肉干', '牛肉干', '3', '', 0, '2020-08-14 21:30:08.119978', 91),
	(93, '猪肉脯', '猪肉脯', '3', '', 0, '2020-08-14 21:30:08.329012', 91),
	(94, '牛肉粒', '牛肉粒', '3', '', 0, '2020-08-14 21:30:08.562925', 91),
	(95, '猪肉干', '猪肉干', '3', '', 0, '2020-08-14 21:30:08.659045', 91),
	(96, '鱿鱼丝/鱼干', '鱿鱼丝/鱼干', '2', '', 0, '2020-08-14 21:30:08.770930', 74),
	(97, '鱿鱼足', '鱿鱼足', '3', '', 0, '2020-08-14 21:30:08.892956', 96),
	(98, '鱿鱼丝', '鱿鱼丝', '3', '', 0, '2020-08-14 21:30:09.029953', 96),
	(99, '墨鱼/乌贼', '墨鱼/乌贼', '3', '', 0, '2020-08-14 21:30:09.175215', 96),
	(100, '鱿鱼仔', '鱿鱼仔', '3', '', 0, '2020-08-14 21:30:09.258279', 96),
	(101, '鱿鱼片', '鱿鱼片', '3', '', 0, '2020-08-14 21:30:09.357215', 96),
	(102, '奶类食品', '奶类食品', '1', '', 1, '2020-08-14 21:30:09.517259', NULL),
	(103, '进口奶品', '进口奶品', '2', '', 0, '2020-08-14 21:30:09.624186', 102),
	(104, '国产奶品', '国产奶品', '2', '', 0, '2020-08-14 21:30:09.767194', 102),
	(105, '奶粉', '奶粉', '2', '', 0, '2020-08-14 21:30:09.861192', 102),
	(106, '有机奶', '有机奶', '2', '', 0, '2020-08-14 21:30:09.935190', 102),
	(107, '原料奶', '原料奶', '2', '', 0, '2020-08-14 21:30:10.007285', 102),
	(108, '天然干货', '天然干货', '1', '', 0, '2020-08-14 21:30:10.192188', NULL),
	(109, '菌菇类', '菌菇类', '2', '', 0, '2020-08-14 21:30:10.294216', 108),
	(110, '腌干海产', '腌干海产', '2', '', 0, '2020-08-14 21:30:10.401188', 108),
	(111, '汤料', '汤料', '2', '', 0, '2020-08-14 21:30:10.592182', 108),
	(112, '豆类', '豆类', '2', '', 0, '2020-08-14 21:30:10.661191', 108),
	(113, '干菜/菜干', '干菜/菜干', '2', '', 0, '2020-08-14 21:30:10.803162', 108),
	(114, '干果/果干', '干果/果干', '2', '', 0, '2020-08-14 21:30:10.890165', 108),
	(115, '豆制品', '豆制品', '2', '', 0, '2020-08-14 21:30:11.047214', 108),
	(116, '腊味', '腊味', '2', '', 0, '2020-08-14 21:30:11.141279', 108),
	(117, '精选茗茶', '精选茗茶', '1', '', 1, '2020-08-14 21:30:11.207452', NULL),
	(118, '白茶', '白茶', '2', '', 0, '2020-08-14 21:30:11.315453', 117),
	(119, '红茶', '红茶', '2', '', 0, '2020-08-14 21:30:11.438663', 117),
	(120, '绿茶', '绿茶', '2', '', 0, '2020-08-14 21:30:11.526748', 117);
/*!40000 ALTER TABLE `goods_goodscategory` ENABLE KEYS */;

-- 正在导出表  onlinestore.goods_goodsimage 的数据：~91 rows (大约)
/*!40000 ALTER TABLE `goods_goodsimage` DISABLE KEYS */;
INSERT INTO `goods_goodsimage` (`id`, `image`, `add_time`, `goods_id`) VALUES
	(1, 'goods/images/1_P_1449024889889.jpg', '2020-08-14 21:30:23.769890', 1),
	(2, 'goods/images/1_P_1449024889264.jpg', '2020-08-14 21:30:23.852863', 1),
	(3, 'goods/images/1_P_1449024889726.jpg', '2020-08-14 21:30:24.016913', 1),
	(4, 'goods/images/1_P_1449024889018.jpg', '2020-08-14 21:30:24.092889', 1),
	(5, 'goods/images/1_P_1449024889287.jpg', '2020-08-14 21:30:24.171888', 1),
	(6, 'goods/images/2_P_1448945810202.jpg', '2020-08-14 21:30:24.582886', 2),
	(7, 'goods/images/2_P_1448945810814.jpg', '2020-08-14 21:30:24.672891', 2),
	(8, 'goods/images/7_P_1448945104883.jpg', '2020-08-14 21:30:25.021894', 3),
	(9, 'goods/images/7_P_1448945104734.jpg', '2020-08-14 21:30:25.096923', 3),
	(10, 'goods/images/47_P_1448946213263.jpg', '2020-08-14 21:30:25.419891', 4),
	(11, 'goods/images/47_P_1448946213157.jpg', '2020-08-14 21:30:25.586888', 4),
	(12, 'goods/images/10_P_1448944572085.jpg', '2020-08-14 21:30:25.902866', 5),
	(13, 'goods/images/10_P_1448944572532.jpg', '2020-08-14 21:30:26.023888', 5),
	(14, 'goods/images/10_P_1448944572872.jpg', '2020-08-14 21:30:26.194890', 5),
	(15, 'goods/images/4_P_1448945381985.jpg', '2020-08-14 21:30:26.526892', 6),
	(16, 'goods/images/4_P_1448945381013.jpg', '2020-08-14 21:30:26.587990', 6),
	(17, 'goods/images/8_P_1448945032810.jpg', '2020-08-14 21:30:26.978889', 7),
	(18, 'goods/images/8_P_1448945032646.jpg', '2020-08-14 21:30:27.052910', 7),
	(19, 'goods/images/11_P_1448944388277.jpg', '2020-08-14 21:30:27.375891', 8),
	(20, 'goods/images/11_P_1448944388034.jpg', '2020-08-14 21:30:27.472888', 8),
	(21, 'goods/images/11_P_1448944388201.jpg', '2020-08-14 21:30:27.588893', 8),
	(22, 'goods/images/6_P_1448945167279.jpg', '2020-08-14 21:30:27.984887', 9),
	(23, 'goods/images/6_P_1448945167015.jpg', '2020-08-14 21:30:28.190972', 9),
	(24, 'goods/images/9_P_1448944791617.jpg', '2020-08-14 21:30:28.613892', 10),
	(25, 'goods/images/9_P_1448944791129.jpg', '2020-08-14 21:30:28.713869', 10),
	(26, 'goods/images/9_P_1448944791077.jpg', '2020-08-14 21:30:28.778888', 10),
	(27, 'goods/images/9_P_1448944791229.jpg', '2020-08-14 21:30:28.929887', 10),
	(28, 'goods/images/3_P_1448945490837.jpg', '2020-08-14 21:30:29.274264', 11),
	(29, 'goods/images/3_P_1448945490084.jpg', '2020-08-14 21:30:29.410141', 11),
	(30, 'goods/images/48_P_1448943988970.jpg', '2020-08-14 21:30:29.787142', 12),
	(31, 'goods/images/48_P_1448943988898.jpg', '2020-08-14 21:30:29.898261', 12),
	(32, 'goods/images/48_P_1448943988439.jpg', '2020-08-14 21:30:29.984139', 12),
	(33, 'goods/images/5_P_1448945270390.jpg', '2020-08-14 21:30:30.313137', 13),
	(34, 'goods/images/5_P_1448945270067.jpg', '2020-08-14 21:30:30.378167', 13),
	(35, 'goods/images/5_P_1448945270432.jpg', '2020-08-14 21:30:30.474137', 13),
	(36, 'images/201705/goods_img/53_P_1495068879687.jpg', '2020-08-14 21:30:30.749140', 14),
	(37, 'goods/images/16_P_1448947194687.jpg', '2020-08-14 21:30:31.023213', 15),
	(38, 'goods/images/14_P_1448947354031.jpg', '2020-08-14 21:30:31.357162', 16),
	(39, 'goods/images/14_P_1448947354433.jpg', '2020-08-14 21:30:31.428221', 16),
	(40, 'goods/images/12_P_1448947547989.jpg', '2020-08-14 21:30:31.821148', 17),
	(41, 'goods/images/46_P_1448946598711.jpg', '2020-08-14 21:30:32.165142', 18),
	(42, 'goods/images/46_P_1448946598301.jpg', '2020-08-14 21:30:32.232142', 18),
	(43, 'goods/images/21_P_1448946793276.jpg', '2020-08-14 21:30:32.618156', 19),
	(44, 'goods/images/21_P_1448946793153.jpg', '2020-08-14 21:30:32.685140', 19),
	(45, 'goods/images/15_P_1448947257324.jpg', '2020-08-14 21:30:32.941144', 20),
	(46, 'goods/images/15_P_1448947257580.jpg', '2020-08-14 21:30:33.010138', 20),
	(47, 'goods/images/13_P_1448947460386.jpg', '2020-08-14 21:30:33.275142', 21),
	(48, 'goods/images/13_P_1448947460276.jpg', '2020-08-14 21:30:33.354145', 21),
	(49, 'goods/images/13_P_1448947460353.jpg', '2020-08-14 21:30:33.428253', 21),
	(50, 'goods/images/50_P_1448946543091.jpg', '2020-08-14 21:30:33.797241', 22),
	(51, 'goods/images/50_P_1448946542182.jpg', '2020-08-14 21:30:33.880232', 22),
	(52, 'goods/images/51_P_1448946466595.jpg', '2020-08-14 21:30:34.131141', 23),
	(53, 'goods/images/51_P_1448946466208.jpg', '2020-08-14 21:30:34.205120', 23),
	(54, 'goods/images/17_P_1448947102246.jpg', '2020-08-14 21:30:34.520133', 24),
	(55, 'goods/images/20_P_1448946850602.jpg', '2020-08-14 21:30:34.750137', 25),
	(56, 'goods/images/19_P_1448946951581.jpg', '2020-08-14 21:30:34.997142', 26),
	(57, 'goods/images/19_P_1448946951726.jpg', '2020-08-14 21:30:35.091342', 26),
	(58, 'goods/images/18_P_1448947011435.jpg', '2020-08-14 21:30:35.334329', 27),
	(59, 'goods/images/22_P_1448946729629.jpg', '2020-08-14 21:30:35.591329', 28),
	(60, 'goods/images/45_P_1448946661303.jpg', '2020-08-14 21:30:35.880882', 29),
	(61, 'goods/images/32_P_1448948525620.jpg', '2020-08-14 21:30:36.208959', 30),
	(62, 'goods/images/30_P_1448948663450.jpg', '2020-08-14 21:30:36.701199', 31),
	(63, 'goods/images/30_P_1448948662571.jpg', '2020-08-14 21:30:36.829456', 31),
	(64, 'goods/images/30_P_1448948663221.jpg', '2020-08-14 21:30:36.915338', 31),
	(65, 'goods/images/31_P_1448948598947.jpg', '2020-08-14 21:30:37.176794', 32),
	(66, 'goods/images/31_P_1448948598475.jpg', '2020-08-14 21:30:37.256741', 32),
	(67, 'goods/images/35_P_1448948333610.jpg', '2020-08-14 21:30:37.637907', 33),
	(68, 'goods/images/35_P_1448948333313.jpg', '2020-08-14 21:30:37.768815', 33),
	(69, 'goods/images/36_P_1448948234405.jpg', '2020-08-14 21:30:38.046774', 34),
	(70, 'goods/images/36_P_1448948234250.jpg', '2020-08-14 21:30:38.151940', 34),
	(71, 'goods/images/33_P_1448948479966.jpg', '2020-08-14 21:30:38.386914', 35),
	(72, 'goods/images/33_P_1448948479886.jpg', '2020-08-14 21:30:38.455964', 35),
	(73, 'goods/images/34_P_1448948399009.jpg', '2020-08-14 21:30:38.701187', 36),
	(74, 'goods/images/43_P_1448948762645.jpg', '2020-08-14 21:30:39.010279', 37),
	(75, 'goods/images/38_P_1448949220255.jpg', '2020-08-14 21:30:39.299295', 38),
	(76, 'goods/images/44_P_1448948850187.jpg', '2020-08-14 21:30:39.590448', 39),
	(77, 'images/201511/goods_img/49_P_1448162819889.jpg', '2020-08-14 21:30:39.907424', 40),
	(78, 'goods/images/40_P_1448949038702.jpg', '2020-08-14 21:30:40.221452', 41),
	(79, 'goods/images/39_P_1448949115481.jpg', '2020-08-14 21:30:40.595421', 42),
	(80, 'goods/images/41_P_1448948980358.jpg', '2020-08-14 21:30:40.884447', 43),
	(81, 'goods/images/37_P_1448949284365.jpg', '2020-08-14 21:30:41.272449', 44),
	(82, 'goods/images/42_P_1448948895193.jpg', '2020-08-14 21:30:41.632436', 45),
	(83, 'goods/images/27_P_1448947771805.jpg', '2020-08-14 21:30:41.992447', 46),
	(84, 'goods/images/23_P_1448948070348.jpg', '2020-08-14 21:30:42.219447', 47),
	(85, 'goods/images/26_P_1448947825754.jpg', '2020-08-14 21:30:42.555468', 48),
	(86, 'goods/images/28_P_1448947699948.jpg', '2020-08-14 21:30:42.892462', 49),
	(87, 'goods/images/28_P_1448947699777.jpg', '2020-08-14 21:30:42.993552', 49),
	(88, 'goods/images/24_P_1448948023823.jpg', '2020-08-14 21:30:43.296447', 50),
	(89, 'goods/images/24_P_1448948023977.jpg', '2020-08-14 21:30:43.387446', 50),
	(90, 'goods/images/25_P_1448947875346.jpg', '2020-08-14 21:30:43.700446', 51),
	(91, 'goods/images/29_P_1448947631994.jpg', '2020-08-14 21:30:44.072446', 52);
/*!40000 ALTER TABLE `goods_goodsimage` ENABLE KEYS */;

-- 正在导出表  onlinestore.goods_hotsearchwords 的数据：~5 rows (大约)
/*!40000 ALTER TABLE `goods_hotsearchwords` DISABLE KEYS */;
INSERT INTO `goods_hotsearchwords` (`id`, `keywords`, `index`, `add_time`) VALUES
	(1, '葡萄酒', 1, '2020-08-14 22:26:17.000000'),
	(2, '牛肉', 2, '2020-08-14 22:26:29.000000'),
	(3, '酒', 3, '2020-08-14 22:26:41.000000'),
	(4, '牛奶', 4, '2020-08-14 22:28:12.000000'),
	(5, '油', 5, '2020-08-14 22:29:27.000000');
/*!40000 ALTER TABLE `goods_hotsearchwords` ENABLE KEYS */;

-- 正在导出表  onlinestore.goods_indexad 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `goods_indexad` DISABLE KEYS */;
/*!40000 ALTER TABLE `goods_indexad` ENABLE KEYS */;

-- 正在导出表  onlinestore.trade_ordergoods 的数据：~6 rows (大约)
/*!40000 ALTER TABLE `trade_ordergoods` DISABLE KEYS */;
INSERT INTO `trade_ordergoods` (`id`, `goods_num`, `add_time`, `goods_id`, `order_id`) VALUES
	(1, 3, '2020-08-14 22:24:23.633011', 11, 1),
	(2, 5, '2020-08-14 22:24:23.655481', 17, 1),
	(3, 3, '2020-08-15 14:17:21.148283', 2, 2),
	(4, 3, '2020-08-15 16:04:11.416677', 1, 3),
	(5, 3, '2020-08-15 16:07:36.403627', 1, 4),
	(6, 1, '2020-08-15 19:39:54.747426', 1, 5);
/*!40000 ALTER TABLE `trade_ordergoods` ENABLE KEYS */;

-- 正在导出表  onlinestore.trade_orderinfo 的数据：~5 rows (大约)
/*!40000 ALTER TABLE `trade_orderinfo` DISABLE KEYS */;
INSERT INTO `trade_orderinfo` (`id`, `order_sn`, `trade_no`, `pay_status`, `post_script`, `order_mount`, `pay_time`, `address`, `signer_name`, `singer_mobile`, `add_time`, `user_id`) VALUES
	(1, '15974150634308', NULL, 'PAYING', '首次购物', 1555, NULL, '上海市上海城区宝山区同济支路199号千锋教育', '御坂美琴', '15779099166', '2020-08-14 22:24:23.602716', 1),
	(2, '15974722411858', NULL, 'PAYING', '123', 264, NULL, '宁夏回族自治区银川市永宁县李俊镇宁化中心村', '上条当麻', '1577909914', '2020-08-15 14:17:21.132175', 1),
	(3, '15974786518353', NULL, 'PAYING', 'qwe', 468, NULL, '上海市上海城区宝山区同济支路199号千锋教育', '御坂美琴', '15779099166', '2020-08-15 16:04:11.409979', 1),
	(4, '15974788563873', NULL, 'PAYING', '123', 468, NULL, '宁夏回族自治区银川市永宁县李俊镇宁化中心村', '上条当麻', '1577909914', '2020-08-15 16:07:36.397976', 1),
	(5, '15974915942971', NULL, 'PAYING', '123', 156, NULL, '宁夏回族自治区银川市永宁县李俊镇宁化中心村', '上条当麻', '1577909914', '2020-08-15 19:39:54.741301', 1);
/*!40000 ALTER TABLE `trade_orderinfo` ENABLE KEYS */;

-- 正在导出表  onlinestore.trade_shoppingcart 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `trade_shoppingcart` DISABLE KEYS */;
/*!40000 ALTER TABLE `trade_shoppingcart` ENABLE KEYS */;

-- 正在导出表  onlinestore.user 的数据：~1 rows (大约)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `mobile`, `birthday`, `gender`) VALUES
	(1, 'pbkdf2_sha256$216000$JO3RRwvgq9KH$HrgJaGrs0nTpFYeS3rDa8x42ujnm8VGACa2bF7wHAGI=', NULL, 0, '15779099144', '', '', '', 0, 1, '2020-08-14 22:05:53.396129', '15779099144', '2020-02-02', 'boy');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

-- 正在导出表  onlinestore.useroper_useraddress 的数据：~2 rows (大约)
/*!40000 ALTER TABLE `useroper_useraddress` DISABLE KEYS */;
INSERT INTO `useroper_useraddress` (`id`, `province`, `city`, `district`, `address`, `signer_name`, `signer_mobile`, `add_time`, `user_id`) VALUES
	(1, '宁夏回族自治区', '银川市', '永宁县', '李俊镇宁化中心村', '上条当麻', '1577909914', '2020-08-14 22:20:19.486712', 1),
	(2, '上海市', '上海城区', '宝山区', '同济支路199号千锋教育', '御坂美琴', '15779099166', '2020-08-14 22:21:12.181504', 1);
/*!40000 ALTER TABLE `useroper_useraddress` ENABLE KEYS */;

-- 正在导出表  onlinestore.useroper_userfav 的数据：~2 rows (大约)
/*!40000 ALTER TABLE `useroper_userfav` DISABLE KEYS */;
INSERT INTO `useroper_userfav` (`id`, `add_time`, `goods_id`, `user_id`) VALUES
	(1, '2020-08-14 22:23:36.593314', 11, 1),
	(2, '2020-08-14 22:23:55.485064', 17, 1);
/*!40000 ALTER TABLE `useroper_userfav` ENABLE KEYS */;

-- 正在导出表  onlinestore.useroper_userleavingmessage 的数据：~2 rows (大约)
/*!40000 ALTER TABLE `useroper_userleavingmessage` DISABLE KEYS */;
INSERT INTO `useroper_userleavingmessage` (`id`, `message_type`, `subject`, `message`, `file`, `add_time`, `user_id`) VALUES
	(1, 1, '注册体验', '很不错，删库跑路', 'message/images/00e818671ecwACH.jpg', '2020-08-14 22:21:58.926137', 1),
	(2, 4, '123', '12313', 'message/images/0aa60a15a2pckr6_vyyybz5.jpg', '2020-08-15 18:05:15.224966', 1);
/*!40000 ALTER TABLE `useroper_userleavingmessage` ENABLE KEYS */;

-- 正在导出表  onlinestore.user_groups 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_groups` ENABLE KEYS */;

-- 正在导出表  onlinestore.user_user_permissions 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_user_permissions` ENABLE KEYS */;

-- 正在导出表  onlinestore.verifycode 的数据：~1 rows (大约)
/*!40000 ALTER TABLE `verifycode` DISABLE KEYS */;
INSERT INTO `verifycode` (`id`, `code`, `mobile`, `send_time`) VALUES
	(1, '298861', '15779099144', '2020-08-14 22:05:09.894264');
/*!40000 ALTER TABLE `verifycode` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
