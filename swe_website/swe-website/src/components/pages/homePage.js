import React, {Component} from 'react';
import '../../default.css';
class Homepage extends React.Component {
  render() {
    return(
        <div className="wrap">
            <div className="frontpage">
                <div>   
                    <text className="SWE-intro">Society of Women Engineers</text>
                    <br/>
                    <text className="SWE-motto">Aspiring. Advancing. Achieving</text>
                </div>
            </div>
            <div className="container-fluid">
                <h2>About Us</h2>
                <div className="subcontent">
                    <text className="subheading"> Who We Are</text>
                    <br/>
                    <text className="description">
                        The Cornell Student Section of the Society of Women Engineers is 
                        open to all (male and female) undergraduate and graduate students in 
                        engineering and technical fields. Each year, we run numerous programs 
                        and events to promote engineering, diversity, career and professional 
                        development, academic support, and pre-college education.
                    </text>
                </div>
                

                <text className="subheading"> Our Mission</text>

            </div>
        </div>
    );
  }
}

export default Homepage;;
