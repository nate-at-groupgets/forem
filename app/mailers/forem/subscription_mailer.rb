module Forem
  class SubscriptionMailer < ActionMailer::Base
    default :from => Forem.email_from_address

    def topic_reply(post_id, subscriber_id)
      # only pass id to make it easier to send emails using resque
      @post = Post.find(post_id)
      @user = Forem.user_class.find(subscriber_id)

      mail(:to => @user.email, :subject => I18n.t('forem.topic.received_reply'))
    end

    def needs_moderation(post_id)
      # only pass id to make it easier to send emails using resque
      @post = Post.find(post_id)
      @moderators = []
      @post.forum.moderators.each do |group|
        @moderators += group.members
      end

      mail(:to => @moderators.collect(&:email), :subject => I18n.t('forem.topic.needs_moderation'))
    end
  end
end
