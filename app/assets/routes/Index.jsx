import React from "react";
import { BrowserRouter as Router, Route, Switch } from "react-router-dom";
import Giftbox from "../components/Giftbox";

export default (
  <Router>
    <Switch>
      <Route path="/" exact component={Giftbox} />
    </Switch>
  </Router>
);
