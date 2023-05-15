export const getCategories = (callback) => 
fetch('https://fakestoreapi.com/products/categories')
            .then(res=>res.json())
            .then(json=>callback(json))