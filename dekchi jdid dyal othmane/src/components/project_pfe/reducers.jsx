const initialState = {
    voyages : [
        {
            id : 1 , 
            imageVille : 'dubai.jpg',
            nomVille : 'Dubai',
            prixVoyage : ' 7990 ',
        },{
            id : 2 , 
            imageVille : 'malaisie.jpeg',
            nomVille : 'Malaisie',
            prixVoyage : ' 11900 ',
        },
        {
            id : 3 , 
            imageVille : 'turkish.jpg',
            nomVille : 'turkish',
            prixVoyage : '6999',
        },
        {
            id : 4 , 
            imageVille : '',
            nomVille : 'Dubai',
            prixVoyage : '',
        },
        {
            id : 5 , 
            imageVille : '',
            nomVille : 'Dubai',
            prixVoyage : '',
        },{
            id : 5 , 
            imageVille : '',
            nomVille : 'Dubai',
            prixVoyage : '',
        },{
            id : 5 , 
            imageVille : '',
            nomVille : 'Dubai',
            prixVoyage : '',
        },{
            id : 8 , 
            imageVille : '',
            nomVille : 'Dubai',
            prixVoyage : '',
        },{
            id : 9 , 
            imageVille : '',
            nomVille : 'Dubai',
            prixVoyage : '',
        },{
            id : 10 , 
            imageVille : '',
            nomVille : 'Dubai',
            prixVoyage : '',
        },
    ],
    vygUnq : []
}
const ReducerVoyage = (state = initialState , action)=>{
    switch (action.type){
        case 'ADD_UNIQUE':
            return {
                ...state,
                vygUnq : [...state.vygUnq , action.payload]
            }
        case 'VID_TAB':
            return {
                ...state,
                vygUnq : []
            }
        default :
            return state
    }
    
}
export default ReducerVoyage