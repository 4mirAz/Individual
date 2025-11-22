import java.io.IOException;
import java.io.InputStream;
import java.util.Base64;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/ProfileServlet")
@MultipartConfig
public class ProfileServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String studentId = request.getParameter("studentId");
        String program = request.getParameter("program");
        String email = request.getParameter("email");
        String hobbies = request.getParameter("hobbies");
        String intro = request.getParameter("intro");

       
        Part filePart = request.getPart("photo");
        InputStream fileContent = filePart.getInputStream();

        byte[] imageBytes = new byte[(int) filePart.getSize()];
        fileContent.read(imageBytes);

        String base64Image = Base64.getEncoder().encodeToString(imageBytes);

        request.setAttribute("name", name);
        request.setAttribute("studentId", studentId);
        request.setAttribute("program", program);
        request.setAttribute("email", email);
        request.setAttribute("hobbies", hobbies);
        request.setAttribute("intro", intro);
        request.setAttribute("photo", base64Image);

        request.getRequestDispatcher("displayProfile.jsp").forward(request, response);
    }
}
