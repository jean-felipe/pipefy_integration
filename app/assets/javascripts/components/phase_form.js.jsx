var PhaseForm = React.createClass({
	propTypes: {
		name: React.PropTypes.string,
		pipe_id: React.PropTypes.integer
	},

	getInitialState: function(){
		return{
			name: '',
			pipe_id: '',
		}
	},

	handleAdd: function(e){
		e.preventDefault();
		var self = this;
		if(this.validForm()){
			jQuery.ajax({
				url: '/api/phases',
				method: 'POST',
				data: { phase: self.state },
				success: function(data){
					self.props.handleAdd(data);
					self.setState(self.getInitialState());
				},
				error: function(xhr, status, error){
					alert('Cannot add new Phase: ', error);
				}
			})
		} else{
			alert('Please fill all fields.');
		}
	},

	validForm: function(){
		if(this.state.name){
			return true;
		}else{
			return false;
		}
	},

	handleChange: function(e){
		var input_name = e.target.name;
		var value = e.target.value;
		this.setState({[input_name] : value});
	},

	render: function(){
		return(
			<form className="formPhase" onSubmit={this.handleAdd}>
				<div className="form-group">
				  <input type="text"
				  className="form-control"
				  name="name"
				  placeholder="name"
				  ref="name"
				  value={this.state.name}
				  onChange={this.handleChange} />	
				</div>
				<button type="submit" className="btn btn-primary">Add</button>
			</form>
			)
	}
});