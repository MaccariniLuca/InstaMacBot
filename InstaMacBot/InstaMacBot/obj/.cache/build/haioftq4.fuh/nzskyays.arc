﻿<!DOCTYPE html>
<!--[if IE]><![endif]-->
<html>
  
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Class ScrapeAccountsFromLocationBot
   </title>
    <meta name="viewport" content="width=device-width">
    <meta name="title" content="Class ScrapeAccountsFromLocationBot
   ">
    <meta name="generator" content="docfx 2.58.0.0">
    
    <link rel="shortcut icon" href="../favicon.ico">
    <link rel="stylesheet" href="../styles/docfx.vendor.css">
    <link rel="stylesheet" href="../styles/docfx.css">
    <link rel="stylesheet" href="../styles/main.css">
    <meta property="docfx:navrel" content="../toc.html">
    <meta property="docfx:tocrel" content="toc.html">
    
    
    
  </head>
  <body data-spy="scroll" data-target="#affix" data-offset="120">
    <div id="wrapper">
      <header>
        
        <nav id="autocollapse" class="navbar navbar-inverse ng-scope" role="navigation">
          <div class="container">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              
              <a class="navbar-brand" href="../index.html">
                <img id="logo" class="svg" src="../logo.svg" alt="">
              </a>
            </div>
            <div class="collapse navbar-collapse" id="navbar">
              <form class="navbar-form navbar-right" role="search" id="search">
                <div class="form-group">
                  <input type="text" class="form-control" id="search-query" placeholder="Search" autocomplete="off">
                </div>
              </form>
            </div>
          </div>
        </nav>
        
        <div class="subnav navbar navbar-default">
          <div class="container hide-when-search" id="breadcrumb">
            <ul class="breadcrumb">
              <li></li>
            </ul>
          </div>
        </div>
      </header>
      <div role="main" class="container body-content hide-when-search">
        
        <div class="sidenav hide-when-search">
          <a class="btn toc-toggle collapse" data-toggle="collapse" href="#sidetoggle" aria-expanded="false" aria-controls="sidetoggle">Show / Hide Table of Contents</a>
          <div class="sidetoggle collapse" id="sidetoggle">
            <div id="sidetoc"></div>
          </div>
        </div>
        <div class="article row grid-right">
          <div class="col-md-10">
            <article class="content wrap" id="_content" data-uid="InstaMacBot.classes.ScrapeAccountsFromLocationBot">
  
  
  <h1 id="InstaMacBot_classes_ScrapeAccountsFromLocationBot" data-uid="InstaMacBot.classes.ScrapeAccountsFromLocationBot" class="text-break">Class ScrapeAccountsFromLocationBot
  </h1>
  <div class="markdown level0 summary"><p>this class represents a screaper bot that extract all accounts that had recently posted a photo tagging a target location (limit about 20.000 accounts)
