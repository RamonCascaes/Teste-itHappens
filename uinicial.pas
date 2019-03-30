unit uinicial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TForm2 = class(TForm)
    MainMenu1: TMainMenu;
    Entrada1: TMenuItem;
    Entrada2: TMenuItem;
    Saida1: TMenuItem;
    Sair1: TMenuItem;
    procedure Entrada2Click(Sender: TObject);
    procedure Saida1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation
 uses ucontrole_estoque,ucontrole_saida ;

{$R *.dfm}

procedure TForm2.Entrada2Click(Sender: TObject);
var  f : TFcontrole_entrada;
begin
    f :=  TFcontrole_entrada.Create(nil);
    f.ShowModal;
    f.Destroy;
end;

procedure TForm2.Saida1Click(Sender: TObject);
var s : Tfcontrole_saida;
begin
    s := Tfcontrole_saida.Create(nil);
    s.ShowModal;
    s.Destroy;
end;

procedure TForm2.Sair1Click(Sender: TObject);
begin
    Close;
end;

end.
