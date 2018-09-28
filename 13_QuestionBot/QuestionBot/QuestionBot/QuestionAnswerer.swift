struct MyQuestionAnswerer {
    func responseTo(question: String) -> String {
        
        let lowerQuestion = question.lowercased()
        let lowerQuestionBinary = lowerQuestion.utf8CString.count % 2
        
        if lowerQuestion == "where are the cookies?" {
            return "In the cookie jar"
        } else if lowerQuestion.hasPrefix("hello") {
            return "Why, hello there!"
        } else if lowerQuestion.hasPrefix("where") {
            return "To the North!"
        }
        if lowerQuestionBinary == 0 {
            return "Whaaaaaaaaat??"
        } else {
            return "I don't know((("
        }
    }
}
