// var Cards = React.createClass({
//   propTypes: {
//     title: React.PropTypes.string,
//     description: React.PropTypes.string
//   },

  
// });



class Cards extends React.Component{
  render() {
    return (
      <div>
        <div>Title: {this.props.title}</div>
        <div>Description: {this.props.description}</div>
      </div>
    );
  }

}
