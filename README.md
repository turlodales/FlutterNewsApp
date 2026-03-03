# Flutter News App

A Flutter news application powered by [NewsAPI](https://newsapi.org/) that delivers top headlines and category-based news browsing.

![Flutter news app theindianappguy](https://user-images.githubusercontent.com/55942632/81510826-7fccd680-9332-11ea-9e67-ad6268aadf35.png)

## Features

- Browse top headlines from multiple countries
- Filter news by categories: Business, Entertainment, General, Health, Science, Sports, Technology
- Read full articles in an in-app WebView
- Cached network images for smooth scrolling
- Clean Material Design UI

## Prerequisites

- Flutter 3.10 or higher
- Dart 3.0 or higher
- A free API key from [NewsAPI.org](https://newsapi.org/)

## Installation

1. Clone the repository:
```bash
git clone https://github.com/theindianappguy/FlutterNewsApp.git
cd FlutterNewsApp
```

2. Add your NewsAPI key in `lib/secret.dart`:
```dart
const String apiKey = 'YOUR_API_KEY_HERE';
```

3. Install dependencies:
```bash
flutter pub get
```

4. Run the app:
```bash
flutter run
```

## Project Structure

```
lib/
  main.dart                  - App entry point and MaterialApp setup
  secret.dart                - API key configuration
  models/
    article.dart             - Article data model
    categorie_model.dart     - Category data model
  helper/
    data.dart                - Category data provider
    news.dart                - News API service (top headlines & category news)
    widgets.dart             - Reusable widgets (AppBar, NewsTile)
  views/
    homepage.dart            - Home page with categories and top headlines
    categorie_news.dart      - Category-filtered news page
    article_view.dart        - In-app article WebView
```

## Learn

Watch the tutorial on how to build this Flutter news app with NewsAPI:
[YouTube Tutorial](https://youtu.be/aaGcER1uUoE)

## Created & Maintained By

[Sanskar Tiwari](https://github.com/theindianappguy) ([@theindianappguy](https://twitter.com/Theindianappguy)) ([YouTube](https://www.youtube.com/c/SanskarTiwari))

> If you found this project helpful or you learned something from the source code and want to thank me,
> consider checking out what I am building at [MagicSlides.app](https://www.magicslides.app), [MagicForm.app](https://www.magicform.app) & [SheetAI.app](https://www.sheetai.app)

## License

    Copyright 2020 Sanskar Tiwari

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
