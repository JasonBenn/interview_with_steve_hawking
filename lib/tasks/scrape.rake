require 'nokogiri'
require 'open-uri'

desc "import questions and answers from website"
task :scrape_questions => :environment do
  doc = Nokogiri::HTML(open("http://www.ardendertat.com/2012/01/09/programming-interview-questions/"))
  titles = doc.css('.entry-content a:first-child')[1..28].map { |e| e.text }
  hrefs = doc.css('.entry-content a:first-child')[1..28].map { |e| e['href'] }

  questions = doc.css('.entry-content p')[2..29].map.with_index do |e, i|
    first_index = (e.text =~ /\s/).to_i + 2 + titles[i].length
    e.text.slice(first_index..-1)
  end

  answers = []
  hrefs.each do |href|
    answerdoc = Nokogiri::HTML(open(href))
    answers << answerdoc.css('.entry-content').to_s
  end

  28.times do |n|
    Question.create(
      title: titles[n].strip,
      question: questions[n].strip,
      answer: answers[n].strip
      )
  end
end

desc "save questions to audio"
task :save_audio => :environment do
  doc = Nokogiri::HTML(open("http://www.ardendertat.com/2012/01/09/programming-interview-questions/"))

  questions = doc.css('.entry-content p')[2..29].map.with_index do |e, i|
    first_index = (e.text =~ /\s/).to_i + 2 + titles[i].length
    e.text.slice(first_index..-1)
  end

  index = 1
  question.each do |qustion|
    system "say -v Alex #{question} -o #{index}.mp4"
    index += 1
  end
end

desc "import questions and answers from website"
task :update_audio_path => :environment do
  Question.all.each do |question|
    Question.update(question.id, :audio_path => "http://www.codesliced.com/audio/question_#{question.id}.mp4")
  end
end

