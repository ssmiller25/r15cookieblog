---
title: The Scourge of Passwords
date: 2019-02-28T23:17:28.979Z
---
This weekend I decided to rotate passwords for the sake of good account hygiene.  What a pain!  Fortunately, I had a password manager to help out, but that still did not reduce the 5-10 minutes per site to log in, find where to change the password, actually change the password, and verify the new password worked!  It was a good exercise, but the idea of regularly rotating passwords for all of my accounts is pure lunacy.  

So what can an individual do?  I would suggest:

* **Use a password manager.**  Unique logins should be used for each site, which really can only be accomplished with a password manager.  I personally like [Bitwarden](https://bitwarden.com/) but there are many others like Lastpass, 1Password, Dashlane, etc.
* **Use external authentication if possible.**  Whenever a site allows it, tie your login directly to a third party authorizer like Google, Facebook, Twitter, or others.  
  * But...beware of what permissions you give to these sites when you log in!  Sometimes they will request items like friend lists, the ability to post to your feed, and other permissions that you may not be comfortable with.

If you are a developer:

* **Use password-free techniques.**  Unless you are dealing with highly secure data, use methods that don't require passwords at all.  See <https://auth0.com/passwordless> for a bit more details.  
* **Allow authentication from third parties.**  Allow your user to use existing credentials from big web properties like Google or Facebook.  Don't request too many permissions or take advantage of the permissions you request!
* **Have sane password requirements.**  If you do go down the route of using your own credentials, make sure your password requirements aren't crazy.  This includes policies like requiring a special character, but only from a list of five that are allowed.  Having a minimum of five character passwords, but only allowing a max of 10.  These types of policies will infuriate your users!  
* **Allow easy password changes.**  If you insist on managing your own authentication, then at least allow easy management of passwords.  I came across a few sites that made it fairly difficult, and one that actually did not provide a way to change a password!

I personally am a huge fan of leveraging [Auth0](https://auth0.com/) instead of rolling your own authentication.  Authentication and authorization are hard to do right, so why not let someone else do it for you?
