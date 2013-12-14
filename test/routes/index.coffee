loadApp()

describe 'Run Selenium tests', ->
  SpecHelper.usesBrowser 'firefox'

  beforeEach ->
    return browser.get "http://localhost:#{process.env.PORT}"

  it 'sets the browsers title', ->
    return expect( browser.title() ).to.eventually.equal('Hello World')
