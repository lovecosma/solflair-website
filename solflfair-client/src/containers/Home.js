import React, {Component} from 'react'
import { connect } from 'react-redux'
import { NavLink } from 'react-router-dom'
import fetchItems from '../actions/fetchItems'
class Home extends Component {  

componentDidMount = () => {
  this.props.fetchItems()
}

  render(){
   return (
     <div>
       <div className="container center white-text">
       <img src="http://localhost:3001/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBDQT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--acc925db802176365244a571a1c1ce428cafbdf9/3E53CB0A-5E94-4E01-B2BC-92241438BFBA.jpeg" alt="" width="33%" height="33%"  id="home"></img>
        <div className="container black">
        <h1>Welcome</h1>
        </div>
        <div className="container black">
         <p>Solflair offers one-of-a-kind, wire-wrapped jewelry utilizing healing crystals, various beads and adornments. I take inspiration from nomadic and bohemian cultures so you will find lots of colors, textures and flair in my pieces! </p>
        </div>
        <div className="container black">
        <NavLink to="items"><h3>Shop Here</h3></NavLink>
        </div>

       </div>
     </div>
   )
}
}

const mapStateToProps = state => {
    return state
  }
   

export default connect(mapStateToProps, {fetchItems})(Home)
