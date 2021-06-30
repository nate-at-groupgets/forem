require 'spec_helper'
describe "moderation" do
  let(:forum) { FactoryBot.create(:forum) }
  let(:user) { FactoryBot.create(:user) }

  context "of posts" do
    let!(:moderator) { FactoryBot.create(:user, :login => "moderator") }
    let!(:group) do
      group = FactoryBot.create(:group)
      group.members << moderator
      group.save!
      group
    end

    let!(:forum) { FactoryBot.create(:forum) }
    let!(:topic) { FactoryBot.create(:topic, :forum => forum) }
    let!(:post) { FactoryBot.create(:post, :topic => topic) }

    before do
      forum.moderators << group
      sign_in(moderator)
      topic.approve!
    end

    context "mass moderation" do
      it "can approve a post by a new user" do

        visit forum_path(forum)
        click_link "Moderation Tools"

        choose "Approve"
        first(:button, "Moderate").click

        flash_notice!("The selected posts have been moderated.")
        post.reload
        post.should be_approved
        post.user.reload.forem_state.should == "approved"
      end

      it "can mark a post as spam" do
        visit forum_path(forum)
        click_link "Moderation Tools"

        choose "Spam"
        first(:button, "Moderate").click

        flash_notice!("The selected posts have been moderated.")
        post.reload
        post.should be_spam
        post.user.reload.forem_state.should == "spam"
      end
    end

    context "singular moderation" do
      it "can approve a post by a new user" do
        visit forum_topic_path(forum, topic)
        choose "Approve"
        click_button "Moderate"

        flash_notice!("The selected posts have been moderated.")
        post.user.reload.forem_state.should == "approved"
      end
    end
  end
end
