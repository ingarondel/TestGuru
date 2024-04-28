class GistQuestionService
  attr_reader :client, :test, :question, :response

  def initialize(question, client: nil)
    @question = question
    @test = @question.test
    @client = client || Octokit::Client.new(access_token:ENV['GIST_ACCESS_TOKEN'])
  end

  def call
    @response = client.create_gist(gist_params)
  end

  def success?
    client.last_response.status == 201
  end

  def url_hash
    response[:id]
  end

  private

  def gist_params
    {
      description: "Вопрос о #{@test.title} из TestGuru",
      public: true,
      files: {
        'test-guru-question.txt' => {
          content: gist_content
        }
      }
    }
  end

  def gist_content
    content = [@question.body]
    content += @question.answers.pluck(:body)
    content.join("\n")
  end
end