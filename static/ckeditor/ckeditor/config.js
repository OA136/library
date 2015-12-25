﻿/**
 * Copyright (c) 2003-2015, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see LICENSE.md or http://ckeditor.com/license
 */

CKEDITOR.editorConfig = function( config ) {
	// Define changes to default configuration here. For example:
	// config.language = 'fr';
	// config.uiColor = '#AADC6E';
        config.width = 550;
        config.height = 400;
        config.resize_enabled = false;
    config.toolbar = 'Full';
    config.toolbar_Full = [
      ['Source','-','Save','NewPage','Preview','-','Templates'],
      ['Cut','Copy','Paste','PasteText','PasteFromWord','-','Print','SpellChecker', 'Scayt'],
      ['Undo','Redo','-','Find','Replace','-','SelectAll'],
      ['Form', 'Checkbox', 'Radio', 'TextField', 'Textarea', 'Select','Button', 'ImageButton', 'HiddenField'],
       '/',
      ['Bold','Italic','Underline','Strike','-','Subscript','Superscript'],
       ['NumberedList','BulletedList','-','Outdent','Indent','Blockquote'],
       ['JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock'],
       ['Link','Unlink','Anchor'],
      ['Image','Flash','Table','HorizontalRule','Smiley','SpecialChar','PageBreak'],
      '/',
        ['Styles','Format','Font','FontSize'],
       ['TextColor','BGColor']
    ];
};