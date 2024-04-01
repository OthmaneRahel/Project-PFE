const initialState = {
    Haj : [
        {
            id : 1 , 
            imageVille : 'haj1.jpg',
            nomVille : 'عمرة شعبان',
            prixVoyage : '14 990 ',
            time: "من 15 فبراير إلى 04 مارس 2024"
        },{
            id : 2 , 
            imageVille : 'haj3.jpg',
            nomVille : 'عمرة رمضان',
            prixVoyage : ' 18 900 ',
            time:"من 11 مارس إلى 24 ابريل 2024"
        },
        {
            id : 3 , 
            imageVille : 'haj2.jpg',
            nomVille : 'دبي عمرة',
            prixVoyage : '17 900',
            time:"لمدة 12 أيام / 11 ليالي"
        },
        {
            id : 4 , 
            imageVille : 'haj4.jpg',
            nomVille : 'اسطنبول عمرة',
            prixVoyage : '24 400',
            time:"لمدة 12 أيام / 11 ليالي"
        },
       
    ],
    hajUnq : []
}
const ReducerHaj = (state = initialState , action)=>{
    switch (action.type){
        case 'ADD_HAJ':
            return {
                ...state,
                hajUnq : [...state.hajUnq , action.payload]
            }
        case 'VID_HAJ':
            return {
                ...state,
                hajUnq : []
            }
        default :
            return state
    }
    
}
export default ReducerHaj