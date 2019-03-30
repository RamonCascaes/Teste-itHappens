unit ucontrole_estoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type Tprodutos = record
       descri   : string;
       qtdtotal : Currency;
end;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Combofil: TComboBox;
    Combopro: TComboBox;
    edit_qtdpro: TEdit;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    edt_qtdtotal: TEdit;
    Label2: TLabel;
    Button3: TButton;
    Button4: TButton;
    Memo1: TMemo;
    procedure FormShow(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure ComboproChange(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    quatidade : Currency;
    procedure Load_filial;
    procedure Load_produtos;
    function quantidade_produto(descri : string) : currency;

  end;

var
  Form1: TForm1;

implementation
{$R *.dfm}

{ TForm1 }

procedure TForm1.Button3Click(Sender: TObject);
var i : Integer;
begin
   Memo1.Lines.Add('Produto :'+Combopro.Text+'    Quatidade total:'+FloatToStr( quantidade_produto(Combopro.Text)));
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  quatidade := FloatToCurr(edt_qtdtotal.Text);
end;

procedure TForm1.ComboproChange(Sender: TObject);
begin
    edit_qtdpro.Text := FloatToStr(quantidade_produto(Combopro.Text)) ;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
    Load_filial;
    Load_produtos;
end;

procedure TForm1.Load_filial;
begin
   Combofil.Items.Add('Selecione a filial');
   Combofil.Items.Add('Mateus Cidade Operária');
   Combofil.Items.Add('Mateus Cohama');
   Combofil.Items.Add('Mateus Cohabe');
   Combofil.ItemIndex := 0;

end;

procedure TForm1.Load_produtos;
begin
   Combopro.Items.Add('Selecione o produto');
   Combopro.Items.Add('Arroz');
   Combopro.Items.Add('Cuzcuz');
   Combopro.Items.Add('Farinha');
   Combopro.Items.Add('Bolacha');
   Combopro.ItemIndex := 0;
end;

function TForm1.quantidade_produto(descri : string): currency;
begin
    if descri = 'Arroz' then
        Result := 10 +  quatidade
    else if descri = 'Cuzcuz' then
        Result := 10 +  quatidade
     else if descri = 'Farinha' then
        Result := 10 +  quatidade
        else if descri = 'Bolacha' then
          Result := 10 +  quatidade
          else
            Result := 0;



end;

end.
