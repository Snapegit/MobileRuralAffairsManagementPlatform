const config = {
    get() {
        return {
            url : process.env.VUE_APP_BASE_API_URL + process.env.VUE_APP_BASE_API + '/',
            name: process.env.VUE_APP_BASE_API,
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/cl19290301/client/h5/index.html'
        }
    },
    getProjectName(){
        return {
            projectName: "农村事务管理与交流平台"
        } 
    }
}
export default config
