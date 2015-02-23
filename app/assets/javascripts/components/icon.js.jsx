var Icon = React.createClass({
  propTypes: {
    name: React.PropTypes.string
  },

  render: function() {
    var faClasses = "fa fa-" + this.props.name;
    return (
      <i className={faClasses}></i>
    );
  }
});
