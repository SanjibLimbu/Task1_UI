class EmailData {
  static String subtitle =
      'Loream ipsum dolor amet consectetur adipiscing elit. Aenean. Loream ipsum dolor amet consectetur adipiscing elit. Aenean.';

  static String imageIcon = 'assets/images/image_type_icon.png';
  static String zipIcon = 'assets/images/zip_type_icon.png';

  static List emailData = [
    {
      'title': 'Welcome to LMU mailer',
      'subtitle': subtitle,
      'time': '8:00 AM',
      'icon': 'assets/images/profile_icon.png',
      'isUnread': false,
      'isStarred': false,
      'isImportant': false,
      'isFileAttached': false,
      'file': []
    },
    {
      'title': 'Unread email & starred',
      'subtitle': subtitle,
      'time': 'Dec 19',
      'icon': null,
      'isUnread': true,
      'isStarred': true,
      'isImportant': false,
      'isFileAttached': false,
      'file': []
    },
    {
      'title': 'Important Email',
      'subtitle': subtitle,
      'time': 'Dec 18',
      'icon': null,
      'isUnread': false,
      'isStarred': false,
      'isImportant': true,
      'isFileAttached': false,
      'file': []
    },
    {
      'title': 'Email with Attachment',
      'subtitle': subtitle,
      'time': '8:00 AM',
      'icon': null,
      'isUnread': false,
      'isStarred': false,
      'isImportant': false,
      'isFileAttached': true,
      'file': [
        {
          'file_icon': imageIcon,
          'file_name': 'CoverPreview.jpg',
        }
      ]
    },
     {
      'title': 'Email with Attachment',
      'subtitle': subtitle,
      'time': '8:00 AM',
      'icon': null,
      'isUnread': false,
      'isStarred': false,
      'isImportant': false,
      'isFileAttached': true,
      'file': [
        {
          'file_icon': zipIcon,
          'file_name': 'Image_file.zip',
        }
      ]
    },
    
  ];
}
