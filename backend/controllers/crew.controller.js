const db = require("../db/connection.js")

// GET /api/get-crew-data
const getAllCrew = async (req, res)=>{
    try{
        const {role} = req.query;

        let query = `SELECT * FROM crew`;
        let params = [];

        if(role){
            query += ` WHERE role = ?`;
            params = [role];
        }

        query += ` ORDER BY name ASC`

        const [crew] = await db.query(query, params);

        res.status(200).json({ success: true, data: crew })
    }catch(err){
        console.error('getAllCrew error:', err.message)
        res.status(500).json({ success: false, message: 'Server error.' })
    }
}


// POST /api/add-crew

const addCrew = async (req, res) => {

    try {

        const { name, role } = req.body

        if (!name || !role) {

            return res.status(400).json({
                success: false,
                message: 'All fields are required'
            })
        }
        
        await db.query(
            `INSERT INTO crew (name, role)
            VALUES (?, ?)`,
            [name, role]
        )
        
        res.status(201).json({
            success: true,
            message: 'Crew added successfully'
        })
        
    } catch (err) {
        
        console.error('addCrew error:', err.message)
        
        res.status(500).json({
            success: false,
            message: err.message
        })
    }
}


module.exports = {
    getAllCrew,
    addCrew
}