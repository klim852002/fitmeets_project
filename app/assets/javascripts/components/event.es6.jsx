class Event extends React.Component {
  render () {
    return (
      <div>
        <h2>Name: {this.props.event.event_name}</h2>
        <h2>Date: {this.props.event.event_date}</h2>
        <h2>Start Time: {this.props.event.start_time}</h2>
        <h2>End Time: {this.props.event.end_time}</h2>
        <h2>Location: {this.props.event.event_address}</h2>
        <h2>Postal Code: {this.props.event.postal_code}</h2>
        <h2>Players required: {this.props.event.players_req}</h2>
        <h2>Sports category: {this.props.event.sports_cat}</h2>
        <h2>Details: {this.props.event.details}</h2>
        <h2>Gallery: {this.props.event.picture}</h2>
        <h2>Created time: {this.props.event.created_at}</h2>
      </div>
    )
  }
}
