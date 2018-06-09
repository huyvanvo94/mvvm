## Model View ViewModel 

*Model* Classical model that holds business logic and run time data. 

*View* Classical view. `View` should be dumb as possible.

*ViewModel* Maps model to `Controller` in MVC 


Why MVVM? When writing enterprise apps the controller will grow to a size that becomes hard to maintain; typically 
holding all the presentation logic and such. In MVVM, the logic is delegated to VM and VM maps the model to the view.
As a result controllers become thin as possible. 
