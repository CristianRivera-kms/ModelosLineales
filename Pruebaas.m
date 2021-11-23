%Primero cargar la base de datos
uiopen('C:\Users\pc\Desktop\Esperanza de Vida\Datos.xlsx',1)
%Generamos matrizes

X = [x1,x2,x3]
y = [y]


estimadores =(X'*X)\(X'*y)

test_t = 1.8879*[x1] +0.5077*[x2] +0.3292*[x3]

e = test_t - y
b1 = 48.4427

e_e = e'*e


Tenemos que k= 3 y n= 138

s= e_e/(138-4)

v = s* (X'*X)^(-1)
v_1 = 0.0755

%Test t de la hipotesis nula h0 : b1 = 0

t = b1 - 0 / (sqrt(v_1))


%Graficos
plot(y, x1, 'o'),title('Años de escolaridad'),grid
plot(y, x2, 'o'),title('Acceso a agua potable'),grid
plot(y, x3, 'o'),title('Inflacion'),grid

