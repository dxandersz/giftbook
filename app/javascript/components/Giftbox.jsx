import React from "react";
import { Link } from "react-router-dom";

class Giftbox extendes React.component {
    constructor(props) {
        super(props);
        this.state = { giftbox: { traits: ""} };

        this.addHtmlEntitities = this.addHtmlEntities.bind(this);
    }
}

export default Recipe;