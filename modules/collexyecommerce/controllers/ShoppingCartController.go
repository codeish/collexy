package controllers

import
(
	"net/http"
	"fmt"
	"log"
	"io"
	"crypto/rand"
	"encoding/base64"
	"collexy/modules/collexyecommerce/models"
	"encoding/json"
	"strconv"
	coremodulemembermodels "collexy/core/modules/member/models"
	corehelpers "collexy/core/helpers"
)

type ShoppingCartController struct{}

func (this *ShoppingCartController) TestCheckout(w http.ResponseWriter, r *http.Request) {
	sid := corehelpers.CheckMemberCookie(w, r)
	member, _ := coremodulemembermodels.GetMember(sid)

	coremodulemembermodels.SetLoggedInMember(r, member)

	r.ParseForm()

	str := `<html>
		<body>
			<h2>Checkout</h2>`

	if member != nil {
		
		
		fmt.Println(r.Form)

		if r.Form["memberspass_payment_method_select"] != nil {

			str = str + `<ul>
						<li>Sign In</li>
						<li>Payment Info</li>
						<li><strong>Review & Purchase</strong></li>
					</ul>
					
					<form class="memberspass-payment-form" method="POST" action="">
				        <div id="memberspass-order-review">

				            <h3>Your Order</h3>
				            <table class="memberspass-shopping-cart">
				                <thead>
				                    <tr>

				                        <th>Product</th>
				                        <th>Total</th>
				                    </tr>
				                </thead>
				                <tbody>
				                    <tr><td>Times Magazine Subscription <span class="quantity">x 1</span> <ul><li>delivery: both</li></ul></td><td>19</td></tr><tr><td>Heavy Bag <span class="quantity">x 1</span> <ul><li>length: 120</li><li>weight: 34</li></ul></td><td>93</td></tr>                </tbody>
				                <tfoot>
				                                        <tr>
				                        <th>Cart Subtotal</th>
				                        <td>112</td>
				                    </tr>
				                    <tr>
				                        <th>Tax</th>        
				                        <td>0</td>
				                    </tr>
				                    <tr>
				                        <th>Shipping</th>
				                        <td>
				                            <label><input class="shipping_method_select" name="shipping_method" value="1" type="radio"> Adv Method 1a (252)</label><br><label><input class="shipping_method_select" name="shipping_method" value="2" type="radio"> Free Shipping </label><br><label><input class="shipping_method_select" name="shipping_method" value="3" type="radio"> Local Pickup </label><br>                        </td>
				                    </tr>
				                    <tr>
				                        <th>Order Total</th>
				                        <td id="order-total">112</td>
				                    </tr>
				                </tfoot>
				            </table>

				        </div>
				        <div id="memberspass-review-personal-details">
				            <!--
				            people whose billing address is a PO Box 
				· people traveling on business -- (need another gig of ram shipped overnight to their hotel...) 
				· people using a Corporate credit card 
				· people who manage finances for their parents 
				· people whose accounting/financial matters are done by a business manager or a CPA. 
				· ... and much, much more :-p'
				            -->
				            
				            
				            <table>
				                <tbody>
				                    <tr>
				                        <th>Payment method:</th>
				                        <td>paypalexpress</td>
				                    </tr>
				                    <tr>
				                        <th>Address:</th>
				                        <th>Billing</th>
				                        <th>Shipping</th>
				                    </tr>
				                    <tr>
				                        <td></td>
				                        <td> </td>
				                        <td> </td>
				                    </tr>
				                    <tr>
				                        <td></td>
				                        <td></td>
				                        <td></td>
				                    </tr>
				                    <tr>
				                        <td></td>
				                        <td></td>
				                        <td></td>
				                    </tr>
				                    <tr>
				                        <td></td>
				                        <td>default</td>
				                        <td>default</td>
				                    </tr>
				                    <tr>
				                        <td></td>
				                        <td>default</td>
				                        <td>default</td>
				                    </tr>
				                    <tr>
				                        <td></td>
				                        <td></td>
				                        <td></td>
				                    </tr>
				                    <tr>
				                        <td></td>
				                        <td></td>
				                        <td></td>
				                    </tr>

				                    <tr>
				                        <th>Company</th>
				                        <td></td>
				                        <td></td>
				                    </tr>
				                    <tr>
				                        <th>VAT number</th>
				                        <td></td>
				                        <td></td>
				                    </tr>
				                    <tr>
				                        <th>Phone</th>
				                        <td></td>
				                        <td></td>
				                    </tr>
				                    <tr>
				                        <th>Email</th>
				                        <td>sorenhoyerkristensen@gmail.com</td>
				                        <td></td>
				                    </tr>
				                </tbody>
				            </table>
				        </div>
				        <div>
				            <p>
				                <label class="accept-order-terms-label"><input id="accept-order-terms-checkbox" name="accept_order_terms_checkbox" type="checkbox"> I agree to the terms of blabla bla (last updated 4th july 2013)</label>
				            </p>
				            <p><small>By clicking "Purchase" you agree that *** provides you immediate access to this digital content and that therefore any possibility of a withdrawal from this purchase ends - the purchase is final.</small></p>
				        </div>
				        <br class="clear">
				        <input id="memberspass-submit-payment" class="memberspass_front_button" value="Place Order" type="submit">
				        <img style="display:none;" src="http://localhost/wordpress_02/wp-content/plugins/memberspass/images/ajax-loader.gif" class="memberspass-loading-gif">

				        <input id="payment_method" value="paypalexpress" type="hidden">
				        <input id="billing_first_name" value="" type="hidden">
				        <input id="shipping_first_name" value="" type="hidden">
				        <input id="billing_last_name" value="" type="hidden">
				        <input id="shipping_last_name" value="" type="hidden">
				        <input id="billing_address" value="" type="hidden">
				        <input id="shipping_address" value="" type="hidden">
				        <input id="billing_address_line2" value="" type="hidden">
				        <input id="shipping_address_line2" value="" type="hidden">
				         <input id="billing_city" value="" type="hidden">
				        <input id="shipping_city" value="" type="hidden">
				        <input id="billing_country" value="default" type="hidden">
				        <input id="shipping_country" value="default" type="hidden">
				        <input id="billing_region" value="default" type="hidden">
				        <input id="shipping_region" value="default" type="hidden">
				        <input id="billing_zip" value="" type="hidden">
				        <input id="shipping_zip" value="" type="hidden">
				        <input id="billing_company" value="" type="hidden">
				        <input id="shipping_company" value="" type="hidden">
				        <input id="billing_vat" value="" type="hidden">
				        <input id="shipping_vat" value="" type="hidden">
				        <input id="billing_email" value="sorenhoyerkristensen@gmail.com" type="hidden">
				        <input id="shipping_email" value="" type="hidden">
				        <input id="billing_phone" value="" type="hidden">
				        <input id="shipping_phone" value="" type="hidden">

				        <input id="authorize_credit_card_number" value="" type="hidden">
				        <input id="authorize_card_expiry_month" value="1" type="hidden">
				        <input id="authorize_card_expiry_year" value="2015" type="hidden">
				        <input id="authorize_cvv_code" value="" type="hidden">

				    </form>`
		} else {
			str = str + `<ul>
						<li>Sign In</li>
						<li><strong>Payment Info</strong></li>
						<li>Review & Purchase</li>
					</ul>
					<form method="POST" action="">
						<div id="collexy-ecommerce-payment-method">
							<h4>Payment Method</h4>
							<p>Please select a payment method</p>
							<table id="tblsecorderform">
				                <tbody>
				                    <tr>
				                        <td colspan="2">
				                            <select name="memberspass_payment_method_select" class="memberspass_payment_method_select">
				                                <option selected="" value="paypalexpress">PayPal Express</option><option value="authorizenet">Authorize.net</option>                            </select>
				                        </td>
				                    </tr>
				                    <tr style="display: none;" class="hide-for-3rd-party-payment-gateways">
				                        <td>Card Number</td>
				                        <td><input name="authorize_credit_card_number" id="authorize_credit_card_number" class="memberspass-form-input" value="" type="text"></td>
				                    </tr>
				                    <tr style="display: none;" class="hide-for-3rd-party-payment-gateways">
				                        <td>Expiration</td>
				                        <td>
				                            <select id="authorize_card_expiry_month" name="authorize_card_expiry_month" class="memberspass_payment_method_select memberspass-payment-form-select card-expiry-month">
				                                <option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option>
				                            </select>

				                            <select id="authorize_card_expiry_year" name="authorize_card_expiry_year" class="memberspass_payment_method_select memberspass-payment-form-select card-expiry-year">
				                                <option value="2015">2015</option><option value="2016">2016</option><option value="2017">2017</option><option value="2018">2018</option><option value="2019">2019</option><option value="2020">2020</option><option value="2021">2021</option><option value="2022">2022</option><option value="2023">2023</option><option value="2024">2024</option>                            </select>
				                        </td>
				                    </tr>
				                    <tr style="display: none;" class="hide-for-3rd-party-payment-gateways">
				                        <td>Security Code</td>
				                        <td><input name="authorize_cvv_code" id="authorize_cvv_code" class="memberspass-form-input" value="" type="text"></td>
				                    </tr>
				                </tbody>
				            </table>
						</div>
						<div id="memberspass-payment-address">

				            <div class="memberspass-billing-address">
				                <h4>Billing Information</h4>
				                <!--			<h3>Billing Address</h3>-->
				                <div class="memberspass-col-6">
				                    <table>
				                        <tbody><tr>
				                            <td colspan="2">

				                                <label>Country</label><br>
				                                <select name="billing_country">

				                                    <option value="default">Select your Country</option>
				                                    <option value="#"></option><option value="#I">Country</option><option value="AD">Andorra</option><option value="AE">United Arab Emirates</option><option value="AF">Afghanistan</option><option value="AG">Antigua and Barbuda</option><option value="AI">Anguilla</option><option value="AL">Albania</option><option value="AM">Armenia</option><option value="AN">Netherlands Antilles</option><option value="AO">Angola</option><option value="AQ">Antarctica</option><option value="AR">Argentina</option><option value="AS">American Samoa</option><option value="AT">Austria</option><option value="AU">Australia</option><option value="AW">Aruba</option><option value="AX">Aland Islands</option><option value="AZ">Azerbaijan</option><option value="BA">Bosnia and Herzegovina</option><option value="BB">Barbados</option><option value="BD">Bangladesh</option><option value="BE">Belgium</option><option value="BF">Burkina Faso</option><option value="BG">Bulgaria</option><option value="BH">Bahrain</option><option value="BI">Burundi</option><option value="BJ">Benin</option><option value="BL">Saint Barthelemy</option><option value="BM">Bermuda</option><option value="BN">Brunei</option><option value="BO">Bolivia</option><option value="BQ">Bonaire, Saint Eustatius and Saba </option><option value="BR">Brazil</option><option value="BS">Bahamas</option><option value="BT">Bhutan</option><option value="BV">Bouvet Island</option><option value="BW">Botswana</option><option value="BY">Belarus</option><option value="BZ">Belize</option><option value="CA">Canada</option><option value="CC">Cocos Islands</option><option value="CD">Democratic Republic of the Congo</option><option value="CF">Central African Republic</option><option value="CG">Republic of the Congo</option><option value="CH">Switzerland</option><option value="CI">Ivory Coast</option><option value="CK">Cook Islands</option><option value="CL">Chile</option><option value="CM">Cameroon</option><option value="CN">China</option><option value="CO">Colombia</option><option value="CR">Costa Rica</option><option value="CS">Serbia and Montenegro</option><option value="CU">Cuba</option><option value="CV">Cape Verde</option><option value="CW">Curacao</option><option value="CX">Christmas Island</option><option value="CY">Cyprus</option><option value="CZ">Czech Republic</option><option value="DE">Germany</option><option value="DJ">Djibouti</option><option value="DK">Denmark</option><option value="DM">Dominica</option><option value="DO">Dominican Republic</option><option value="DZ">Algeria</option><option value="EC">Ecuador</option><option value="EE">Estonia</option><option value="EG">Egypt</option><option value="EH">Western Sahara</option><option value="ER">Eritrea</option><option value="ES">Spain</option><option value="ET">Ethiopia</option><option value="FI">Finland</option><option value="FJ">Fiji</option><option value="FK">Falkland Islands</option><option value="FM">Micronesia</option><option value="FO">Faroe Islands</option><option value="FR">France</option><option value="GA">Gabon</option><option value="GB">United Kingdom</option><option value="GD">Grenada</option><option value="GE">Georgia</option><option value="GF">French Guiana</option><option value="GG">Guernsey</option><option value="GH">Ghana</option><option value="GI">Gibraltar</option><option value="GL">Greenland</option><option value="GM">Gambia</option><option value="GN">Guinea</option><option value="GP">Guadeloupe</option><option value="GQ">Equatorial Guinea</option><option value="GR">Greece</option><option value="GS">South Georgia and the South Sandwich Islands</option><option value="GT">Guatemala</option><option value="GU">Guam</option><option value="GW">Guinea-Bissau</option><option value="GY">Guyana</option><option value="HK">Hong Kong</option><option value="HM">Heard Island and McDonald Islands</option><option value="HN">Honduras</option><option value="HR">Croatia</option><option value="HT">Haiti</option><option value="HU">Hungary</option><option value="ID">Indonesia</option><option value="IE">Ireland</option><option value="IL">Israel</option><option value="IM">Isle of Man</option><option value="IN">India</option><option value="IO">British Indian Ocean Territory</option><option value="IQ">Iraq</option><option value="IR">Iran</option><option value="IS">Iceland</option><option value="IT">Italy</option><option value="JE">Jersey</option><option value="JM">Jamaica</option><option value="JO">Jordan</option><option value="JP">Japan</option><option value="KE">Kenya</option><option value="KG">Kyrgyzstan</option><option value="KH">Cambodia</option><option value="KI">Kiribati</option><option value="KM">Comoros</option><option value="KN">Saint Kitts and Nevis</option><option value="KP">North Korea</option><option value="KR">South Korea</option><option value="KW">Kuwait</option><option value="KY">Cayman Islands</option><option value="KZ">Kazakhstan</option><option value="LA">Laos</option><option value="LB">Lebanon</option><option value="LC">Saint Lucia</option><option value="LI">Liechtenstein</option><option value="LK">Sri Lanka</option><option value="LR">Liberia</option><option value="LS">Lesotho</option><option value="LT">Lithuania</option><option value="LU">Luxembourg</option><option value="LV">Latvia</option><option value="LY">Libya</option><option value="MA">Morocco</option><option value="MC">Monaco</option><option value="MD">Moldova</option><option value="ME">Montenegro</option><option value="MF">Saint Martin</option><option value="MG">Madagascar</option><option value="MH">Marshall Islands</option><option value="MK">Macedonia</option><option value="ML">Mali</option><option value="MM">Myanmar</option><option value="MN">Mongolia</option><option value="MO">Macao</option><option value="MP">Northern Mariana Islands</option><option value="MQ">Martinique</option><option value="MR">Mauritania</option><option value="MS">Montserrat</option><option value="MT">Malta</option><option value="MU">Mauritius</option><option value="MV">Maldives</option><option value="MW">Malawi</option><option value="MX">Mexico</option><option value="MY">Malaysia</option><option value="MZ">Mozambique</option><option value="NA">Namibia</option><option value="NC">New Caledonia</option><option value="NE">Niger</option><option value="NF">Norfolk Island</option><option value="NG">Nigeria</option><option value="NI">Nicaragua</option><option value="NL">Netherlands</option><option value="NO">Norway</option><option value="NP">Nepal</option><option value="NR">Nauru</option><option value="NU">Niue</option><option value="NZ">New Zealand</option><option value="OM">Oman</option><option value="PA">Panama</option><option value="PE">Peru</option><option value="PF">French Polynesia</option><option value="PG">Papua New Guinea</option><option value="PH">Philippines</option><option value="PK">Pakistan</option><option value="PL">Poland</option><option value="PM">Saint Pierre and Miquelon</option><option value="PN">Pitcairn</option><option value="PR">Puerto Rico</option><option value="PS">Palestinian Territory</option><option value="PT">Portugal</option><option value="PW">Palau</option><option value="PY">Paraguay</option><option value="QA">Qatar</option><option value="RE">Reunion</option><option value="RO">Romania</option><option value="RS">Serbia</option><option value="RU">Russia</option><option value="RW">Rwanda</option><option value="SA">Saudi Arabia</option><option value="SB">Solomon Islands</option><option value="SC">Seychelles</option><option value="SD">Sudan</option><option value="SE">Sweden</option><option value="SG">Singapore</option><option value="SH">Saint Helena</option><option value="SI">Slovenia</option><option value="SJ">Svalbard and Jan Mayen</option><option value="SK">Slovakia</option><option value="SL">Sierra Leone</option><option value="SM">San Marino</option><option value="SN">Senegal</option><option value="SO">Somalia</option><option value="SR">Suriname</option><option value="SS">South Sudan</option><option value="ST">Sao Tome and Principe</option><option value="SV">El Salvador</option><option value="SX">Sint Maarten</option><option value="SY">Syria</option><option value="SZ">Swaziland</option><option value="TC">Turks and Caicos Islands</option><option value="TD">Chad</option><option value="TF">French Southern Territories</option><option value="TG">Togo</option><option value="TH">Thailand</option><option value="TJ">Tajikistan</option><option value="TK">Tokelau</option><option value="TL">East Timor</option><option value="TM">Turkmenistan</option><option value="TN">Tunisia</option><option value="TO">Tonga</option><option value="TR">Turkey</option><option value="TT">Trinidad and Tobago</option><option value="TV">Tuvalu</option><option value="TW">Taiwan</option><option value="TZ">Tanzania</option><option value="UA">Ukraine</option><option value="UG">Uganda</option><option value="UM">United States Minor Outlying Islands</option><option value="US">United States</option><option value="UY">Uruguay</option><option value="UZ">Uzbekistan</option><option value="VA">Vatican</option><option value="VC">Saint Vincent and the Grenadines</option><option value="VE">Venezuela</option><option value="VG">British Virgin Islands</option><option value="VI">U.S. Virgin Islands</option><option value="VN">Vietnam</option><option value="VU">Vanuatu</option><option value="WF">Wallis and Futuna</option><option value="WS">Samoa</option><option value="XK">Kosovo</option><option value="YE">Yemen</option><option value="YT">Mayotte</option><option value="ZA">South Africa</option><option value="ZM">Zambia</option><option value="ZW">Zimbabwe</option>                                </select>
				                                <!--<input type="text" name="billing_country"/>-->
				                            </td>
				                        </tr>
				                        <tr>
				                            <td colspan="2">
				                                <label>State / Region</label><br>
				                                <select name="billing_region">
				                                    <option value="default">Select your State / Region</option>
				                                </select>
				                                <!--<input type="text" name="billing_region"/>-->
				                            </td>
				                        </tr>
				                        <tr>
				                            <td>
				                                <label>First</label><br>
				                                <input name="billing_first_name" type="text">
				                            </td>
				                            <td>
				                                <label>Last</label><br>
				                                <input name="billing_last_name" type="text">
				                            </td>
				                        </tr>
				                        <tr>
				                            <td colspan="2">
				                                <label>Address</label><br>
				                                <input name="billing_address" type="text">
				                            </td>
				                        </tr>
				                        <tr>
				                            <td colspan="2">
				                                <label>Address, line 2</label><br>
				                                <input name="billing_address_line2" type="text">
				                            </td>
				                        </tr>


				                    </tbody></table>
				                </div>
				                <div class="memberspass-col-6">
				                    <table>
				                        <tbody><tr>
				                            <td colspan="2">
				                                <label>City</label><br>
				                                <input autocomplete="0" name="billing_city" type="text"><br>
				                                <!-- Show Results -->
				                                <!--<h4 id="results-text">Showing results for: <b id="search-string">Array</b></h4>-->
				                                <ul id="results"></ul>
				                            </td>
				                        </tr>
				                        <tr>
				                            <td colspan="2">
				                                <label>Zip / Postal Code</label><br>
				                                <input name="billing_zip" type="text">
				                            </td>
				                        </tr>
				                        <tr>
				                            <td colspan="2">
				                                <label>Company Name</label><br>
				                                <input name="billing_company" type="text">
				                            </td>
				                        </tr>
				                        <tr>
				                            <td colspan="2">
				                                <label>EU VAT Number</label><br>
				                                <input name="billing_vat" type="text">
				                            </td>
				                        </tr>
				                        <tr>
				                            <td>
				                                <label>Email</label><br>
				                                <input name="billing_email" value="sorenhoyerkristensen@gmail.com" type="text">
				                            </td>
				                            <td>
				                                <label>Phone</label><br>
				                                <input name="billing_phone" type="text">
				                            </td>
				                        </tr>
				                    </tbody></table>
				                </div>
				            </div>
				            <div class="memberspass-shipping-address">
				                <h4>Shipping Information</h4>
				                <div class="memberspass-col-6">
				                    <table>
				                        <tbody><tr>
				                            <td colspan="2">
				                                <label class="ship-to-billing-address"><input id="ship-to-billing-address" name="ship_to_billing_address" checked="checked" type="checkbox"> Ship to billing address</label>
				                            </td>
				                        </tr>
				                        <tr style="display: none;" class="show-shipping-address">
				                            <td colspan="2">
				                                <label>Country</label><br>
				                                <input disabled="disabled" name="shipping_country" type="text">
				                            </td>
				                        </tr>
				                        <tr style="display: none;" class="show-shipping-address">

				                            <td colspan="2">
				                                <label>region</label><br>
				                                <input disabled="disabled" name="shipping_region" type="text">
				                            </td>
				                        </tr>
				                        <tr style="display: none;" class="show-shipping-address">
				                            <td>
				                                <label>First</label><br>
				                                <input disabled="disabled" name="shipping_first_name" type="text">
				                            </td>
				                            <td>
				                                <label>Last</label><br>
				                                <input disabled="disabled" name="shipping_last_name" type="text">
				                            </td>
				                        </tr>

				                        <tr style="display: none;" class="show-shipping-address">
				                            <td colspan="2">
				                                <label>Address</label><br>
				                                <input disabled="disabled" name="shipping_address" type="text">
				                            </td>
				                        </tr>
				                        <tr style="display: none;" class="show-shipping-address">
				                            <td colspan="2">
				                                <label>Address, line 2</label><br>
				                                <input disabled="disabled" name="shipping_address_line2" type="text">
				                            </td>
				                        </tr>
				                    </tbody></table>
				                </div>
				                <div class="memberspass-col-6">
				                    <table>
				                        <tbody><tr>
				                            <td><br></td>
				                        </tr>


				                        <tr style="display: none;" class="show-shipping-address">
				                            <td colspan="2">
				                                <label>City</label><br>
				                                <input disabled="disabled" name="shipping_city" type="text">
				                            </td>
				                        </tr>
				                        <tr style="display: none;" class="show-shipping-address">
				                            <td>
				                                <label>Zip / Postal Code</label><br>
				                                <input disabled="disabled" name="shipping_zip" type="text">
				                            </td>
				                        </tr>
				                        <tr style="display: none;" class="show-shipping-address">
				                            <td colspan="2">
				                                <label>Company Name</label><br>
				                                <input disabled="disabled" name="shipping_company" type="text">
				                            </td>
				                        </tr>
				                        <tr style="display: none;" class="show-shipping-address">
				                            <td colspan="2">
				                                <label>EU VAT Number</label><br>
				                                <input disabled="disabled" name="shipping_vat" type="text">
				                            </td>
				                        </tr>
				                        <tr style="display: none;" class="show-shipping-address">
				                            <td>
				                                <label>Email</label><br>
				                                <input disabled="disabled" name="shipping_email" type="text">
				                            </td>
				                            <td>
				                                <label>Phone</label><br>
				                                <input disabled="disabled" name="shipping_phone" type="text">
				                            </td>
				                        </tr>

				                    </tbody></table>
				                </div>
				                <!--<h3>Shipping Address</h3>-->


				            </div>
				            <div>
				                <p>
				                    <label>Purchase Notes</label><br>
				                    <textarea name="purchase_note"></textarea>
				                </p>
				            </div>
				        </div>
						<input type="submit" value="Review & Purchase"/>
					</form>`
		}
	} else {
		str = str + `<ul>
						<li><strong>Sign In</strong></li>
						<li>Payment Info</li>
						<li>Review & Purchase</li>
					</ul>
					<p>
						<form action="http://localhost:8080/api/public/member/login" method="POST">
							<input type="text" name="username" id="username">
							<input type="password" name="password" id="password">
							<button type="submit">Login</button>
						</form>
						<a href="">Register here if you do not have a profile</a>
					</p>
					<form>
						<input type="submit" value="Payment Info"/>
					</form>`
	}

	str = str + `
		</body>
	</html>`

	fmt.Fprintf(w, str)
	
}

