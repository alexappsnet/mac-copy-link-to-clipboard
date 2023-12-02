import Foundation
import AppKit
import UniformTypeIdentifiers

let args = CommandLine.arguments
if args.count == 3 {
    let linkText = args[1]
    let linkUrl = args[2]
    
    let htmlText = "<a href='\(linkUrl)'>\(linkText)</a>"
    let htmlData = htmlText.data(using: .utf8)
    
    let pasteBoard = NSPasteboard.general
    pasteBoard.clearContents()
    pasteBoard.setData(htmlData, forType: .html)
  
    print("The \"\(htmlText)\" is copied to clipboard")
} else {
    print("Error! Expecting two arguments: <link text> <link url>")
}
