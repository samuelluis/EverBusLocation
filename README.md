Ever-Bus-Location
=================
h1. RMagick 0.0.0$ README

h2. YY/MM/DD

h3. Table of Contents

* "Introduction":#intro
* "Prerequisites":#prereq
* "Installing RMagick":#install
* "Configuration Options":#config
* "Things that can go wrong":#wrong
* "Upgrading":#upgrade
* "Uninstalling":#uninstall
* "More samples":#samples
* "Reporting Bugs":#bugs
* "Contact Information":#contact
* "Credits":#credits
* "License":#license

h2(#intro). Introduction

RMagick is an interface between the Ruby programming language and the
ImageMagick image processing library.

h2(#prereq). Prerequisites

*O/S* Linux, &#042;BSD, OS X, Windows 2000, XP, Vista, other &#042;nix-like systems.

*Ruby* Version 1.8.2 or later. You can get Ruby from "www.ruby-lang.org":http://www.ruby-lang.org.
The use of versions of Ruby older than 1.8.4 with RMagick is deprecated. Support will be
removed in a future release.

*ImageMagick* Version 6.3.0 or later. You can get ImageMagick from "www.imagemagick.org":http://www.imagemagick.org.

h2(#install). Installing RMagick

First install ImageMagick. Complete and up-to-date instructions for installing
ImageMagick on Linux, &#042;BSD, and other &#042;nix-type O/S's are available
"here":http://rmagick.rubyforge.org/install-linux.html. Use steps 0, 1, and 2.
Similarly, instructions for installing ImageMagick using MacPorts on OS X
are available "here":http://rmagick.rubyforge.org/install-osx.html. Use steps
1 and 2.

This release of RMagick uses Minero Aoki's setup.rb script for installation.
See the next section for configuration options. Usually you do not need to
specify any of these options. You can get more information about setup.rb from
his "web site":<http://i.loveruby.net.

I assume you've already decompressed the tarball, or you wouldn't be reading
this. If you have not decompressed the tarball, do so with one of these commands,
depending on which tarball you have:

<pre>
    tar xvzf RMagick-0.0.0$-tar.gz              (gzipped tarball)
    tar xvjf RMagick-0.0.0$-tar.bz2             (bzipped tarball)
    7z e RMagick-x.y.z.tar.lzma -so | tar xv    (7zipped tarball)
</pre>

Change to the RMagick-0.0.0 directory. If you are not using any
configuration options (usually you don't need to) enter the command

<pre>
   ruby setup.rb
</pre>

Note that setup.rb executes all the example programs, so this can take
some time.  This process both builds the example images used in the
documentation and validates your RMagick installation.

After this command completes, make sure you have root privileges (that
is, login as root or use su or sudo) and enter the command

<pre>
    ruby setup.rb install
</pre>

h2(#config). Configuration options

Type @ruby setup.rb --help@ to see a list of configuration options.  In
addition to the regular options, there are a few RMagick-specific options:

h4. --doc-dir=directory

Specify the directory to install the RMagick documentation.
By default this is $prefix/share/RMagick, where $prefix is the
prefix specified by --prefix. For example, to install the
documentation in /Users/me/RMagick, specify:

<pre>
    ruby setup.rb --doc-dir=/Users/me/RMagick
</pre>

h4. --allow-example-errors

Normally the documentation installation terminates if 5 examples fail.
If you use this option, the installation does not check for failing
examples and will always complete. This option is useful if you're
having trouble installing RMagick and you want to see all the failing examples.

h4. -- disable-htmldoc

By default the install process runs all the RMagick example programs and
generates HTML versions of all the examples.  This option causes the
install process to skip this step.  No install verification will take
place and no documentation will be installed.

h2(#wrong). Things that can go wrong

The "RMagick installation FAQ":http://rmagick.rubyforge.org/install-faq.html
has answers to the most commonly reported problems.

h4. Can't install RMagick. Can't find libMagick or one of the dependent libraries. Check the mkmf.log file for more detailed information.

Typically this message means that one or more of the libraries that ImageMagick
depends on hasn't been installed. Examine the mkmf.log file in the ext/RMagick
subdirectory of the installation directory for any error messages. These messages
typically contain enough additional information for you to be able to diagnose
the problem. Also see "this FAQ":http://rmagick.rubyforge.org/install-faq.html#libmagick.

h4. Cannot open shared object file

If you get a message like this:

<pre>
    $DIR/RMagick.rb:11:in `require': libMagick.so.0:
      cannot open shared object file: No such file or directory -
      $DIR/RMagick2.so (LoadError)
</pre>

you probably do not have the directory in which the ImageMagick library
is installed in your load path.  An easy way to fix this is to define
the directory in the LD_LIBRARY_PATH environment variable.  For
example, suppose you installed the ImageMagick library libMagick.so in
/usr/local/lib.  (By default this is where it is installed.) Create the
LD_LIBRARY_PATH variable like this:

<pre>
        export LD_LIBRARY_PATH=/usr/local/lib
</pre>

On Linux, see @ld(1)@ and @ld.so(8)@ for more information. On other operating
systems, see the documentation for the dynamic loading facility.

h4. No such file or directory - "/tmp/rmagick6872.6"

When setup.rb is running the examples, if you get a message like this:

<pre>
    hook /home/me/src/RMagick-0.0.0/./post-setup.rb failed:
    No such file or directory - "/tmp/rmagick6872.6"
</pre>

you probably do not have a temporary directory environment variable set. Set
the TMPDIR environment variable to your temporary directory. For example:

<pre>
    export TMPDIR=/home/me/tmp
</pre>


h2(#upgrade). Upgrading

If you upgrade to a newer release of ImageMagick, make sure you're using a
release of RMagick that supports that release. It's safe to install a new
release of RMagick over an earlier release.

h2(#uninstall). Uninstalling

The uninstall.rb script will uninstall RMagick completely. Make sure you
have administrator priviledges. Then run this command:

<pre>
    ruby uninstall.rb
</pre>

h2(#samples). More samples

You can find more sample RMagick programs in the /example directory.
These programs are not installed in the RMagick documentation tree.

h2(#bugs). Reporting bugs

Please report bugs in RMagick, its documentation, or its installation
programs to me via the bug tracker on the "RMagick project page":http://rubyforge.org/projects/rmagick.
However, I can't help with Ruby installation and configuration or ImageMagick
installation and configuration. Information about reporting problems and
getting help for ImageMagick is available at the "ImageMagick web site":http://www.imagemagick.org
or the "ImageMagick Forum":http://www.imagemagick.org/discourse-server.

h2(#contact). Contact Information

*Author:* Tim Hunter, Omer Bar-or, Benjamin Thomas

*Email:* "rmagick@rubyforge.org":mailto:rmagick@rubyforge.org

*Web site:* "http://rmagick.rubyforge.org":http://rmagick.rubyforge.org

h2(#credits). Credits

Thanks to "ImageMagick Studio LLC":http://www.imagemagick.org for ImageMagick
and for hosting the RMagick documentation.

h2(#license). License

<pre>
Copyright &copy; 2002-2009 by Timothy P. Hunter

Changes since Nov. 2009 copyright &copy; by Benjamin Thomas and Omer Bar-or

Permission is hereby granted, free of charge, to any person obtaining a
copy of this software and associated documentation files (the "Software"),
to deal in the Software without restriction, including without limitation
the rights to use, copy, modify, merge, publish, distribute, sublicense,
and/or sell copies of the Software, and to permit persons to whom the
Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL
THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
DEALINGS IN THE SOFTWARE.
</pre>

<hr>
This file is marked up using "Textile":http://hobix.com/textile/ and converted
to HTML with "RedCloth":http://whytheluckystiff.net/ruby/redcloth/.
=================

== Welcome to Rails

Rails is a web-application framework that includes everything needed to create
database-backed web applications according to the Model-View-Control pattern.

This pattern splits the view (also called the presentation) into "dumb"
templates that are primarily responsible for inserting pre-built data in between
HTML tags. The model contains the "smart" domain objects (such as Account,
Product, Person, Post) that holds all the business logic and knows how to
persist themselves to a database. The controller handles the incoming requests
(such as Save New Account, Update Product, Show Post) by manipulating the model
and directing data to the view.

In Rails, the model is handled by what's called an object-relational mapping
layer entitled Active Record. This layer allows you to present the data from
database rows as objects and embellish these data objects with business logic
methods. You can read more about Active Record in
link:files/vendor/rails/activerecord/README.html.

The controller and view are handled by the Action Pack, which handles both
layers by its two parts: Action View and Action Controller. These two layers
are bundled in a single package due to their heavy interdependence. This is
unlike the relationship between the Active Record and Action Pack that is much
more separate. Each of these packages can be used independently outside of
Rails. You can read more about Action Pack in
link:files/vendor/rails/actionpack/README.html.


== Getting Started

1. At the command prompt, create a new Rails application:
       <tt>rails new myapp</tt> (where <tt>myapp</tt> is the application name)

2. Change directory to <tt>myapp</tt> and start the web server:
       <tt>cd myapp; rails server</tt> (run with --help for options)

3. Go to http://localhost:3000/ and you'll see:
       "Welcome aboard: You're riding Ruby on Rails!"

4. Follow the guidelines to start developing your application. You can find
the following resources handy:

* The Getting Started Guide: http://guides.rubyonrails.org/getting_started.html
* Ruby on Rails Tutorial Book: http://www.railstutorial.org/


== Debugging Rails

Sometimes your application goes wrong. Fortunately there are a lot of tools that
will help you debug it and get it back on the rails.

First area to check is the application log files. Have "tail -f" commands
running on the server.log and development.log. Rails will automatically display
debugging and runtime information to these files. Debugging info will also be
shown in the browser on requests from 127.0.0.1.

You can also log your own messages directly into the log file from your code
using the Ruby logger class from inside your controllers. Example:

  class WeblogController < ActionController::Base
    def destroy
      @weblog = Weblog.find(params[:id])
      @weblog.destroy
      logger.info("#{Time.now} Destroyed Weblog ID ##{@weblog.id}!")
    end
  end

The result will be a message in your log file along the lines of:

  Mon Oct 08 14:22:29 +1000 2007 Destroyed Weblog ID #1!

More information on how to use the logger is at http://www.ruby-doc.org/core/

Also, Ruby documentation can be found at http://www.ruby-lang.org/. There are
several books available online as well:

* Programming Ruby: http://www.ruby-doc.org/docs/ProgrammingRuby/ (Pickaxe)
* Learn to Program: http://pine.fm/LearnToProgram/ (a beginners guide)

These two books will bring you up to speed on the Ruby language and also on
programming in general.


== Debugger

Debugger support is available through the debugger command when you start your
Mongrel or WEBrick server with --debugger. This means that you can break out of
execution at any point in the code, investigate and change the model, and then,
resume execution! You need to install ruby-debug to run the server in debugging
mode. With gems, use <tt>sudo gem install ruby-debug</tt>. Example:

  class WeblogController < ActionController::Base
    def index
      @posts = Post.all
      debugger
    end
  end

So the controller will accept the action, run the first line, then present you
with a IRB prompt in the server window. Here you can do things like:

  >> @posts.inspect
  => "[#<Post:0x14a6be8
          @attributes={"title"=>nil, "body"=>nil, "id"=>"1"}>,
       #<Post:0x14a6620
          @attributes={"title"=>"Rails", "body"=>"Only ten..", "id"=>"2"}>]"
  >> @posts.first.title = "hello from a debugger"
  => "hello from a debugger"

...and even better, you can examine how your runtime objects actually work:

  >> f = @posts.first
  => #<Post:0x13630c4 @attributes={"title"=>nil, "body"=>nil, "id"=>"1"}>
  >> f.
  Display all 152 possibilities? (y or n)

Finally, when you're ready to resume execution, you can enter "cont".


== Console

The console is a Ruby shell, which allows you to interact with your
application's domain model. Here you'll have all parts of the application
configured, just like it is when the application is running. You can inspect
domain models, change values, and save to the database. Starting the script
without arguments will launch it in the development environment.

To start the console, run <tt>rails console</tt> from the application
directory.

Options:

* Passing the <tt>-s, --sandbox</tt> argument will rollback any modifications
  made to the database.
* Passing an environment name as an argument will load the corresponding
  environment. Example: <tt>rails console production</tt>.

To reload your controllers and models after launching the console run
<tt>reload!</tt>

More information about irb can be found at:
link:http://www.rubycentral.org/pickaxe/irb.html


== dbconsole

You can go to the command line of your database directly through <tt>rails
dbconsole</tt>. You would be connected to the database with the credentials
defined in database.yml. Starting the script without arguments will connect you
to the development database. Passing an argument will connect you to a different
database, like <tt>rails dbconsole production</tt>. Currently works for MySQL,
PostgreSQL and SQLite 3.

== Description of Contents

The default directory structure of a generated Ruby on Rails application:

  |-- app
  |   |-- assets
  |       |-- images
  |       |-- javascripts
  |       `-- stylesheets
  |   |-- controllers
  |   |-- helpers
  |   |-- mailers
  |   |-- models
  |   `-- views
  |       `-- layouts
  |-- config
  |   |-- environments
  |   |-- initializers
  |   `-- locales
  |-- db
  |-- doc
  |-- lib
  |   `-- tasks
  |-- log
  |-- public
  |-- script
  |-- test
  |   |-- fixtures
  |   |-- functional
  |   |-- integration
  |   |-- performance
  |   `-- unit
  |-- tmp
  |   |-- cache
  |   |-- pids
  |   |-- sessions
  |   `-- sockets
  `-- vendor
      |-- assets
          `-- stylesheets
      `-- plugins

app
  Holds all the code that's specific to this particular application.

app/assets
  Contains subdirectories for images, stylesheets, and JavaScript files.

app/controllers
  Holds controllers that should be named like weblogs_controller.rb for
  automated URL mapping. All controllers should descend from
  ApplicationController which itself descends from ActionController::Base.

app/models
  Holds models that should be named like post.rb. Models descend from
  ActiveRecord::Base by default.

app/views
  Holds the template files for the view that should be named like
  weblogs/index.html.erb for the WeblogsController#index action. All views use
  eRuby syntax by default.

app/views/layouts
  Holds the template files for layouts to be used with views. This models the
  common header/footer method of wrapping views. In your views, define a layout
  using the <tt>layout :default</tt> and create a file named default.html.erb.
  Inside default.html.erb, call <% yield %> to render the view using this
  layout.

app/helpers
  Holds view helpers that should be named like weblogs_helper.rb. These are
  generated for you automatically when using generators for controllers.
  Helpers can be used to wrap functionality for your views into methods.

config
  Configuration files for the Rails environment, the routing map, the database,
  and other dependencies.

db
  Contains the database schema in schema.rb. db/migrate contains all the
  sequence of Migrations for your schema.

doc
  This directory is where your application documentation will be stored when
  generated using <tt>rake doc:app</tt>

lib
  Application specific libraries. Basically, any kind of custom code that
  doesn't belong under controllers, models, or helpers. This directory is in
  the load path.

public
  The directory available for the web server. Also contains the dispatchers and the
  default HTML files. This should be set as the DOCUMENT_ROOT of your web
  server.

script
  Helper scripts for automation and generation.

test
  Unit and functional tests along with fixtures. When using the rails generate
  command, template test files will be generated for you and placed in this
  directory.

vendor
  External libraries that the application depends on. Also includes the plugins
  subdirectory. If the app has frozen rails, those gems also go here, under
  vendor/rails/. This directory is in the load path.
