import React from "react";
import { BrowserRouter as Router, Route, Switch } from "react-router-dom";

class Giftbox extends React.Component {
  render() {
    return (
      <div className="giftbox">
        <h1>Shopping List for {this.props.name}</h1>
        <ul>
          <li>Instagram</li>
          <li>WhatsApp</li>
          <li>Oculus</li>
        </ul>
      </div>
    );
  }
}

export default Giftbox;