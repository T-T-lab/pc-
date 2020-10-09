//引入express 
    const express = require('express') 
//引入数据连接池 
    const pool = require('./pool.js') 
 //创建后端路由接口对象 
    const router = express.Router() 
 //用户登录接口 
 router.get('/login', (req, res) => { 
     //获取当前提交的用户信息 
    let phone = req.query.phone; 
    let upwd = req.query.upwd; 
    let sql = 'select * from user where phone=? and upwd=?'; 
    pool.query(sql,[phone,upwd],(err,result)=>{
        if(err)throw err
        if(result.length>0){
            return res.send({
                code:1,msg:'success',result:result[0]
            })
        }else{
            res.send({
                code:0,msg:'fail'
            })
        }
    })
 })
//用户注册接口
router.get('/reg',(req,res)=>{
    let obj=req.query
    let phone=req.query.phone
    let sql='select phone from user where phone=?'
    pool.query(sql,[phone],(err,result)=>{
        if(err)throw err
        //用户名已存在
        if(result.length>0){
            res.send({code:0,msg:'fail'})
        }else{
            let sql='insert into user set ?'
            pool.query(sql,[obj],(err,result)=>{
                if(err)throw err
                if(result.affectedRows>0){
                    res.send({code:1,msg:'success'})
                }else{
                    res.send({code:0,msg:'fail'})
                }
            })
        }
    })
})
module.exports = router