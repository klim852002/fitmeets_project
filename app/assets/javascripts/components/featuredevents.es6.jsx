class FeaturedEvents extends React.Component {


  render () {
    // debugger;
    return (
    <div className="blocks col-2">
        {this.props.events.map(function(event){
          return (
            <div key={event.id} className="block">
              {event.picture.url ?  <img src={event.picture.url}/> : <img className={`photofeatured_${event.sports_cat.toLowerCase()}`}/>}
              <a href={"/events/" + event.id} className="standard-btn">
        <button className="draw">View Event</button>
       </a>
              <div className="info">
                <div className="title">{event.event_name}</div>
                <div className="hold">
                <div className="date">{event.event_date}</div>
                <div className="address">{event.event_address}</div>
              </div>
              </div>
            </div>
          )
        }
        )}
      </div>
    )
  }
}
