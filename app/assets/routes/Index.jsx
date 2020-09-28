import React from "react";
import { BrowserRouter as Router, Route, Switch } from "react-router-dom";
<<<<<<<< HEAD:app/assets/routes/Index.jsx
import Giftbox from "../components/Giftbox";
========
import Page from "../components/Page";
import Giftboxes from "../components/Giftboxes";
>>>>>>>> master:app/javascript/routes/Index.jsx

export default (
  <Router>
    <Switch>
      <Route path="/" exact component={Page} />
      <Route path="/giftboxes" exact component={Giftboxes} />
    </Switch>
  </Router>
);
