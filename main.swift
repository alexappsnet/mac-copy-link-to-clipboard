import Foundation
import AppKit
import UniformTypeIdentifiers

let args = CommandLine.arguments
if args.count == 3 {
    let linkText = args[1]
    let linkUrl = args[2]
    
    let htmlText = "<a href='\(linkUrl)'>\(linkText)</a>"
    
    let pasteBoard = NSPasteboard.general
    pasteBoard.clearContents()
    pasteBoard.setData(htmlText.data(using: .utf8), forType: .html)
    pasteBoard.setData(linkText.data(using: .utf8), forType: .string)

    print("The \"\(htmlText)\" is copied to clipboard")
} else {
    print("Error! Expecting two arguments: <link text> <link url>")
}
