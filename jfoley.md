# Stuff from Hamlet

Turns out there's XML in these files.

    <SPEECH>
    <SPEAKER>HAMLET</SPEAKER>
    <LINE>Let me see.</LINE>
    <STAGEDIR>Takes the skull</STAGEDIR>
    <LINE>Alas, poor Yorick! I knew him, Horatio: a fellow</LINE>
    <LINE>of infinite jest, of most excellent fancy: he hath</LINE>
    <LINE>borne me on his back a thousand times; and now, how</LINE>
    <LINE>abhorred in my imagination it is! my gorge rims at</LINE>
    <LINE>it. Here hung those lips that I have kissed I know</LINE>
    <LINE>not how oft. Where be your gibes now? your</LINE>
    <LINE>gambols? your songs? your flashes of merriment,</LINE>
    <LINE>that were wont to set the table on a roar? Not one</LINE>
    <LINE>now, to mock your own grinning? quite chap-fallen?</LINE>
    <LINE>Now get you to my lady's chamber, and tell her, let</LINE>
    <LINE>her paint an inch thick, to this favour she must</LINE>
    <LINE>come; make her laugh at that. Prithee, Horatio, tell</LINE>
    <LINE>me one thing.</LINE>
    </SPEECH>

Which means that we can tabulate the different speakers!

    source /course/bin/setup
    grep "SPEAKER" /course/data/shakespeare-xml/hamlet*.xml | sort | uniq -c

The first line adds a bunch of "utility" scripts that I wrote in python to our path. You can see them all here:

    ls /course/bin/

With these scripts, we can do some things like analyzing the words that co-occur near a particular word:

    grep -ihw blood /course/data/shakespeare-xml/*.xml | 
