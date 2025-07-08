using System.Collections.ObjectModel;
using System.Windows.Input;
using UserManagementApp.Models;

namespace UserManagementApp.ViewModels
{
    public class MainViewModel
    {
        public ObservableCollection<User> Users { get; set; }
        public ICommand AddUserCommand { get; set; }

        private int _userCounter = 1;

        public MainViewModel()
        {
            Users = new ObservableCollection<User>();
            AddUserCommand = new RelayCommand(OpenAddUserDialog);

            Users.Add(new User { No = _userCounter++, Username = "Cristiano Ronaldo", Role = "Admin", Status = "Aktif" });
            Users.Add(new User { No = _userCounter++, Username = "Cristiano Ronaldo", Role = "Admin", Status = "Aktif" });
        }

        private void OpenAddUserDialog(object obj)
        {
            var dialog = new Views.AddUserDialog();
            if (dialog.ShowDialog() == true)
            {
                var newUser = dialog.NewUser;
                newUser.No = _userCounter++;
                newUser.Status = "Aktif";
                Users.Add(newUser);
            }
        }
    }
}