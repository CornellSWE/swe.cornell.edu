import React, {Component} from 'react';
import '../../default.css';

class Header extends React.Component {
  render() {
    return(
      <header className="header">
          <div className="logo">
            LOGO
          </div>

          <nav>
              <ul>
                  <li>
                      <a href="#">Home</a>
                  </li>
                  <li>
                      <a href="#">Events</a>
                  </li>
                  <li>
                      <a href="#">Join</a>
                  </li>
              </ul>
          </nav>
          
      </header>
    );
  }
}

export default Header;
