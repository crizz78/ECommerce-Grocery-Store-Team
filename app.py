import os
from flask import Flask, render_template, request, redirect, url_for, session
import pymysql

app = Flask(__name__)
app.secret_key = 'grostop_secret_key'

# Función auxiliar para obtener conexión a MySQL vía TCP
def get_db_connection():
    return pymysql.connect(
        host=os.getenv('MYSQL_HOST', 'db'),
        user=os.getenv('MYSQL_USER', 'root'),
        password=os.getenv('MYSQL_PASSWORD', 'root'),
        database=os.getenv('MYSQL_DB', 'grostop'),
        port=int(os.getenv('MYSQL_PORT', 3306)),
        cursorclass=pymysql.cursors.DictCursor
    )

@app.route('/')
@app.route('/homePage')
def homePage():
    try:
        conn = get_db_connection()
        with conn.cursor() as cur:
            cur.execute("SELECT Product_ID, Name, Price, Brand, Measurement, Unit FROM product LIMIT 15")
            products = cur.fetchall()
        conn.close()
        
        # HTML dinámico para mostrar la tabla del catálogo
        html_content = """
        <!DOCTYPE html>
        <html lang="es">
        <head>
            <meta charset="UTF-8">
            <title>GroStop - Catálogo E-Commerce</title>
            <style>
                body { font-family: Arial, sans-serif; margin: 30px; background-color: #f4f4f9; }
                h1 { color: #2c3e50; }
                table { width: 100%; border-collapse: collapse; background: #fff; box-shadow: 0 2px 5px rgba(0,0,0,0.1); }
                th, td { padding: 12px; border: 1px solid #ddd; text-align: left; }
                th { background-color: #27ae60; color: white; }
                tr:nth-child(even) { background-color: #f9f9f9; }
            </style>
        </head>
        <body>
            <h1>🛒 Sistema E-Commerce GroStop - Productos en Base de Datos</h1>
            <p><strong>Estado:</strong> Conexión Docker + Flask + MySQL exitosa.</p>
            <table>
                <tr>
                    <th>ID</th>
                    <th>Producto</th>
                    <th>Marca</th>
                    <th>Precio</th>
                    <th>Presentación</th>
                </tr>
        """
        for p in products:
            html_content += f"""
                <tr>
                    <td>{p['Product_ID']}</td>
                    <td><strong>{p['Name']}</strong></td>
                    <td>{p['Brand']}</td>
                    <td>${p['Price']}</td>
                    <td>{p['Measurement']} {p['Unit']}</td>
                </tr>
            """
        html_content += """
            </table>
        </body>
        </html>
        """
        return html_content
    except Exception as e:
        return f"<h1>Sistema GroStop Activo</h1><p>Error en la consulta: {e}</p>"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, debug=True)