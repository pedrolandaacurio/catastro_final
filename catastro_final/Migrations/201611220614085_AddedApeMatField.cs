namespace catastro_final.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AddedApeMatField : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.AspNetUsers", "ApeMat", c => c.String());
        }
        
        public override void Down()
        {
            DropColumn("dbo.AspNetUsers", "ApeMat");
        }
    }
}
