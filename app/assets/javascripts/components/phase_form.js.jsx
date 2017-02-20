var PhaseForm = React.createClass({
	propTypes: {
		name: React.PropTypes.string,
		pipe_id: React.PropTypes.integer
	},

	getInitialState: function(){
		return{
			name: '',
			pipe_id: this.props.pipe_id,
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
					alert('Close and reload the page ', error);
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
				  placeholder="Title"
				  ref="name"
				  id="phase_name"
				  value={this.state.name}
				  onChange={this.handleChange} />	
				</div>
				<div>
				<input type="text"
				  className="form-control hidden"
				  name="pipe_id"
				  placeholder="pipe_id"
				  ref="pipe_id"
				  value={this.state.pipe}
				  onChange={this.handleChange} />	
				</div>
				<button type="submit" className="btn btn-primary">Create</button>
				<button type="button" className="btn btn-default" data-dismiss="modal">Cancelar</button>
			</form>
			)
	}
});