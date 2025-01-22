package com.org.lc.api;


import jakarta.validation.constraints.AssertTrue;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;

public class UserDto {
    // Validation
    @NotBlank(message = "* User name cannot be blanked")
    @Size(min = 3, max = 10, message = "* User name must be between 3-10 characters")
    private String userName;

    @NotBlank(message = "* Crush name cannot be blanked")
    @Size(min = 3, max = 10, message = "* Crush name must be between 3-10 characters")
    private String crushName;

    @AssertTrue(message = "* You have to agree to our terms and conditions")
    private boolean isTermsSigned;

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getCrushName() {
        return crushName;
    }

    public void setCrushName(String crushName) {
        this.crushName = crushName;
    }

    public boolean getIsTermsSigned() {
        return isTermsSigned;
    }

    public void setIsTermsSigned(boolean isTermsSigned) {
        this.isTermsSigned = isTermsSigned;
    }
}
