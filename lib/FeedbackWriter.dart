/**
 * This is the class for writing feedback onto tickets
 */
class FeedbackWriter {
    /**
     * This is the function that creates the ticket
     * @param name - name of the ticket
     * @param feedback - feedback for the ticket
     */
    void writefeedback(String name, String feedback){
        try(BufferedWriter writer = new BufferedWriter(new FileWriter(name))){
            writer.write(feedback);
        }
        catch(IOException e){System.out.println(e);}
    }
}
