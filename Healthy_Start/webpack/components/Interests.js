import React from 'react'
import { Link } from 'react-router'
import Nav from './Nav'
import Nutrient from './Nutrient'
import NutrientDetail from './NutrientDetail'
import Recipes from './Recipes'



class Interests extends React.Component {
    constructor(props) {
        super(props)
        this.state = {}
    }
    render() {
        return (
            <main>
             <div className="container-fluid">
                <Nav />
             </div>
              {/* <!--END OF NAV BAR--> */}

            {/* <!--START OF CONTENT--> */}
             <div className="container-fluid">
                 <div className="row">
                     <div className="col-sm-3">
                         <Nutrient />
                     </div>
                     <div className="col-sm-9">
                         <NutrientDetail />
                         <Recipes />
                     </div>
                 </div>
             </div>
            </main>
        )
    }
}

export default Interests
