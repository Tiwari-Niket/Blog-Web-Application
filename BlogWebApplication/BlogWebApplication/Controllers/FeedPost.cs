using Database;
using Database.DBEntities;
using Database.ModelEntities;
using Database.SearchEntity;
using Microsoft.AspNetCore.Http.HttpResults;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace BlogWebApplication.Controllers
{
    public class FeedPost : ControllerBase
    {
        public InboxContext _dbContext { get; }
        public FeedPost(InboxContext dbContext) { _dbContext = dbContext; }

        [HttpGet("allFeed")]
        public List<Posts> AllPost()
        {
            var posts = _dbContext.Posts_niket.ToList();
            return posts;
        }


        [HttpPost("feedByUserId")]
        public List<Posts> UserPost([FromBody] FindUser formdata)
        {
            var posts = _dbContext.Posts_niket.Where(p => p.UserId == formdata.UserID).ToList();
            return posts;
        }

        [HttpPost("addFeed")]
        public void AddFeed([FromBody] AddPost formdata)
        {
            var lastPostId = _dbContext.Posts_niket.OrderByDescending(u => u.PostId).FirstOrDefault();
            Posts newPost = new Posts()
            {
                PostId = lastPostId.PostId+1,
                UserId = formdata.UserId,
                Title = formdata.Title,
                Description = formdata.Description
            };
            _dbContext.Posts_niket.Add(newPost);
            _dbContext.SaveChanges();
        }

        [HttpPost("deleteFeed")]
        public void DeleteFeed([FromBody] DeletePost PostId)
        {
            var findPost = _dbContext.Posts_niket.Find(PostId);
            _dbContext.Posts_niket.Remove(findPost);
            _dbContext.SaveChanges();
        }

        //[HttpDelete("deleteFeed")]
        //public void DeleteFeed([FromQuery] int postId) 
        //{
        //    var findPost = _dbContext.Posts_niket.Find(postId);
        //    _dbContext.Posts_niket.Remove(findPost);
        //    _dbContext.SaveChanges();
        //}

        [HttpPut("updateFeed")]
        public void UpdateFeed([FromBody] Posts formdata)
        {
            var findPost = _dbContext.Posts_niket.Find(formdata.PostId);
            findPost.Title = formdata.Title;
            findPost.Description = formdata.Description;
            _dbContext.Posts_niket.Update(findPost);
            _dbContext.SaveChanges();
        }
    }
}