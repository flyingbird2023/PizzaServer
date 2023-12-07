/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ibb.filter;

import info.util.GConnection;
import jakarta.servlet.http.HttpServletResponseWrapper;

/**
 *
 * @author Schulung
 */
import java.io.PrintWriter;
import java.io.CharArrayWriter;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;
import java.util.logging.Level;
import java.util.logging.Logger;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Diese Filter formattiert die resultierende HTML Seite und versieht den
 * Begriff der mit einem Eintrag in der Datenbank übereinstimmt mit einem
 * Füllzeichen
 */
@WebFilter(urlPatterns = "/next.jsp", filterName = "meinFilter")//加入过滤
public class ResponseFormatFilter extends GConnection implements Filter {

    /**
     * Filtert die resultierende Seite
     */
    private Connection conn;
    private List<String> filterwords;
    private int size;

    @Override
    public void init(FilterConfig config) {
        try {

            // Parameter aus der Datein WEB-INF/web.xml auslesen
            //GConnection gcon = new GConnection();
            conn = getConnection();
            try (Statement stmt = conn.createStatement()) {
                filterwords = new ArrayList();
                ResultSet rs = stmt.executeQuery("Select word from filterwords");
                // Iterieren Über die Ergebnismenge des SQL-Statements
                //rs.last();
                
                //rs.first();
                while (rs.next()) {
                    filterwords.add(rs.getString(1));
                }   size = filterwords.size();
                rs.close();
                // conn.close();
            }
        } catch (SQLException ex) {
            Logger.getLogger(ResponseFormatFilter.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public void doFilter(ServletRequest request,
            ServletResponse response,
            FilterChain chain)
            throws IOException, ServletException {

     try {
            // Erzeugen des Wrapper-Objektes
        ResponseWrapper wrapper = new ResponseWrapper((HttpServletResponse) response);
//            Statement stmt = conn.createStatement();
//            ResultSet rs = stmt.executeQuery("Select word from filterwords");
//            // Weiterleiten und Verarbeiten des Requests
//            rs.last();
//            int newsize = rs.getRow();
//            if (size != newsize) {
//                rs.beforeFirst();
//                filterwords.clear();
//                while (rs.next()) {
//                    filterwords.add(rs.getString(1));
//                }
//
//            }
//            rs.close();
//            stmt.close();
            chain.doFilter(request, wrapper);

            // Binden des PrintWriters 'out'
            PrintWriter out = response.getWriter();
            // Gespeichertes Dokument aus dem Wrapper extrahieren
            String content = wrapper.getContent();

            // StringTokenizer zur Zerlegung in Worte
            //String[] contentArray= content.split(" ");
            StringTokenizer st = new StringTokenizer(content, " \t\n\r,;");
            while (st.hasMoreTokens()) {
                String word = st.nextToken();
                System.out.println("Token:::::::::" + word);
                for (String tmp : filterwords) {
                    if (word.equalsIgnoreCase(tmp)) {
                        word = "****************";

                    }

                }
                out.write(" " + word + " ");
            }

            // Flushen und Schließen der Ausgabe
            out.close();
        } catch (Exception ex) {
            Logger.getLogger(ResponseFormatFilter.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public void destroy() {
        try {
            conn.close();
            System.out.println("Connection geschlossen");
           // throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        } catch (SQLException ex) {
            Logger.getLogger(ResponseFormatFilter.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}

/**
 * Hilfklasse: Wrapper zur Pufferung der Ausgabe. Nur zu verwenden bei
 * zeichenorientierten Seiten
 */
class ResponseWrapper extends HttpServletResponseWrapper
        implements HttpServletResponse {

    /* Pufferspeicher für die Daten */
    private CharArrayWriter buffer;

    /**
     * Constructor
     */
    public ResponseWrapper(HttpServletResponse response) {

        // Superklasse initialisieren
        super(response);

        // Puffer initialisieren
        buffer = new CharArrayWriter();
    }

    /**
     * Umgeleitete Methode des Reponse - Objektes
     */
    public PrintWriter getWriter() {
        return new PrintWriter(buffer);
    }

    /**
     * Gibt die gepufferten Daten zurück
     */
    public String getContent() {
        return buffer.toString();
    }
}
