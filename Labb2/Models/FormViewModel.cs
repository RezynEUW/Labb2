namespace Labb2.Models
{
    public class FormViewModel
    {
        public string NewUserFeedback { get; set; }
        public List<Feedback> Feedbacks { get; set; }

        public FormViewModel()
        {
            Feedbacks = new List<Feedback>();
        }

        // ... Other properties and nested classes ...
    }
}