func (this *ShoppingCartController) TestCart(w http.ResponseWriter, r *http.Request) {
	
	var shoppingCart models.ShoppingCart
	var sc *models.ShoppingCart

	cookie, err := r.Cookie("colecomCartId")
	
	str := `<html>
		<body>
			<form method="POST" action="checkout">
			<h2>Cart</h2>`
			if err == nil {
				sc = models.GetShoppingCart(cookie.Value)
				if sc != nil {
					shoppingCart = *sc
					for _, item := range shoppingCart.Items {
						lol, _ := json.Marshal(item.Attributes)
						str = str + "<p>product id: " + strconv.Itoa(item.Id) + " quantity: " + strconv.Itoa(item.Quantity) + " attrs: " +  string(lol)+ "</p>"
					}
				} else {
					str = str + "<p>No items</p>"
				}
			} else {
				str = str + "<p>No items</p>"
			}

	str = str + `<input type="submit" value="Proceed to checkout"/>
			</form>
		</body>
	</html>`

	fmt.Fprintf(w, str)
	
}

func (this *ShoppingCartController) TestProduct(w http.ResponseWriter, r *http.Request) {

	str := `<html>
		<body>
			<form method="POST" action="test-product/add-to-cart?id=2">
				<h2>BOB Body Opponent Bag</h2>
				<p>
					Description goes here...
				</p>
				<p>
					Quantity: <input type="text" name="quantity"/>
				</p>
				<p>
					<input type="submit" value="submit"/>
				</p>
			</form>
		</body>
	</html>`

	fmt.Fprintf(w, str)
	
}

