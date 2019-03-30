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
    Button1: TButton;
    Label2: TLabel;
    Button3: TButton;
    Button4: TButton;
    Memo1: TMemo;
    Edit_qtd: TEdit;
    Label3: TLabel;
    Button2: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    quatidade : Currency;
    procedure Load_filial;
    procedure Load_produtos;
    function quantidade_produto(descri : string) : currency;
    function quantidade_pendente(valor : Currency) : currency;
    function quantidade_disponivel(estoque,pendente : Currency) :Currency;

    Procedure Estoque;
    procedure PedidoEstoque;
    Procedure ItemPedidoEstoque;
    Function Filial(descri :string): string;
    Function Produto(Descri : string): string;

    Procedure LoadMemo;
    Procedure SavePedido;

    Procedure Resetform;
  end;

var
  Form1: TForm1;

implementation
{$R *.dfm}

{ TForm1 }

procedure TForm1.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
   LoadMemo;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
    SavePedido;
end;

procedure TForm1.Estoque;
begin

end;

function TForm1.Filial(descri: string): string;
begin
    Result := descri;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
    Load_filial;
    Load_produtos;
    Resetform;
end;

procedure TForm1.ItemPedidoEstoque;
begin

end;

procedure TForm1.LoadMemo;
begin
   Memo1.Lines.Add('Produto :'+Produto(Combopro.Text));
   Memo1.Lines.Add('Quantidade estoque    :'+FloatToStr( quantidade_produto(Combopro.Text)));
   Memo1.Lines.Add('Quatidade  pendente   :'+FloatToStr( quantidade_pendente(strtocurr(Edit_qtd.Text))));
   Memo1.Lines.Add('Quatidade  disponivel :'+FloatToStr( quantidade_disponivel(
          quantidade_produto(Combopro.Text) ,quantidade_pendente(strtocurr(Edit_qtd.Text)))));
   Memo1.Lines.Add('-------------------------------');

end;

procedure TForm1.Load_filial;
begin
   Combofil.Items.Add('Selecione a filial');
   Combofil.Items.Add('Mateus Cidade Oper�ria');
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

procedure TForm1.PedidoEstoque;
begin

end;

function TForm1.Produto(Descri: string): string;
begin
   Result := Descri;
end;

function TForm1.quantidade_disponivel(estoque, pendente: Currency): Currency;
begin
   Result := (estoque-pendente);
end;

function TForm1.quantidade_pendente(valor: currency): currency;
begin
   Result := valor ;
end;

function TForm1.quantidade_produto(descri : string): currency;
begin
    if descri = 'Arroz' then
        Result := 10 +  quatidade
    else if descri = 'Cuzcuz' then
        Result := 30 +  quatidade
     else if descri = 'Farinha' then
        Result := 50 +  quatidade
        else if descri = 'Bolacha' then
          Result := 10 +  quatidade
          else
            Result := 0;
end;

procedure TForm1.Resetform;
begin
   Edit_qtd.Text      := '0,00';
end;

procedure TForm1.SavePedido;
begin
   Memo1.Clear;
   LoadMemo;
end;

end.
