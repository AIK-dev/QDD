#!/usr/bin/env python
import numpy as np
import matplotlib as mpl
from numpy import loadtxt as Read
from matplotlib.backends.backend_agg import FigureCanvasAgg as FigCanvas
from matplotlib.figure import Figure
from matplotlib import collections as Coll
mpl.rcParams['text.latex.preamble'] = [
r'\usepackage{mathrsfs}']

levels_h2o = [\
[(1, -31.691), (3, -31.691)],\
[(1, -21.074), (3, -21.074)],\
[(1, -17.424), (3, -17.424)],\
[(1, -14.943), (3, -14.943)],\
[(1, -5.8480), (3, -5.8480)],\
]
col_h2o = np.array([\
(0, 0, 0),\
(0, 0, 0),\
(0, 0, 0),\
(0.121569, 0.470588, 0.705882),\
(0.890196, 0.101961, 0.109804),\
])
lc_h2o = Coll.LineCollection(levels_h2o, colors=col_h2o, linewidths=2)

levels_c3 = [\
[(1, -23.382), (3, -23.382)],\
[(1, -21.170), (3, -21.170)],\
[(1, -13.480), (3, -13.480)],\
[(1, -13.480), (3, -13.480)],\
[(1, -12.300), (3, -12.300)],\
[(1, -10.870), (3, -10.870)],\
[(1, -9.1490), (3, -9.1490)],\
]
col_c3 = np.array([\
(0, 0, 0),\
(0, 0, 0),\
(0, 0, 0),\
(0, 0, 0),\
(0, 0, 0),\
(0.121569, 0.470588, 0.705882),\
(0.890196, 0.101961, 0.109804),\
])
lc_c3 = Coll.LineCollection(levels_c3, colors=col_c3, linewidths=2)

x31,y31=Read('H2O.spectrum-perp.dat',skiprows=3,usecols=(1,9),unpack=True)
x32,y32=Read('H2O.spectrum-trans.dat',skiprows=3,usecols=(1,3),unpack=True)
x33,y33=Read('H2O.spectrum-trans.dat',skiprows=3,usecols=(1,6),unpack=True)
x41,y41=Read('C3.spectrum-z.dat',skiprows=3,usecols=(1,9),unpack=True)
x42,y42=Read('C3.spectrum-xy.dat',skiprows=3,usecols=(1,3),unpack=True)
y33 = y33*0.5
y42 = y42*6

#fig=Figure(constrained_layout=True)
fig=Figure()
FigCanvas(fig)

ax1=fig.add_subplot(221)
ax1.add_collection(lc_h2o)
ax1.text(5, -5, r'$\mathrm{H_2O},~8~\mathrm{e}^-$', fontsize=20)
ax1.set_ylabel(r'$\varepsilon_i~/~[\mathrm{eV}]$')
ax1.set_xlim(0,10)
ax1.set_ylim(-32,0)
ax1.spines['right'].set_visible(False)
ax1.spines['bottom'].set_visible(False)
ax1.xaxis.set_ticks_position('none')
ax1.yaxis.set_ticks_position('left')
ax1.set_xticklabels([])
ax1.set_yticks([-30,-25,-20,-15,-10,-5,0])
ax1.set_yticklabels(['-30','-25','-20','-15','-10','-5','0'])

ax2=fig.add_subplot(222)
ax2.add_collection(lc_c3)
ax2.text(5, -5, r'$\mathrm{C_3},~12~\mathrm{e}^-$', fontsize=20)
ax2.set_xlim(0,10)
ax2.set_ylim(-32,0)
ax2.spines['right'].set_visible(False)
ax2.spines['bottom'].set_visible(False)
ax2.xaxis.set_ticks_position('none')
ax2.yaxis.set_ticks_position('left')
ax2.set_xticklabels([])
ax2.set_yticks([-30,-25,-20,-15,-10,-5,0])
ax2.set_yticklabels([])

ax3=fig.add_subplot(223)
ax3.plot(x31,y31, color='#1f78b4', label=r'Out of plane')
ax3.plot(x32,y32, color='#e31a1c', label=r'In plane')
ax3.plot(x33,y33, color='#33a02c', label=r'In plane$\perp$')
ax3.axvline(x=14.943, color='k', linestyle='--', linewidth=1)
ax3.legend()
ax3.set_xlim(5,35)
ax3.set_ylim(bottom=0)
ax3.set_ylabel(r'$\mathscr{F}\{\widetilde{D}(t)\}$')
ax3.set_yticks([])
ax3.set_xlabel(r'Frequency $\omega$ / [eV]')
ax3.set_xticks([5,10,15,20,25,30,35])

ax4=fig.add_subplot(224)
ax4.plot(x41,y41, color='#1f78b4', label=r'Along symm.-axis')
ax4.plot(x42,y42, color='#e31a1c', label=r'In plane ($\times$6)')
ax4.axvline(x=10.870, color='k', linestyle='--', linewidth=1)
ax4.legend()
ax4.set_xlim(0,35)
ax4.set_ylim(bottom=0)
ax4.set_yticks([])
ax4.set_xlabel(r'Frequency $\omega$ / [eV]')
ax4.set_xticks([0,5,10,15,20,25,30,35])

#fig.savefig('H2O-C3.png')
fig.savefig('H2O-C3', bbox_inches='tight')
