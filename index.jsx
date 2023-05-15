import React, { useEffect, useState } from 'react'
import {getCategories} from '../../requests/getCategories'
import Category from '../Category';
import s from './index.module.css'

export default function CategoriesContainer() {
    const [categories, setCategories] = useState([]);
    useEffect(()=>{
        getCategories(setCategories)
    },[]);

  return (
    <div className={s.categoriesContainer}>
        {categories.map(el=> <Category key={Date.now()} el={el}/> )}
    </div>
  )
}
