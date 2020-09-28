import React from "react";
import { Link } from "react-router-dom";

class Giftboxes extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            giftboxes: []
        };
}

componentDidMount() {
const {
    match: {
        params: { id }
    }
} = this.props

    const url = "/api/v1/show/${id}";
    fetch(url)
        .then(response => {
            if (response.ok) {
                return response.json();
            }
            throw new Error("Network response was not ok.")
        })
        .then(response => this.setState({ giftboxes: response }))
        .catch(() => this.props.history.push("/"));
}

addHtmlEntitities(str) {
    return String(str)
    .replace(/&lt;/g, "<")
    .replace(/&gt;/g, ">")
}

render() {
    const { giftboxes } = this.state;
    const allGiftboxes = giftboxes.map((giftbox, index) => (
        <div key={index} className="col-md-6 col-lg-4">
            <div className="card mb-4">
                <div className="card-body">
                    <h4 className="card-title">{giftbox.title}</h4>
                    <h5 className="card-subtitle">{giftbox.organization}</h5>
                    <p className="card-text">{giftbox.description}</p>
                </div>
            </div>
        </div>

    ));
    const noGiftbox= (
        <div className="vw-100 vh-50 d-flex align-items-center justify-content-center">
            <h4>Oops! No Giftboxes available! This must be a mistake!</h4>
        </div>
    );

    return (
        <>
        <section className="jumbotron jumbotron-fluid text-center">
            <div className="container py-5">
                <h1 className="display-4">Self-Education at a Price Anyone Can Afford</h1>
            </div>
        </section>
        <div className="py-5">
            <main className="container">
                <div className="row">
                    {giftboxes.length > 0 ? allGiftboxes : noGiftbox}
                </div>
                <Link to="/" className="btn btn-link">
                    Home
                </Link>
            </main>
        </div>
    </>
    );
}
}
export default Giftboxes;