package Rahul;

/**
 *A class that gave a Invalid UserData Exception.
 * @author Rahulkumar Patel
 * @version 1.0 (13/08/2019)
 * @since 1.0
 */

@SuppressWarnings("serial")
public class InvalidUserDataException extends Exception 
{
	 //InvalidIdException method 
	/**
	 * InvalidUserDataException for a invalid user data.
	 */
	public InvalidUserDataException() 
	{
		
	}
	//InvalidIdException with the string message
	/**
	 * InvalidUserDataException get the message
	 * @param message
	 * it's give a message to user regarding wrong data input.
	 */
	public InvalidUserDataException(String message) 
	{
		super(message);
		
	}
}
