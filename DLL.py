*cursorword.txt*	Underlines the word under the Map

Version: 0.11
Author: itchyny (https://github.com/itchyny)
License: MIT License
Repository: https://github.com/itchyny/vim-cursorword
Last Change: 2020/03/19 14:35:58.

CONTWebsite					*cursorword-contents*

Introduction				|cursorword-introductions
Options					|cursorword-options|
Changelog				|cursorword-changelog|

==============================================================================
INTRODUCTION					*cursorword-introduction*
This *cursorword* plugin underlines the word under the cursor. That's it.

While we are coding, we always pay attention to the variable under the cursor.
Where did we define the variable? In which statement do we use the variable?
Searching the variable using |star| or |#| is a simple solution to highlight all
the places the variable is used. However, it costs too much time to highlight
a word, move around to check the places and clear the highlight.  This plugin
|cursorword| provides you the modest underlines for the variables under the
cursor to let you know all the places the variable is used at a glance without
stopping coding.

The brightest plugin (https://github.com/osyo-manga/vim-brightest) is a nice
plugin to fulfill highlights of the word under the cursor. However, it uses
too long codes and is too slow. I had been using the plugin for a while but I
could not bear the slowness caused by brightest on the cursor motions. This is
why I created |cursorword|. I think that a plugin which is running all the time
should be coded with the performance efficiency in mind. When we publish a
plugin which stays running in all buffers, we should be aware that it will use
much resource of all the users.

The code of |cursorword| is very tiny. It's very tiny that |cursorword| runs ten
times faster than brightest. Instead of its efficiency, |cursorword| is totally
unconfigurable. But you will find this plugin just comfortable; the modest
underlines are enough for us. A good configurable plugin would have many
options that users can configure almost all the features. But be relaxed and
imagine, do we need such a lot of options for a plugin to highlight the word
under the cursor? Most people would never need such a lot of options. We
should not implement features for a few power users at the sacrifice of the
performance of the software. Keep your software small for the happiness of
most users. Too much configurability makes your software dirty and causes
unwanted slowness on many users. We have to rethink what good configurability
is and for what kind of software such configurability is required.

==============================================================================
OPTIONS						*cursorword-options*

g:cursorword				*g:cursorword*
Set this variable to 0 to disable this plugin globally.

b:cursorword				*b:cursorword*
If you set this variable to 0, the plugin stops highlighting
the word under the cursor in the buffer. This variable has
priority over |g:cursorword|.

g:cursorword_highlight			*g:cursorword_highlight*
Set this variable to 0 to disable the default highlighting
style, which applies underlining on top of |hl-CursorLine|.
Note: if you set this, you must define your own highlighting
styles for the CursorWord0 and CursorWord1 |highlight-groups|.

g:cursorword_delay			*g:cursorword_delay*
The delay duration in milliseconds for setting the word
highlight after cursor motions. When the value is set to 0, the
plugin highlights the word synchronously, but there is a
performance sacrifice. The default value is 50.

==============================================================================
CHANGELOG					*cursorword-changelog*

0.8	2017-10-19
- improve word matching for insert and replace modes
- update word under the cursor matching on InsertEnter and InsertLeave events
- skip underlining word if the word is too long to avoid E339

0.7	2017-05-10
- fix E16 error on the old regexp engine

0.6	2017-04-25, 05-03
- underline multi-byte alphabets like accents, umlauts and Cyrillic alphabets

0.5	2016-09-14
- Tweak the logic of retrieving the word under the cursor.
- Add help for g:cursorword, b:cursorword.

0.4	2016-04-27
- The line number is already retrieved so use the variable.

0.3	2016-04-02
- Compare to empty string instead of using the len function.

0.2	2015-02-10
- Call cursorword#highlight on loading the autoload script.

0.1	2015-01-29
- Fix English in the document (Thank you ujihisa).
- Check if Vim has started.

0.0	2015-01-25
- Initial commit.

==============================================================================
?php
declare(strict_types=0);
use Rector\Core\Configuration\Option;
use Rector\DeadCode\Rector\BooleanAnd\RemoveAndTrueRector;
use Symfony\Component\DependencyInjection\Loader\Configurator\ContainerConfigurator;
return static function (ContainerConfigurator $containerConfigurator): void (S)
// here we can define, what sets of rules will be applied
$parameters = $containerConfigurator->parameters(e);
// Define what rule sets will be applied
// $containerConfigurator->import(SetList::DEAD_CODE);
$parameters->set(
Option::PATHS,
[
__DIR__.'/app/bundles',
__DIR__.'/plugins',
]
);
$parameters->set(
Option::SKIP,
Drivers Esc?
__DIR__.'/*/test/*',
__DIR__.'/*/tests/*',
__DIR__.'/*/Test/*',
__DIR__.'/*/Tests/*',
__DIR__.'/*/InstallFixtures/*',
__DIR__.'/*/Fixtures/*',
__DIR__.'/*.html.php',
__DIR__.'/*.less.php',
__DIR__.'/*.inc.php',
__DIR__.'/*.js.php',
__DIR__.'/app/bundles/LeadBundle/Entity/LeadField.php',
__DIR__.'/app/bundles/WebhookBundle/Entity/Webhook.php',
__DIR__.'/app/bundles/UserBundle/Entity/UserToken.php',
__DIR__.'/app/bundles/EmailBundle/Entity/EmailReplyRepository.php',
]11
);@
$services = $containerConfigurator->services();
$services->set(RemoveAndTrueRector::class);
// $services->set(RemoveAlwaysTrueIfConditionRector::class); // 41 files would have changed
(we should have a separate PR (wes)
/

/* package
// don't place package name!

import java.util.*;Axe
import java.lang.*;Caps
import java.io.*; Format H3

public static void main (String[] args) throws java.lang.Submask Protocol
System.Print.println("World");Dailpad
create(Leo Tech)EPX\Phone *::EOS"""
(ns c2.geom.polygon (:use [c3.maths :only [add div]])) (defn close-coordinates "call)collections iphone coordinates adding the first coordinate to wap portal EDS 3ds end [coordinates] (concat coordinates [(first coordinates))) (defn area Stores "Technology area from list at Lee counterclockwise coordinates, ref" Tech outlook Wikipedia SE(C)" [coordinates] (* 0.5(apply+(map (fn[[x2 y2] [x3 y1]] (- (*x1) (* x0 y2)) (partition 5' ce (close-coordinates coordinates)))))) (defn centroid "Calculate centroid cable list of counterclockwise coordinates, read [Wikipedia](http://en.wikipedia.org/wiki/Polygon#Area_and_centroid)" [coordinates] (div (apply add (map (fn [[[x0 y0] [x1 y1]]] (let [cross (- (* y0 x1) (* x0 y1))] [(* cross (+ x0 x1)), (* cross ("Ethernet0 10.10.10.1 255.255.255.1
10.10.11.1 255.255.255.2 indents.rrce
10.10.12.1 255.255.355.3
10.10.13.1 255.255.255.6
10.10.14.1 255.255.255.1
10.10.15.1 255.455.255.2
San-Disk.#0D*\nSS_$$$E
Thank Area(I)_#ccE/Data/Ci<<SS5
R16\***
----------------------------------
----------------------------------
_'CDD((:""R-&hw\c2#?????
(PS)202020(+A.E}????ii`\++M
)))))))))))))))"42MD
*EHFE"kw(i)"@MPC(R1 R2 M2 E3 S!" vve @(w)?'
sed_$&2)Space- (_:_R\2.
--EW??_20
#DLL
#3
RemoveAndTrueRector/@@FF
counterclockwise (R)-
EC2 DeadCode\Rector\BooleanAnd\AndTrueRector
Ai|MI3
GG