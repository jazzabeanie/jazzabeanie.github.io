---
layout: post
title: "How To Export Your Shazam Tags"
date: 2015-11-08
---
Let's say that you have over 300 shazam tags and you want to export these to some sort a list. Here's how you might do that:
 - install XPath Helper Google Chrome plugin: https://chrome.google.com/webstore/detail/xpath-helper/hgimnogjllphhhkhlmebbmlgjoejdpjl
 - got to https://www.shazam.com/myshazam
 - scroll all the way to the bottom of the page until it stops loading more songs
 - Hit Ctrl-Shift-X (or Command-Shift-X on OS X) to open the XPath Helper console
 - hold shift and hover your mouse over a track title
 - in the QUERY box, change the '[314]' to '/' (the number in the square brackets in the number of your shazam tag. If you hover of the first one, expect to see [1])
 - highlight all in the RESULTS box, copy, then paste it into the first column of a google spreadsheet.
 - go back to the Shazam page and hold shift while hovering your mouse over an artist track. (If you have any, try to find an artist without a link attached to the name (these won't have album art). If you query an artist element with a link to it's own page, then any artists without a link will not be picked up and your spreadsheet will be missing artist data and won't match the song to the artist properly.)
 - change the '[314]' to '/' in the QUERY box.
 - copy everything in the RESULTS box, but this time paste it into Vim or a text editor.
 - Delete all the blank lines and white spaces. In vim, use the visual block selector and `:g/^$/d`.
 - highlight all, copy, then paste into the 2nd column of your google spreadsheet.
 - in the 3rd column, type `=CONCATENATE(A1, " - ", B1)`, then drag this down so that it fills the whole column.
 - copy this column and Paste special -> paste Value only in the 4th column
 - deleted the first 3 columns
 - File -> download as -> Comma-separated...
 - open the csv file in a text editor and do as you will.
