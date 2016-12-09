import React from 'react'


class Profile extends React.Component {
    render() {
        var profileContainer = {
            display: 'flex',
        }
        var profileDetails = {
            flex: 4,
        }
        var favoriteDetails = {
            flex: 8,
        }
        return(
            <div className='viewSection'>
                <h4 className='pageTitle'>Profile</h4>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                <div style={profileContainer}>
                    <div style={profileDetails}>
                        <h1>Profile Section</h1><br />
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                    </div>
                    <div style={favoriteDetails}>
                        <h1>Favorites Section</h1>
                    </div>

                </div>
            </div>
        )
    }
}

export default Profile
