namespace catastro_final.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class addedNamesField : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.AspNetUsers", "Names", c => c.String());
        }
        
        public override void Down()
        {
            DropColumn("dbo.AspNetUsers", "Names");
        }
    }
}
