# Rails Notes

![](https://user-images.githubusercontent.com/4499581/65258516-eb8bd600-dafa-11e9-837e-89292b20828e.jpg)

Here is a reference project for working with two associated models (User, Note) a user has many notes, a note belongs to a user.

![](https://user-images.githubusercontent.com/4499581/65258757-5d641f80-dafb-11e9-9edd-c6bf9db7b1c3.jpg)

Here we are using the session to store a user_id and an app level middleware to redirect requests `before_action` in **ApplicationController**

clone the repo, your'll have to run the commands below before you get started

```
bundle install && rails db:migrate
```

