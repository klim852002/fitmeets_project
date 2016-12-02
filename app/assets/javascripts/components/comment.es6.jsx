class CommentBox extends React.Component {
  render () {
    return (
      <div>
        {this.props.comments.map((comment) => {
          return(
            <div key={comment.id}>
              <p> {comment.current_user.name} </p>
              <p> {comment.message} </p>
            </div>
          )
        }
      )}
      </div>
    );
  }
}
