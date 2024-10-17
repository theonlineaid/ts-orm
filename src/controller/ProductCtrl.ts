import { Response, Request } from "express";
const { PrismaClient } = require('@prisma/client')
const prisma = new PrismaClient()

const productCtrl = {
    createProduct: async (req: Request, res: Response) => {

        try {
            const {
                productTitle,
                productDescription,
                productType,
                price,
                productRating,
                productQuantity,
                stockQuantity,
                allowCampaign,
                isTrending,
                productShortVideo,
                productsImages,
                productModels,
                specifications,
            } = req.body;

            // Create the product
            const newProduct = await prisma.product.create({
                data: {
                    productTitle,
                    productDescription,
                    productType,
                    price,
                    productRating,
                    productQuantity,
                    stockQuantity,
                    allowCampaign,
                    isTrending,
                    productShortVideo,
                    productsImages: {
                        create: productsImages.map((img: string) => ({
                            imageUrl: img,
                        })),
                    },
                    productModels: {
                        create: productModels.map((model: { modelImage: string }) => ({
                            modelImage: model.modelImage,
                        })),
                    },
                    specifications: {
                        create: specifications.map((spec: { brand: string, value: string }) => ({
                            brand: spec.brand,
                            value: spec.value,
                        })),
                    },
                },
            });

            res.status(201).json(newProduct);
        } catch (error) {
            console.error(error);
            res.status(500).json({ error: 'Failed to create product' });
        }
    }

}


export default productCtrl;