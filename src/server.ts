import express, { Request, Response } from 'express';
import bodyParser from 'body-parser';
import productRoutes from './routes/product';
import userRoutes from './routes/user';
import orderRoutes from './routes/order';

const app = express();
const port = 3000;

app.use(bodyParser.json());

app.get('/', function (req: Request, res: Response) {
  res.send('hello dear!!!!');
});

productRoutes(app);
userRoutes(app);
orderRoutes(app);

app.listen(port, () => {
  console.log(`Server running at http://localhost:${port}`);
});

export default app;
