/*
 * Copyright (C) 2016-2021 Johannes Pfeifer
 * Copyright (C) 2021 Willi Mutschler
 *
 * This is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * It is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * For a copy of the GNU General Public License,
 * see <http://www.gnu.org/licenses/>.
 */

var
  a           ${a}$                   (long_name='technology shock process (log dev ss)')
  z           ${z}$                   (long_name='preference shock process (log dev ss)')
  c           ${c}$                   (long_name='consumption (log dev ss)')
  y           ${y}$                   (long_name='output (log dev ss)')
  y_nat       ${y^{nat}}$             (long_name='natural output (log dev ss)')
  y_gap       ${\tilde y}$            (long_name='output gap (log dev ss)')
  y_e         ${y^{e}}$               (long_name='efficient output (log dev steady state)') 
  x           ${x}$                   (long_name='welfare-relevant output gap (log dev steady state)')
  r_e         ${r^{e}}$               (long_name='efficient interest rate (log dev ss)')
  r_real      ${r}$                   (long_name='real interest rate (log dev ss)')     
  ii          ${i}$                   (long_name='nominal interest rate (log dev ss)')  
  pie         ${\pi}$                 (long_name='inflation (log dev ss)')
  n           ${n}$                   (long_name='hours worked (log dev ss)')
  w           ${w}$                   (long_name='real wage (log dev ss)')
  u           ${u}$                   (long_name='cost push process (log dev steady state)')
;     

varexo  
  eps_a       ${\varepsilon_a}$       (long_name='technology shock')
  eps_z       ${\varepsilon_z}$       (long_name='preference shock')
  eps_u       ${\varepsilon_u}$       (long_name='cost-push shock')
;

parameters 
  ALPHA      ${\alpha}$              (long_name='one minus labor share in production')
  BETA       ${\beta}$               (long_name='discount factor')
  RHOA       ${\rho_a}$              (long_name='autocorrelation technology process')
  RHOZ       ${\rho_{z}}$            (long_name='autocorrelation preference process')
  RHOU       ${\rho_{u}}$            (long_name='autocorrelation cost-push process')
  SIGMA      ${\sigma}$              (long_name='inverse EIS')
  VARPHI     ${\varphi}$             (long_name='inverse Frisch elasticity')
  EPSILON    ${\epsilon}$            (long_name='Dixit-Stiglitz demand elasticity')
  THETA      ${\theta}$              (long_name='Calvo probability')  
  KAPPA      ${\kappa}$              (long_name='Composite parameter Phillips curve')
  VARTHETA   ${\vartheta}$           (long_name='weight of x in loss function')
;

model(linear); 
//Composite parameters
#PSI_YA=(1+VARPHI)/(SIGMA*(1-ALPHA)+VARPHI+ALPHA);

[name='New Keynesian Phillips Curve']
pie=BETA*pie(+1)+KAPPA*x + u;

[name='Dynamic IS Curve']
x = x(+1) - 1/SIGMA*(ii-pie(+1)-r_e);

[name='Production function']
y=a+(1-ALPHA)*n;

[name='labor demand']
w = SIGMA*c+VARPHI*n;

[name='resource constraint']
y=c;

[name='TFP process']
a=RHOA*a(-1)+eps_a;

[name='Preference shifter']
z = RHOZ*z(-1) + eps_z;

[name='Definition efficient interest rate']
r_e=SIGMA*(y_e(+1)-y_e)+(1-RHOZ)*z;

[name='Definition real interest rate']
r_real=ii-pie(+1);

[name='Definition efficient output']
y_e=PSI_YA*a;

[name='Definition output gap']
y_gap=y-y_nat;

[name='Definition linking various output gaps']
y_gap=x+(y_e-y_nat);

[name='Implicit definition of natural output, following from definition of u']
u = KAPPA*(y_e-y_nat);

[name='cost push process']
u=RHOU*u(-1)+eps_u;

end;

steady_state_model;
% We need these parameters to evaluate loss function!
KAPPA=(1-THETA)*(1-BETA*THETA)/THETA*(1-ALPHA)/(1-ALPHA+ALPHA*EPSILON)*(SIGMA+(VARPHI+ALPHA)/(1-ALPHA));
VARTHETA=KAPPA/EPSILON;
% All other variables are zero in steady state
pie=0;y_gap=0;y_nat=0;y=0;y_e=0;x=0;ii=0;r_e=0;r_real=0;c=0;n=0;u=0;a=0;z=0;w=0;
end;