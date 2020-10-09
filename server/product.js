//引入express 
    const express = require('express') 
//引入数据连接池 
    const pool = require('./pool.js') 
 //创建后端路由接口对象 
    const router = express.Router()
//商品路由
//主页
router.get('/index',(req,res)=>{
    let sql='select fid,image,title,details,price,href from pro'
    pool.query(sql,(err,result)=>{
        if(err)throw err
        res.send(result)
    })
}) 
//分类
router.get('/list',(req,res)=>{ 
        let sql = 'select fname,fid from proList' 
         pool.query(sql,(err, result)=>{ 
            if(err) throw err 
            res.send(result) 
         }) 
})
//根据id获取对应商品信息
router.get('/details',(req,res)=>{
    let fid=req.query.fid
    let sql='select * from details where fid=?'
    pool.query(sql,[fid],(err,result)=>{
        if(err)throw err
        res.send(result)
    })
}) 
module.exports = router    