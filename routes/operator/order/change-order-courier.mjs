import express from 'express';
import {verifyToken} from "../../../modules/auth/token.mjs";
import {badRequest,response} from "../../../modules/response.mjs";
import {db} from "../../../modules/database/connection.mjs";
import {changeOrderCourier} from "../../../modules/query/operator-query.mjs";
import {sendMessage} from "../../../modules/push/push.mjs";

const changeOrderCourierRouter = express.Router();

changeOrderCourierRouter.put('/',verifyToken,(req,res)=>{
    if(typeof req.body === 'undefined'
        || req.body == null
        || typeof req.body.order_unique_id === 'undefined'
        || typeof req.body.courier_unique_id === 'undefined'
        || typeof req.body.reason === 'undefined'){
        badRequest(req,res);
    } else {
        const {courier_unique_id,order_unique_id,reason} = req.body;
        db.query(changeOrderCourier,[order_unique_id,courier_unique_id,req.user.user.unique_id,reason])
            .then(async result=>{
                if(result.rows.length){
                    await sendMessage(courier_unique_id,
                        `ÜNS BERIŇ SIZE TÄZE SARGYT BERKIDILDI!`,
                        `SARGYDY GÖRMEK ÜÇIN ÜSTÜNE BASYŇ`,
                        {
                        order_unique_id:order_unique_id,
                        courier_unique_id:courier_unique_id,
                        user_unique_id:req.user.user.unique_id
                    });
                    res.json(response(false,'success',result.rows[0]));
                    res.end();
                } else {
                    badRequest(req,res);
                }
            })
            .catch(err=>{
                badRequest(req,res);
            })
    }
});

export {changeOrderCourierRouter};