objects of this class are mutable</p>
</div>
  <div class="markdown level0 conceptual"></div>
  <div class="inheritance">
    <h5>Inheritance</h5>
    <div class="level0"><span class="xref">System.Object</span></div>
    <div class="level1"><a class="xref" href="InstaMacBot.classes.SSSBot.html">SSSBot</a></div>
    <div class="level2"><span class="xref">ScrapeAccountsFromLocationBot</span></div>
  </div>
  <div classs="implements">
    <h5>Implements</h5>
    <div><a class="xref" href="InstaMacBot.classes.StartStopBot.html">StartStopBot</a></div>
  </div>
  <div class="inheritedMembers">
    <h5>Inherited Members</h5>
    <div>
      <a class="xref" href="InstaMacBot.classes.SSSBot.html#InstaMacBot_classes_SSSBot_status">SSSBot.status</a>
    </div>
    <div>
      <a class="xref" href="InstaMacBot.classes.SSSBot.html#InstaMacBot_classes_SSSBot_console">SSSBot.console</a>
    </div>
    <div>
      <a class="xref" href="InstaMacBot.classes.SSSBot.html#InstaMacBot_classes_SSSBot_is_running">SSSBot.is_running</a>
    </div>
    <div>
      <span class="xref">System.Object.ToString()</span>
    </div>
    <div>
      <span class="xref">System.Object.Equals(System.Object)</span>
    </div>
    <div>
      <span class="xref">System.Object.Equals(System.Object, System.Object)</span>
    </div>
    <div>
      <span class="xref">System.Object.ReferenceEquals(System.Object, System.Object)</span>
    </div>
    <div>
      <span class="xref">System.Object.GetHashCode()</span>
    </div>
    <div>
      <span class="xref">System.Object.GetType()</span>
    </div>
    <div>
      <span class="xref">System.Object.MemberwiseClone()</span>
    </div>
  </div>
  <h6><strong>Namespace</strong>: <a class="xref" href="InstaMacBot.classes.html">InstaMacBot.classes</a></h6>
  <h6><strong>Assembly</strong>: InstaMacBot.dll</h6>
  <h5 id="InstaMacBot_classes_ScrapeAccountsFromLocationBot_syntax">Syntax</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public class ScrapeAccountsFromLocationBot : SSSBot, StartStopBot</code></pre>
  </div>
  <h3 id="constructors">Constructors
  </h3>
  
  
  <a id="InstaMacBot_classes_ScrapeAccountsFromLocationBot__ctor_" data-uid="InstaMacBot.classes.ScrapeAccountsFromLocationBot.#ctor*"></a>
  <h4 id="InstaMacBot_classes_ScrapeAccountsFromLocationBot__ctor_InstaMacBot_classes_UserApi_InstaMacBot_classes_BotConsole_" data-uid="InstaMacBot.classes.ScrapeAccountsFromLocationBot.#ctor(InstaMacBot.classes.UserApi,InstaMacBot.classes.BotConsole)">ScrapeAccountsFromLocationBot(UserApi, BotConsole)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public ScrapeAccountsFromLocationBot(UserApi Utente, BotConsole tx_console = null)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InstaMacBot.classes.UserApi.html">UserApi</a></td>
        <td><span class="parametername">Utente</span></td>
        <td></td>
      </tr>
      <tr>
        <td><a class="xref" href="InstaMacBot.classes.BotConsole.html">BotConsole</a></td>
        <td><span class="parametername">tx_console</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InstaMacBot_classes_ScrapeAccountsFromLocationBot__ctor_" data-uid="InstaMacBot.classes.ScrapeAccountsFromLocationBot.#ctor*"></a>
  <h4 id="InstaMacBot_classes_ScrapeAccountsFromLocationBot__ctor_InstaMacBot_classes_UserApi_System_String_InstaMacBot_classes_BotConsole_" data-uid="InstaMacBot.classes.ScrapeAccountsFromLocationBot.#ctor(InstaMacBot.classes.UserApi,System.String,InstaMacBot.classes.BotConsole)">ScrapeAccountsFromLocationBot(UserApi, String, BotConsole)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public ScrapeAccountsFromLocationBot(UserApi Utente, string location, BotConsole tx_console = null)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InstaMacBot.classes.UserApi.html">UserApi</a></td>
        <td><span class="parametername">Utente</span></td>
        <td></td>
      </tr>
      <tr>
        <td><span class="xref">System.String</span></td>
        <td><span class="parametername">location</span></td>
        <td></td>
      </tr>
      <tr>
        <td><a class="xref" href="InstaMacBot.classes.BotConsole.html">BotConsole</a></td>
        <td><span class="parametername">tx_console</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h3 id="methods">Methods
  </h3>
  
  
  <a id="InstaMacBot_classes_ScrapeAccountsFromLocationBot_clear_extracted_list_" data-uid="InstaMacBot.classes.ScrapeAccountsFromLocationBot.clear_extracted_list*"></a>
  <h4 id="InstaMacBot_classes_ScrapeAccountsFromLocationBot_clear_extracted_list" data-uid="InstaMacBot.classes.ScrapeAccountsFromLocationBot.clear_extracted_list">clear_extracted_list()</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public void clear_extracted_list()</code></pre>
  </div>
  
  
  <a id="InstaMacBot_classes_ScrapeAccountsFromLocationBot_save_on_file_extracted_list_bot_file_saver_" data-uid="InstaMacBot.classes.ScrapeAccountsFromLocationBot.save_on_file_extracted_list_bot_file_saver*"></a>
  <h4 id="InstaMacBot_classes_ScrapeAccountsFromLocationBot_save_on_file_extracted_list_bot_file_saver_System_String_" data-uid="InstaMacBot.classes.ScrapeAccountsFromLocationBot.save_on_file_extracted_list_bot_file_saver(System.String)">save_on_file_extracted_list_bot_file_saver(String)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public void save_on_file_extracted_list_bot_file_saver(string path_file_extension)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.String</span></td>
        <td><span class="parametername">path_file_extension</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InstaMacBot_classes_ScrapeAccountsFromLocationBot_set_location_" data-uid="InstaMacBot.classes.ScrapeAccountsFromLocationBot.set_location*"></a>
  <h4 id="InstaMacBot_classes_ScrapeAccountsFromLocationBot_set_location_System_String_" data-uid="InstaMacBot.classes.ScrapeAccountsFromLocationBot.set_location(System.String)">set_location(String)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public void set_location(string location)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.String</span></td>
        <td><span class="parametername">location</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InstaMacBot_classes_ScrapeAccountsFromLocationBot_start_" data-uid="InstaMacBot.classes.ScrapeAccountsFromLocationBot.start*"></a>
  <h4 id="InstaMacBot_classes_ScrapeAccountsFromLocationBot_start" data-uid="InstaMacBot.classes.ScrapeAccountsFromLocationBot.start">start()</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public override void start()</code></pre>
  </div>
  <h5 class="overrides">Overrides</h5>
  <div><a class="xref" href="InstaMacBot.classes.SSSBot.html#InstaMacBot_classes_SSSBot_start">SSSBot.start()</a></div>
  
  
  <a id="InstaMacBot_classes_ScrapeAccountsFromLocationBot_stop_" data-uid="InstaMacBot.classes.ScrapeAccountsFromLocationBot.stop*"></a>
  <h4 id="InstaMacBot_classes_ScrapeAccountsFromLocationBot_stop_System_Boolean_" data-uid="InstaMacBot.classes.ScrapeAccountsFromLocationBot.stop(System.Boolean)">stop(Boolean)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public override void stop(bool save_infos = false)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Boolean</span></td>
        <td><span class="parametername">save_infos</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="overrides">Overrides</h5>
  <div><a class="xref" href="InstaMacBot.classes.SSSBot.html#InstaMacBot_classes_SSSBot_stop_System_Boolean_">SSSBot.stop(Boolean)</a></div>
  <h3 id="implements">Implements</h3>
  <div>
      <a class="xref" href="InstaMacBot.classes.StartStopBot.html">StartStopBot</a>
  </div>
</article>
          </div>
          
          <div class="hidden-sm col-md-2" role="complementary">
            <div class="sideaffix">
              <div class="contribution">
                <ul class="nav">
                </ul>
              </div>
              <nav class="bs-docs-sidebar hidden-print hidden-xs hidden-sm affix" id="affix">
                <h5>In This Article</h5>
                <div></div>
              </nav>
            </div>
          </div>
        </div>
      </div>
      
      <footer>
        <div class="grad-bottom"></div>
        <div class="footer">
          <div class="container">
            <span class="pull-right">
              <a href="#top">Back to top</a>
            </span>
            
            <span>Generated by <strong>DocFX</strong></span>
          </div>
        </div>
      </footer>
    </div>
    
    <script type="text/javascript" src="../styles/docfx.vendor.js"></script>
    <script type="text/javascript" src="../styles/docfx.js"></script>
    <script type="text/javascript" src="../styles/main.js"></script>
  </body>
</html>