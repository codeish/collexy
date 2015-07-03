package xml_models

import
(
	"encoding/xml"
	coremodulecontentmodelsxmlmodels "collexy/core/modules/content/models/xml_models"
	coremodulemediamodelsxmlmodels "collexy/core/modules/media/models/xml_models"
	coremodulesettingsmodelsxmlmodels "collexy/core/modules/settings/models/xml_models"
)

type License struct {
	XMLName xml.Name `xml:"license"`
	Url     string   `xml:"url,attr"`
}

type Author struct {
	XMLName xml.Name `xml:"author"`
	Url     string   `xml:"url,attr"`
}

type Module struct {
	XMLName      xml.Name                                          `xml:"module"`
	Version      string                                            `xml:"version,attr"`
	Name         string                                            `xml:"name,attr"`
	Url          string                                            `xml:"url,attr"`
	License      License                                           `xml:"license"`
	Author       Author                                            `xml:"author"`
	Readme       string                                            `xml:"readme"`
	DataTypes    []*coremodulesettingsmodelsxmlmodels.DataType                                       `xml:"dataTypes>type"`
	Templates    []*coremodulesettingsmodelsxmlmodels.Template    `xml:"templates>template"`
	ContentTypes []*coremodulesettingsmodelsxmlmodels.ContentType `xml:"contentTypes>contentType"`
	ContentItems []*coremodulecontentmodelsxmlmodels.Content                                        `xml:"contentItems>item"`
	MediaTypes   []*coremodulesettingsmodelsxmlmodels.MediaType                                      `xml:"mediaTypes>type"`
	MediaItems   []*coremodulemediamodelsxmlmodels.Media                                          `xml:"mediaItems>item"`
	MimeTypes    []*coremodulesettingsmodelsxmlmodels.MimeType                                       `xml:"mimeTypes>type"`
	Files        []string                                          `xml:"files>file"`
}