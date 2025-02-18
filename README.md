
# Flashcard App

This is a Flashcard application built using Flutter. The app allows users to create, review, and study flashcards to improve memory and learning.

## Step By Step Implementation

### Step 1: Install the get_cli on your device

You can install the CLI in your system using the following command:

```
flutter pub global activate get_cli
```

### Step 2: Create a flutter project

Create a flutter project using the command:

```
flutter create .
```

Or you can create a project from `get_cli` using:

```
get create project
```

If you have an existing project, you can use the following command:

```
get create project
```

### Step 3: Create a page using command

Create a page that will contain the controller, view, and binding with the page name that you provide using the command:

```
get create page:page_name
```

It will create a folder structure like this:

```
file
```

It will have:
- **View file**: where you will create a UI like textfield, text, column, row.
- **Controllers**: contain API calls, navigation, and data handling.
- **Bindings**: classes where we declare our dependencies and bind them to the routes.

From the below commands, you can manage the app using the CLI as you now have access to the `get` command. Let's understand how to handle different things.

#### 1. To generate model file

Generate a model file for a given data file with:

```
get generate model on home with assets/models/user.json
```

Here, `assets/models/user.json` is the data file for which you want to create the model file.

#### 2. Add a package

To add a package to your project, use:

```
get install http
```

Here `http` is the package name you want to add to your project.

#### 3. To remove a package

To remove a package from your app, use:

```
get remove http
```

#### 4. To generate localization files

Generate localization files using:

```
get generate locales assets/locales
```

Here `assets/locales` is the path where you want to create the localization file.

#### 5. To install the dev dependency

To install a dev dependency, use:

```
get install flutter_launcher_icons --dev
```

#### 6. To update the get_cli

To update the `get_cli`, use:

```
get update
```
