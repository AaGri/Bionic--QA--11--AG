function Main()
{
  try
  {
    // Enter your code here. 
  }
  catch(exception)
  {
    Log.Error("Exception", exception.description);
  }
}

function Create1()
{
  TestedApps.notepad.Run();
  Aliases.notepad.wndNotepad.Edit.Keys("Hello");
  Aliases.notepad.wndNotepad.MainMenu.Click("File|Save");
  Aliases.notepad.dlgSaveAs.SaveFile("C:\\Documents and Settings\\Tester\\Desktop\\AG", "Text Documents (*.txt)");
  Aliases.notepad.wndNotepad.Close();
  TestedApps.notepad.Run(1, true);
  Aliases.notepad.wndNotepad.MainMenu.Click("File|Open...");
  Aliases.notepad.dlgOpen.OpenFile("C:\\Documents and Settings\\Tester\\Desktop\\AG.txt", "Text Documents (*.txt)");
  aqObject.CompareProperty(Aliases.notepad.wndNotepad.Edit.wText, 0, "Hello", false);
  Aliases.notepad.wndNotepad.Close();
}

function Edit2()
{
  TestedApps.notepad.Run(1, true);
  Aliases.notepad.wndNotepad.MainMenu.Click("File|Open...");
  Aliases.notepad.dlgOpen.OpenFile("C:\\Documents and Settings\\Tester\\Desktop\\AG.txt", "Text Documents (*.txt)");
  Aliases.notepad.wndNotepad.Edit.Keys("[Del][Del][Del][Del][Del][Del][Del][Del][Del][Del][Del][Del]Abrakadabra");
  Aliases.notepad.wndNotepad.MainMenu.Click("File|Save");
  Aliases.notepad.wndNotepad.Close();
  TestedApps.notepad.Run(1, true);
  Aliases.notepad.wndNotepad.MainMenu.Click("File|Open...");
  Aliases.notepad.dlgOpen.OpenFile("C:\\Documents and Settings\\Tester\\Desktop\\AG.txt", "Text Documents (*.txt)");
  aqObject.CompareProperty(Aliases.notepad.wndNotepad.Edit.wText, 0, "Abrakadabra", false);
  Aliases.notepad.wndNotepad.Click(213, 14);
  Aliases.notepad.wndNotepad.MainMenu.Click("File|Open...");
  Aliases.notepad.dlgOpen.SHELLDLL_DefView.FolderView.ClickItem("AG", 0);
  Aliases.notepad.dlgOpen.SHELLDLL_DefView.FolderView.ClickItemR("AG", 0);
  Aliases.notepad.dlgOpen.SHELLDLL_DefView.FolderView.PopupMenu.Click("Delete");
  Aliases.notepad.dlgConfirmFileDelete.btnYes.ClickButton();
  Aliases.notepad.dlgOpen.Close();
  Aliases.notepad.wndNotepad.Close();
}
