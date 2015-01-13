class CommentsController < ApplicationController
  def create
    # TODO alter routes to have nested routes based on user/comment/post
    # create a new comment which has an author, a user/post/comment
    # if it can save, redirect
    # redirect/render the index.
  end

  def destroy
    # TODO call ApplicationCOntroller method to destroy comment, look at goal
    # for inspiration.
  end

  def edit
    # TODO just make a new comment object and render edit
  end

  def update
    # TODO - similar to create, but find the comment, reload all stuffs, and
    # run update. Again, look at goal_controller for inspiration.
  end

  private

  def comment_params
    # TODO - standard stuff.
  end
end
