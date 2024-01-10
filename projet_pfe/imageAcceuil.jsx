import React from 'react';
export default function Accueil() {
    return (
        <div className='row'>
            <div className='col-10' >
                <h1 style={{float:'left' , position : 'absolute' , top:'250px' ,fontSize : '52px' }} className='ms-3'>
                    AVEZ-VOUS RESERVEZ <br />UN VOYAGE ?
                </h1>
            </div>
            <div className='col-2'>
                <img id='a' src="imgacceuil.png" class="rounded float-end" alt="..."></img>
            </div>
                
        </div>
    )
}