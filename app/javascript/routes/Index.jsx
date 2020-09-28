import React from "react";
import { BrowserRouter as Router, Route, Switch } from "react-router-dom";
import Page from "../components/Page";
import Giftboxes from "../components/Giftboxes";

export default (
  <Router>
    <Switch>
      <Route path="/" exact component={Page} />
      <Route path="/giftboxes" exact component={Giftboxes} />
    </Switch>
  </Router>
);
