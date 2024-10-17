import dotenv from 'dotenv';
dotenv.config();
// Import and require Pool (node-postgres)
// We'll be creating a Connection Pool. Read up on the benefits here: https://node-postgres.com/features/pooling
import pg from 'pg';
const { Pool } = pg;
const pool = new Pool({
    user: process.env.db_user,
    password: process.env.db_password,
    host: 'localhost',
    database: process.env.db_name,
    port: 5432,
});
const connectTodb = async () => {
    try {
        await pool.connect();
        console.log('Connected to the database.');
    }
    catch (err) {
        console.error('Error connecting to database:', err);
        process.exit(1);
    }
};
export { pool, connectTodb };
