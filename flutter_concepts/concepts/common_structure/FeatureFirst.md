The feature-first approach demands that we create a new folder for every new feature that we add to our app. And inside that folder, we can add the layers themselves as sub-folders.

Using the same example as above, we would organize our project like this:

```
‣ lib
  ‣ src
    ‣ features
      ‣ feature1
        ‣ presentation
        ‣ application
        ‣ domain
        ‣ data
      ‣ feature2
        ‣ presentation
        ‣ application
        ‣ domain
        ‣ data
```

I find this approach more logical because we can easily see all the files that belong to a certain feature, grouped by layer.

In comparison to the layer-first approach, there are some advantages:

whenever we want to add a new feature or modify an existing one, we can focus on just one folder.
if we want to delete a feature, there's only one folder to remove (two if we count the corresponding tests folder)
So it would appear that the feature-first approach wins hands down!

## Tip
**1. What if two or more separate features need to share some widgets or model classes?**

In these cases, it's easy to end up with folders called shared or common, or utils.

>[!NOTE]
>If your app has 20 features and has some code that needs to be shared by only two of them, should it really belong to a top-level shared folder?
>In this scenario, there is no right or wrong answer, and you have to use your best judgement on a case-by-case basis.

>[!NOTE]
> Organize the project structure around the domain layer.



## Feature-first is not about the UI!
### What is a "feature"?
- And I realized it's not about what the user sees, but what the user does:
    - authenticate
    - manage the shopping cart
    - checkout
    - view all past orders
    - leave a review

- Once I figured that out, everything fell into place. And I ended up with seven functional areas:

```
‣ lib
  ‣ src
    ‣ features
      ‣ address
        ‣ application
        ‣ data
        ‣ domain
        ‣ presentation
      ‣ authentication
        ...
      ‣ cart
        ...
      ‣ checkout
        ...
      ‣ orders
        ...
      ‣ products
        ‣ application
        ‣ data
        ‣ domain
        ‣ presentation
          ‣ admin
          ‣ product_screen
          ‣ products_list
      ‣ reviews
        ...
```

## How to do feature-first, the right way
In summary, the feature-first approach lets us structure our project around the functional requirements of our app.

>[!NOTE]
>When building Flutter apps, it's very common to have a ratio of 5:1 (or more) between UI code and business logic. If your `presentation` folder ends up with many files, don't be afraid to group them into sub-folders that represent smaller "sub-features".

For reference, here's how my final project structure ended up:

```
‣ lib
  ‣ src
    ‣ common_widgets
    ‣ constants
    ‣ exceptions
    ‣ features
      ‣ address
      ‣ authentication
      ‣ cart
      ‣ checkout
      ‣ orders
      ‣ products
      ‣ reviews
    ‣ localization
    ‣ routing
    ‣ utils
```