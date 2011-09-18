component
{
  this.name = Hash( GetCurrentTemplatePath() );
  /* define the application wide datasource */
  this.datasource = "cfartgallery";
  /* enable hibernate support for this application */
  this.ormenabled = true;
  /* create a struct of ORM settings */
  this.ormsettings = {
    eventhandling="true",
    secondarycacheenabled="true",
	/* ormconfig="hibernate.cfg.xml", */
	dialect="derby",
	logsql="true",
	savemapping="false"
  };

}