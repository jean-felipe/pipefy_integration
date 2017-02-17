var CardForm = React.createClass({
	propTypes: {
		title: React.PropTypes.string,
		user_id: React.PropTypes.integer,
		phase_id: React.PropTypes.integer
	},

	getInitialState: function(){
		return{
			title: '',
			user_id: '',
			phase_id: this.props.phase_id,
		}
	},

	handleAdd: function(e){
		e.preventDefault();
		var self = this;
		if(this.validForm()){
			jQuery.ajax({
				url: '/api/cards',
				method: 'POST',
				data: { card: self.state },
				success: function(data){
					self.props.handleAdd(data);
					self.setState(self.getInitialState());
				},
				error: function(xhr, status, error){
					alert('Cannot add new Card: ', error);
				}
			})
		} else{
			alert('Please fill all fields.');
		}
	},

	validForm: function(){
		if(this.state.title){
			return true;
		}else{
			return false;
		}
	},

	handleChange: function(e){
		var input_title = e.target.name;
		var value = e.target.value;
		this.setState({[input_title] : value});
	},

	render: function(){
		return(
			<form className="formCard" onSubmit={this.handleAdd}>
				<div className="form-group">
				  <input type="text"
				  className="form-control"
				  name="title"
				  placeholder="Title"
				  ref="title"
				  value={this.state.title}
				  onChange={this.handleChange} />	
				</div>
				<div></div>
				<button type="submit" className="btn btn-primary pull-right">Create Card</button>
			</form>
			)
	}
});