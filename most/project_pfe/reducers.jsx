const initialState = {
    voyages : [
        {
            id : 1 , 
            imageVille : 'dubai.jpg',
            nomVille : 'Dubai',
            prixVoyage : ' 7990 ',
            date_depart : '',
            date_arrive : '',
            description_V : "- Vol Aller/Retour Casablanca/Dubai avec la RAM ou Emirates \n - 7 nuits en Hôtel 4* avec petit déjeuner \t - Transferts aéroport/hôtel/aéroport \n",
            RevervationDispo:[
                {
                    AgenceVyg:'airMaroc1.png',
                    Date_Debut_Vyg : '01-01-2024',
                    Date_Fin_Vyg:'10-01-2024',
                    FormuleDescr:'Hôtel 4**** : régime Petit déjeuner (Package) 8 jours/7 nuits + VolA/R+ Transfert Aeroport',
                    prixVyg:'8990'
                },
                {
                    AgenceVyg:'airMaroc1.png',
                    Date_Debut_Vyg : '01-01-2024',
                    Date_Fin_Vyg:'10-01-2024',
                    FormuleDescr:'Hôtel 4**** : régime Petit déjeuner (Package) 8 jours/7 nuits + VolA/R+ Transfert Aeroport',
                    prixVyg:'8990'
                },
                {
                    AgenceVyg:'airMaroc1.png',
                    Date_Debut_Vyg : '01-01-2024',
                    Date_Fin_Vyg:'10-01-2024',
                    FormuleDescr:'Hôtel 4**** : régime Petit déjeuner (Package) 8 jours/7 nuits + VolA/R+ Transfert Aeroport',
                    prixVyg:'8990'
                },
                {
                    AgenceVyg:'airMaroc1.png',
                    Date_Debut_Vyg : '01-01-2024',
                    Date_Fin_Vyg:'10-01-2024',
                    FormuleDescr:'Hôtel 4**** : régime Petit déjeuner (Package) 8 jours/7 nuits + VolA/R+ Transfert Aeroport',
                    prixVyg:'8990'
                },
                {
                    AgenceVyg:'airMaroc1.png',
                    Date_Debut_Vyg : '01-01-2024',
                    Date_Fin_Vyg:'10-01-2024',
                    FormuleDescr:'Hôtel 4**** : régime Petit déjeuner (Package) 8 jours/7 nuits + VolA/R+ Transfert Aeroport',
                    prixVyg:'8990'
                },
            ]
            
        },{
            id : 2 , 
            imageVille : 'malaisie.jpeg',
            nomVille : 'Malaisie',
            prixVoyage : '11900',
            date_depart : '',
            date_arrive : '',
            description_V :'- Vols Aller - Retour Casablanca - Kualalumpur avec EMIRATES ou Qatar Airways / - 10 nuits hôtel metro hotel bukit bintang 3* ou similaire en petit déjeuner / - Transferts: Aéroport - Hôtel - Aéropor',
            RevervationDispo:[
                {
                    AgenceVyg:'Emarat.png',
                    Date_Debut_Vyg:'24-02-2024',
                    Date_Fin_Vyg:' 07-03-2024',
                    FormuleDescr:'Hôtel 3* : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport',
                    prixVyg:'14500'
                }
            ]
        },
        {
            id : 3 , 
            imageVille : 'turkish.jpg',
            nomVille : 'turkish',
            prixVoyage : '6999',
            date_depart : '',
            date_arrive : '',
            description_V :'',
            RevervationDispo:[
                {
                    AgenceVyg:'',
                    Date_Debut_Vyg : '',
                    Date_Fin_Vyg:'',
                    FormuleDescr:'',
                    prixVyg:''
                }
            ]
        },
        {
            id : 4 , 
            imageVille : '',
            nomVille : 'Canada',
            prixVoyage : '',
            date_depart : '',
            date_arrive : '',
            description_V :'',
            RevervationDispo:[
                {
                    AgenceVyg:'',
                    Date_Debut_Vyg : '',
                    Date_Fin_Vyg:'',
                    FormuleDescr:'',
                    prixVyg:''
                }
            ]
        },
        {
            id : 5 , 
            imageVille : '',
            nomVille : 'France',
            prixVoyage : '',
            date_depart : '',
            date_arrive : '',
            description_V :'',
            RevervationDispo:[
                {
                    AgenceVyg:'',
                    Date_Debut_Vyg : '',
                    Date_Fin_Vyg:'',
                    FormuleDescr:'',
                    prixVyg:''
                }
            ]
        },{
            id : 6 , 
            imageVille : '',
            nomVille : 'China',
            prixVoyage : '',
            date_depart : '',
            date_arrive : '',
            description_V :'',
            RevervationDispo:[
                {
                    AgenceVyg:'',
                    Date_Debut_Vyg : '',
                    Date_Fin_Vyg:'',
                    FormuleDescr:'',
                    prixVyg:''
                }
            ]
        },{
            id : 7 , 
            imageVille : '',
            nomVille : 'Dubai',
            prixVoyage : '',
            date_depart : '',
            date_arrive : '',
            description_V :'',
            RevervationDispo:[
                {
                    AgenceVyg:'',
                    Date_Debut_Vyg : '',
                    Date_Fin_Vyg:'',
                    FormuleDescr:'',
                    prixVyg:''
                }
            ]
        },{
            id : 8 , 
            imageVille : '',
            nomVille : 'Dubai',
            prixVoyage : '',
            date_depart : '',
            date_arrive : '',
            description_V :'',
            RevervationDispo:[
                {
                    AgenceVyg:'',
                    Date_Debut_Vyg : '',
                    Date_Fin_Vyg:'',
                    FormuleDescr:'',
                    prixVyg:''
                }
            ]
        },{
            id : 9 , 
            imageVille : '',
            nomVille : 'Dubai',
            prixVoyage : '',
            date_depart : '',
            date_arrive : '',
            description_V :'',
            RevervationDispo:[
                {
                    AgenceVyg:'',
                    Date_Debut_Vyg : '',
                    Date_Fin_Vyg:'',
                    FormuleDescr:'',
                    prixVyg:''
                }
            ]
            
        },{
            id : 10 , 
            imageVille : '',
            nomVille : 'Dubai',
            prixVoyage : '',
            date_depart : '',
            date_arrive : '',
            description_V :'',
            RevervationDispo:[
                {
                    AgenceVyg:'',
                    Date_Debut_Vyg : '',
                    Date_Fin_Vyg:'',
                    FormuleDescr:'',
                    prixVyg:''
                }
            ]
        },{
            id : 10 , 
            imageVille : '',
            nomVille : 'Dubai',
            prixVoyage : '',
            date_depart : '',
            date_arrive : '',
            description_V :'',
            RevervationDispo:[
                {
                    AgenceVyg:'',
                    Date_Debut_Vyg : '',
                    Date_Fin_Vyg:'',
                    FormuleDescr:'',
                    prixVyg:''
                }
            ]
        },{
            id : 10 , 
            imageVille : '',
            nomVille : 'Dubai',
            prixVoyage : '',
            date_depart : '',
            date_arrive : '',
            description_V :'',
            RevervationDispo:[
                {
                    AgenceVyg:'',
                    Date_Debut_Vyg : '',
                    Date_Fin_Vyg:'',
                    FormuleDescr:'',
                    prixVyg:''
                }
            ]
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