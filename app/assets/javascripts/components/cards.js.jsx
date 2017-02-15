
class Cards extends React.Component{


  render() {
    return (
      <div className="card">
        <div>{this.props.title}</div>
        <div>{this.props.description}</div>
      </div>
    );
  }

}
