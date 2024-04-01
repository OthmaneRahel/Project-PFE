import axios from "axios";
import React, { useState } from "react";
import { useLocation } from "react-router-dom";
import './modifierCss.css';
export default function ModifierEntrepot(){
    const location = useLocation()
    const [listdataEntModifie , setlistdataEntModifie] = useState(location.state.listDataEntrepots)
    console.log(listdataEntModifie)
    const Modifier = () =>{
        axios.put('http://127.0.0.1:8000/api/AfficherListEntrepots/'+listdataEntModifie.code , listdataEntModifie).then((res)=>{
            if(res.status == 200){
                alert('bien')
            }
        })
    }
    const getvalue = (event) =>{
        setlistdataEntModifie((prevE)=>({
            ...prevE,
            [event.target.name]:event.target.value
        }))
    }
    const RetourToList = () =>{
        
    }
    return <>
    <div class="max-w-md mx-auto mt-5" id="size">
    <div class="relative z-0 w-full mb-5 group">
        <input type="text" name="nom" class="block py-2.5 px-0 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none dark:text-white dark:border-gray-600 dark:focus:border-blue-500 focus:outline-none focus:ring-0 focus:border-blue-600 peer" value={listdataEntModifie.nom} onChange={getvalue}/>
        <label for="floating_email" class="peer-focus:font-medium absolute text-sm text-gray-500 dark:text-gray-400 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:start-0 rtl:peer-focus:translate-x-1/4 rtl:peer-focus:left-auto peer-focus:text-blue-600 peer-focus:dark:text-blue-500 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6">Nom entrepot</label>
    </div>
    <div class="relative z-0 w-full mb-5 group">
        <input type="text" name="adresse" id="floating_password" class="block py-2.5 px-0 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none dark:text-white dark:border-gray-600 dark:focus:border-blue-500 focus:outline-none focus:ring-0 focus:border-blue-600 peer" value={listdataEntModifie.adresse} onChange={getvalue}/>
        <label for="floating_password" class="peer-focus:font-medium absolute text-sm text-gray-500 dark:text-gray-400 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:start-0 rtl:peer-focus:translate-x-1/4 peer-focus:text-blue-600 peer-focus:dark:text-blue-500 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6">Adresse</label>
    </div>
    <div class="grid md:grid-cols-2 md:gap-6">
        <div class="relative z-0 w-full mb-5 group">
        <label for="floating_phone" class="peer-focus:font-medium absolute text-sm text-gray-500 dark:text-gray-400 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:start-0 rtl:peer-focus:translate-x-1/4 peer-focus:text-blue-600 peer-focus:dark:text-blue-500 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6">Type</label><br />
            <select name="type" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" value={listdataEntModifie.type} onChange={getvalue}>
                <option value="principal">Principale</option>
                <option value="secondaire">Secondaire</option>
            </select> 
        </div>
    </div>
    <button type="submit" class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm w-full sm:w-auto px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800"><i class="bi bi-patch-check" onClick={Modifier}></i> Modifier</button>
    </div>
    </>
}