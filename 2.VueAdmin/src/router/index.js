	import {
		createRouter,
		createWebHashHistory
	} from 'vue-router'
	import discussfuwuzhan from '@/views/discussfuwuzhan/list'
	import news from '@/views/news/list'
	import xinwenfenlei from '@/views/xinwenfenlei/list'
	import fuwuzhan from '@/views/fuwuzhan/list'
	import discussxinwenxinxi from '@/views/discussxinwenxinxi/list'
	import fuwuzhanyuyue from '@/views/fuwuzhanyuyue/list'
	import storeup from '@/views/storeup/list'
	import forum from '@/views/forum/list'
	import quxiaoyuyue from '@/views/quxiaoyuyue/list'
	import yonghu from '@/views/yonghu/list'
	import xinwenxinxi from '@/views/xinwenxinxi/list'
	import liuyanfankui from '@/views/liuyanfankui/list'
	import config from '@/views/config/list'

export const routes = [{
		path: '/login',
		name: 'login',
		component: () => import('../views/login.vue')
	},{
		path: '/',
		name: '首页',
		component: () => import('../views/index'),
		children: [{
			path: '/',
			name: '首页Home',
			component: () => import('../views/HomeView.vue'),
			meta: {
				affix: true
			}
		}, {
			path: '/updatepassword',
			name: '修改密码',
			component: () => import('../views/updatepassword.vue')
		}
		
		,{
			path: '/discussfuwuzhan',
			name: '服务站评论评论',
			component: discussfuwuzhan
		}
		,{
			path: '/news',
			name: '通知信息',
			component: news
		}
		,{
			path: '/xinwenfenlei',
			name: '新闻分类',
			component: xinwenfenlei
		}
		,{
			path: '/fuwuzhan',
			name: '服务站',
			component: fuwuzhan
		}
		,{
			path: '/discussxinwenxinxi',
			name: '新闻信息评论评论',
			component: discussxinwenxinxi
		}
		,{
			path: '/fuwuzhanyuyue',
			name: '服务站预约',
			component: fuwuzhanyuyue
		}
		,{
			path: '/storeup',
			name: '我的收藏',
			component: storeup
		}
		,{
			path: '/forum',
			name: '我的发布',
			component: forum
		}
		,{
			path: '/quxiaoyuyue',
			name: '取消预约',
			component: quxiaoyuyue
		}
		,{
			path: '/yonghu',
			name: '用户',
			component: yonghu
		}
		,{
			path: '/xinwenxinxi',
			name: '新闻信息',
			component: xinwenxinxi
		}
		,{
			path: '/liuyanfankui',
			name: '留言反馈',
			component: liuyanfankui
		}
		,{
			path: '/config',
			name: '轮播图',
			component: config
		}
		]
	},
]

const router = createRouter({
	history: createWebHashHistory(process.env.BASE_URL),
	routes
})

export default router
