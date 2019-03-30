program Ramon_teste;

uses
  Vcl.Forms,
  ucontrole_estoque in 'ucontrole_estoque.pas' {Fcontrole_entrada},
  uinicial in 'uinicial.pas' {Form2},
  ucontrole_saida in 'ucontrole_saida.pas' {Fcontrole_saida};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TFcontrole_entrada, Fcontrole_entrada);
//  Application.CreateForm(TFcontrole_saida, Fcontrole_saida);
  Application.Run;
end.
