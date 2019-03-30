unit ucontrole_estoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Combofil: TComboBox;
    Combopro: TComboBox;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    Button3: TButton;
    Label3: TLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Load_filial;
    procedure Load_produtos;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.FormShow(Sender: TObject);
begin
    Load_filial;
    Load_produtos;
end;

procedure TForm1.Load_filial;
begin
   Combofil.Items.Add('Mateus Cidade Oper�ria');
   Combofil.Items.Add('Mateus Cohama');
   Combofil.Items.Add('Mateus Cohabe');
   Combofil.ItemIndex := 0;

end;

procedure TForm1.Load_produtos;
begin
   Combopro.Items.Add('Arroz');
   Combopro.Items.Add('Cuzcuz');
   Combopro.Items.Add('Farinha');
   Combopro.Items.Add('Bolacha');
   Combopro.ItemIndex := 0;
end;

end.