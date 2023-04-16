class Burc {
  String _burcAdi;
  String _burcTarihi;
  String _burcDetay;
  String _burcKucukResim;
  String _burcBuyukResim;
  get burcAdi => this._burcAdi;

  set burcAdi(value) => this._burcAdi = value;

  get burcTarihi => this._burcTarihi;

  set burcTarihi(value) => this._burcTarihi = value;

  get burcDetay => this._burcDetay;

  set burcDetay(value) => this._burcDetay = value;

  get burcKucukResim => this._burcKucukResim;

  set burcKucukResim(value) => this._burcKucukResim = value;

  get burcBuyukResim => this._burcBuyukResim;

  set burcBuyukResim(value) => this._burcBuyukResim = value;

  Burc(this._burcAdi, this._burcTarihi, this._burcDetay, this._burcKucukResim,
      this._burcBuyukResim);
  // ignore: empty_constructor_bodies
 

  @override
  String toString() {
    return " $_burcAdi-$_burcBuyukResim";
  }
}