func(this *ShoppingCartController) AddToCart(w http.ResponseWriter, r *http.Request){
	//w.Header().Set("Content-Type", "application/json")
	//queryParams := r.URL.Query()
	//id := queryParams.Get("id")

	r.ParseForm()
	log.Println(r.Form)

	// GetCookieId // check cookie exists or create new

	var shoppingCart models.ShoppingCart
	var sc *models.ShoppingCart
	cookie, err := r.Cookie("colecomCartId")
	// if the cookie does not exist
	if err != nil {
		log.Println(err)
		// create new cookie
		val, err1 := CreateShoppingCartCookie()
		if err1 == nil {
			http.SetCookie(w, val)
			cookie = val
		}

		shoppingCart = models.ShoppingCart{}
		idInt, _ := strconv.Atoi(r.Form["id"][0])
		qtyInt, _ := strconv.Atoi(r.Form["quantity"][0])
		shoppingCart.Id = 0
		shoppingCartItem := models.ShoppingCartItem{idInt, qtyInt, nil}
		shoppingCart.Items = append(shoppingCart.Items, shoppingCartItem)
		//fmt.Printf("%v", r.Body)
		//err2 := json.NewDecoder(r.Body).Decode(&shoppingCart)

		// if err2 != nil {
		// 	fmt.Println(err2)
		// 	http.Error(w, "Bad Request", 400)
		// }

		shoppingCart.CookieId = val.Value
		shoppingCart.Post(cookie.Value)
	} else {
		log.Println(cookie.Value)
		sc = models.GetShoppingCart(cookie.Value)
		if sc != nil{
			shoppingCart = *sc
			idInt, _ := strconv.Atoi(r.Form["id"][0])
			qtyInt, _ := strconv.Atoi(r.Form["quantity"][0])
			shoppingCartItem := models.ShoppingCartItem{idInt, qtyInt, nil}
			shoppingCart.Items = append(shoppingCart.Items, shoppingCartItem)
			shoppingCart.Put()
		}
		
	}
	
	//fmt.Fprintf(w, cookie.Value)
	
	// Add cookieId, product id, qty + attrs to cart
	
}

func CreateShoppingCartCookie() (cookie *http.Cookie, err error) {
	// value := map[string]string{
	// 	"cartId": sid,
	// }

	// Store the session ID key in a cookie so it can be looked up in DB later.
	encoded := GenerateRandomKey(32)

	cookie = &http.Cookie{
		Name:  "colecomCartId",
		Value: encoded,
		Path:  "/",
	}
	return
}

func GenerateRandomKey(length int) string {
	k := make([]byte, length)
	if _, err := io.ReadFull(rand.Reader, k); err != nil {
		return ""
	}
	return base64.URLEncoding.EncodeToString(k)
}