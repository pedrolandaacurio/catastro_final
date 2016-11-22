namespace catastro_final.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AddedApePatField : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.AspNetUsers", "ApePat", c => c.String());
        }
        
        public override void Down()
        {
            DropColumn("dbo.AspNetUsers", "ApePat");
        }
    }
}
