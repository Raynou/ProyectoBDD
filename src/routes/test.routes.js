import {Router} from "express"

const router = Router()


router.get('/greets', (req, res) => res.send('hola'))


export default router
