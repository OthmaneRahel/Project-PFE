const initialState = {
    voyages : [
        {
            id : 1 , 
            imageVille : 'dubai.jpg',
            nomVille : 'Dubai',
            prixVoyage : ' 7990 ',
            date_depart : '',
            date_arrive : '',
        },{
            id : 2 , 
            imageVille : 'malaisie.jpeg',
            nomVille : 'Malaisie',
            prixVoyage : ' 11900 ',
            date_depart : '',
            date_arrive : '',
        },
        {
            id : 3 , 
            imageVille : 'turkish.jpg',
            nomVille : 'turkish',
            prixVoyage : '6999',
            date_depart : '',
            date_arrive : '',
        },
        {
            id : 4 , 
            imageVille : '',
            nomVille : 'Canada',
            prixVoyage : '',
            date_depart : '',
            date_arrive : '',
        },
        {
            id : 5 , 
            imageVille : '',
            nomVille : 'France',
            prixVoyage : '',
            date_depart : '',
            date_arrive : '',
        },{
            id : 6 , 
            imageVille : '',
            nomVille : 'China',
            prixVoyage : '',
            date_depart : '',
            date_arrive : '',
        },{
            id : 7 , 
            imageVille : '',
            nomVille : 'Dubai',
            prixVoyage : '',
            date_depart : '',
            date_arrive : '',
        },{
            id : 8 , 
            imageVille : '',
            nomVille : 'Dubai',
            prixVoyage : '',
            date_depart : '',
            date_arrive : '',
        },{
            id : 9 , 
            imageVille : '',
            nomVille : 'Dubai',
            prixVoyage : '',
            date_depart : '',
            date_arrive : '',
        },{
            id : 10 , 
            imageVille : '',
            nomVille : 'Dubai',
            prixVoyage : '',
            date_depart : '',
            date_arrive : '',
        },{
            id : 10 , 
            imageVille : '',
            nomVille : 'Dubai',
            prixVoyage : '',
            date_depart : '',
            date_arrive : '',
        },{
            id : 10 , 
            imageVille : '',
            nomVille : 'Dubai',
            prixVoyage : '',
            date_depart : '',
            date_arrive : '',
        },
    ],
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
    hajUnq : [],
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
        case 'ADD_HAJ':
            return {
                ...state,
                hajUnq : [...state.hajUnq , action.payload]
            }
        case 'VID_TAB_HAJ':
            return {
                ...state,
                hajUnq : []
            }
        default :
            return state
    }
    
}
export default ReducerVoyage