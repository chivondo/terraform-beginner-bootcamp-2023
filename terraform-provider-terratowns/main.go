package main

// fmt is short format, it contains functions for formatted I/O.
import (
	//"log"
	"fmt"
	"github.com/hashicorp/terraform-plugin-sdk/v2/plugin"
	"github.com/hashicorp/terraform-plugin-sdk/v2/helper/schema"
)	

// func main(): Defines the main function, the entry point of the app. 
// When you run the program, it starts executing from this function.
func main() {
	plugin.Serve(&plugin.ServeOpts{
		ProviderFunc: Provider,
	})
	//format print line
	fmt.Println("Hello, world!")
}


func Provider() *schema.Provider{
	var p *schema.Provider
	p = &schema.Provider{
		ResourcesMap: map[string]*schema.Resource{
			//"terratowns_home": Resource(),
		},
		DataSourcesMap:  map[string]*schema.Resource{

		},
		Schema: map[string]*schema.Schema{
			"endpoint": {
				Type: schema.TypeString,
				Required: true,
				Description: " The endpoint for the external service",

			},
			"token" : {
				Type: schema.TypeString,
				Sensitive: true, // make token as sensitive to hide it in the logs
				Required: true,
				Description: "Bearer token for authorization",


			},
			"user_uuid":{
				Type: schema.TypeString,
				Required: true,
				Description: "UUID for configuration",
				//ValidateFunc: ValidateUUID,
			},
		},
	}
	//p.ConfigureContextFunc = providerConfigure(p)
	return p
}

// func validateUUID(v interface{}, k string) (ws []string, errors []error) {
// 	log.Print("validateUUID:start")
// 	value := v.(string)
// 	if _, err := uuid.Parse(value); err != nil {
// 		errors = append(errors, fmt.Errorf("invalid UUID format"))
// 	}
// 	log.Print("validateUUID:end")
// 	return
// }