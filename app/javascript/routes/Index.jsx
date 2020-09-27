import React from "react";
import { BrowserRouter as Router, Route, Switch } from "react-router-dom";
import Page from "../components/Page.jsx";

export default (
  <Router>
    <Switch>
      <Route path="/" exact component={Page} />
    </Switch>
  </Router>
);
