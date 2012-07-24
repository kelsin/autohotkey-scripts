SetTitleMatchMode RegEx
SetTitleMatchMode Fast

RunOrActivate(program, title)
{
  IfWinExist %title%
    WinActivate
  Else
  {
  	Run %program%
    WinWait %title%
  	WinActivate
  }
}

^!Enter::
  InputBox UserInput, Command, , 50, 150
  If ErrorLevel
	Return
  Else {
	If UserInput = ch	
      RunOrActivate("C:\Users\cgiroir\AppData\Local\Google\Chrome\Application\chrome.exe","Google Chrome")
    Else If UserInput = c
      RunOrActivate("C:\Users\cgiroir\FuTTY-2011-07-13.exe -load irc", "IRC")
    Else If UserInput = e
      RunOrActivate("C:\emacs\bin\runemacs.exe", "emacs")
  }
Return
