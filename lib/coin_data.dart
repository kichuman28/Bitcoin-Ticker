import 'package:http/http.dart' as http;
import 'dart:convert';

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

const coinAPIURL = 'https://rest.coinapi.io/v1/exchangerate';
const apiKey = '8CD3BE9E-27AF-492E-9E74-65A561D64890';




class CoinData {


  Future getCoinData1(String? selectedCurrency) async {

    var urg = Uri.parse('$coinAPIURL/BTC/$selectedCurrency?apikey=$apiKey');
    http.Response response = await http.get(urg);

    if(response.statusCode == 200){
      String data = response.body;

      var decodedData = jsonDecode(data);
      var lastPrice = decodedData['rate'];
      return lastPrice;
    }else{
      print(response.statusCode);
      throw 'Problem with the get request';
    }
  }

  Future getCoinData2(String? selectedCurrency) async {

    var urg = Uri.parse('$coinAPIURL/ETH/$selectedCurrency?apikey=$apiKey');
    http.Response response = await http.get(urg);

    if(response.statusCode == 200){
      String data = response.body;

      var decodedData = jsonDecode(data);
      var lastPrice = decodedData['rate'];
      return lastPrice;
    }else{
      print(response.statusCode);
      throw 'Problem with the get request';
    }
  }

  Future getCoinData3(String? selectedCurrency) async {

    var urg = Uri.parse('$coinAPIURL/LTC/$selectedCurrency?apikey=$apiKey');
    http.Response response = await http.get(urg);

    if(response.statusCode == 200){
      String data = response.body;

      var decodedData = jsonDecode(data);
      var lastPrice = decodedData['rate'];
      return lastPrice;
    }else{
      print(response.statusCode);
      throw 'Problem with the get request';
    }
  }
}
