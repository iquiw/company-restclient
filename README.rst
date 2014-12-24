============================
 company-restclient |melpa|
============================

`Company-mode`_ completion back-end for `restclient-mode`_.

It provides auto-completion for HTTP methods and headers in `restclient-mode`_.
Completion source is given by `know-your-http-well`_.


Installation
============

Depends
-------
* cl-lib
* `company-mode`_
* `know-your-http-well`_

Setup from MELPA_
-----------------
1. Install from `MELPA`_::

     M-x package-install RET company-restclient RET


2. Add ``company-restclient`` to ``company-backends`` after loading `company-mode`_.

   .. code:: emacs-lisp

     (add-to-list 'company-backends 'company-restclient)

Setup from Git
--------------
1. Install from Git::

     git clone https://github.com/iquiw/company-restclient.git

2. Add ``company-restclient`` to ``company-backends`` after loading `company-mode`_.

   .. code:: emacs-lisp

     (add-to-list 'load-path "/path/to/company-restclient")
     (add-to-list 'company-backends 'company-restclient)


Feature
=======
* HTTP method name completion

* HTTP header name completion

  | If header name starts with uppercase character, the completion result is capitalized (e.g. "Content-Type").
  | Otherwise, the completion result contains lowercase characters only (e.g. "content-type").

* Description about HTTP method and header is shown in minibuffer

License
=======
Public domain

.. _company-mode: http://company-mode.github.io/
.. _restclient-mode: https://github.com/pashky/restclient.el
.. _know-your-http-well: https://github.com/for-GET/know-your-http-well
.. _MELPA: http://melpa.milkbox.net/
.. |melpa| image:: http://melpa.org/packages/company-restclient-badge.svg
           :target: http://melpa.org/#/company-restclient
