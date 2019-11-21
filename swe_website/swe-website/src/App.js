import React, {Component} from 'react';

//components
import Header from './components/headerComponent/header';
import Footer from './components/footerComponent/footer';
import Homepage from './components/pages/homePage';

//includes
import './default.css';

class App extends React.Component {
  render() {
    return(
      <div className="App">
        <Header />
        <Homepage />
        <Footer />
      </div>
    );
  }
}

export default App;
