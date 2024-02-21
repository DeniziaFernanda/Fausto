# fausto

Jogo infantil para aprender coisas como: alfabeto, número, frutas, animais, dias da semana, cores, desenhar, jogo quiz, e leitura.

# Contribuição
Aqui vão algumas notas para quem desejar contribuir
1. O projeto não tem um backend. Na pasta service tem os arquivos simulando um carregamento dos dados.

2. Quando fazer clone do projeto é necessário entrar no arquivo pubspec.yaml e baixar as dependências.

3. As dependências instaladas no pubspec.yaml são:
 audioplayers: ^5.2.1
 bloc: ^8.1.2
 flutter_tts: ^3.8.3
 audioplayers_linux: ^3.1.0

Muitas dessas podem gerar alguns conflitos dependendo da versão do Flutter, sistema operativo ou até mesmo o emulador que estiveres a usas. Tal como me foi necessário configurar o plugin audioplayers_linux quando trabalhava no Linux. Para resolver esses conflitos basta apenas investigar um pouco mais em https://pub.dev/packages o pacote que deseja.

4. A dependência flutter_tts não tem suporte para o Linux até a data atual. Isso implica que não conseguirás executar corretamente o app se estiveres a usar o emulador do Linux.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
