package controlador;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import implementacion.UsuariosIMP;
import modelo.Usuario;


@WebServlet("/ListarUsuariosSRVL")
public class ListarUsuariosSRVL extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private void listarUsuarios(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UsuariosIMP usuImp = new UsuariosIMP();
        List<Usuario> listaUsu = usuImp.readAll();
        request.setAttribute("listado", listaUsu);
        getServletContext().getRequestDispatcher("/vistas/ListarUsuarios.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        listarUsuarios(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        listarUsuarios(request, response);
    }
}
