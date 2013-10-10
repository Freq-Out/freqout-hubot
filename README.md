------

**Creation Date:** : 2013/10/10

**Revisions**: 

* 2013/10/10: _A_ by [Stephane Jourdan](mailto:stephane@freq-out.com)

------

## Running on Heroku

### Hubot Installation

* Source documentation: [Deploying Hubot to Heroku](https://github.com/github/hubot/blob/master/docs/deploying/heroku.md)
* Hall adapter: [GitHub Hubot-Hall](https://github.com/Hall/hubot-hall)

### Hubot Hall Configuration

You need to have a working heroku setup (see [Deploying Hubot to Heroku](https://github.com/github/hubot/blob/master/docs/deploying/heroku.md) for more information).
 
<pre>
heroku config:add HUBOT_HALL_EMAIL=""
heroku config:add HEROKU_URL=
heroku config:add HUBOT_HALL_PASSWORD=""
</pre>

## Hubot Scripts

There's an official catalog of [hubot scripts](https://hubot-script-catalog.herokuapp.com/) - [GitHub repo](https://github.com/github/hubot-scripts)

## Adding a script

* Add it to `hubot-scripts.json` and its dependencies to `package.json`.
* Push it to your heroku remote:

<pre>
git add .
git commit -m "my commit message"
git push heroku master
</pre>

## Restart the bot

You may want to get comfortable with `heroku logs` and `heroku restart` if you're having issues.
