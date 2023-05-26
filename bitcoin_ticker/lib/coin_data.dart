import 'dart:convert';

import 'package:http/http.dart' as http;


const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

class CoinData {

  Future<double> getRate(String coin, String value) async{
    var url = Uri.parse('https://rest.coinapi.io/v1/exchangerate/$coin/$value?apikey=<YourAPIKey>');

    var response = await http.get(url);

    double result = await jsonDecode(response.body)['rate'];

    return result;
  }




}