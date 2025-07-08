using System.Windows;
using UserManagementApp.Models;

namespace UserManagementApp.Views
{
    public partial class AddUserDialog : Window
    {
        public User NewUser { get; private set; } = new User();

        public AddUserDialog()
        {
            InitializeComponent();
        }

        private void Save_Click(object sender, RoutedEventArgs e)
        {
            NewUser.Username = UsernameBox.Text;
            NewUser.Role = RoleBox.Text;
            DialogResult = true;
            Close();
        }
    }
}