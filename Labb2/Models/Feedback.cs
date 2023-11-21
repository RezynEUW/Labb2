namespace Labb2.Models
{
    public class Feedback
    {
        public int FeedbackId { get; set; }
        public string UserFeedback { get; set; }
        public int UserId { get; set; } // Foreign key to the User model
        // Other properties and navigation properties, if any...
    }
}
