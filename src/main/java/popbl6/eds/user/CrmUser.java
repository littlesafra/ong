package popbl6.eds.user;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import popbl6.eds.validation.FieldMatch;
import popbl6.eds.validation.ValidEmail;


@FieldMatch.List({
    @FieldMatch(first = "password", second = "matchingPassword", message = "The password fields must match")
})
public class CrmUser {

	@NotNull(message = "Username is required")
	@Size(min = 1, message = "Username is required")
	private String userName;

	@NotNull(message = "Password is required")
	@Size(min = 1, message = "Password is required")
	private String password;
	
	@NotNull(message = "Matc Password is required")
	@Size(min = 1, message = "Match Password is required")
	private String matchingPassword;

	@NotNull(message = "First Name is required")
	@Size(min = 1, message = "First Name is required")
	private String firstName;

	@NotNull(message = "Last Name is required")
	@Size(min = 1, message = "Last Name is required")
	private String lastName;

	@ValidEmail
	@NotNull(message = "Email account is required")
	@Size(min = 1, message = "Email account is required")
	private String email;

	public CrmUser() {

	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getMatchingPassword() {
		return matchingPassword;
	}

	public void setMatchingPassword(String matchingPassword) {
		this.matchingPassword = matchingPassword;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

}
