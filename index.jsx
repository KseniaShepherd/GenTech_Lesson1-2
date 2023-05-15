import React from 'react'
import { Link } from 'react-router-dom'
import s from './index.module.css'

export default function ProductsItem({ id, title, image, price }) {
    return (
        <Link to={`/product/${id}`}>
            <div className={s.productsItem}>
                <p>{title}</p>
                <img src={image} alt={title} />
                <p>{price} $</p>
            </div>
        </Link>

    )
}
