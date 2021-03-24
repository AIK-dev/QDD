echo "now running: Na2p/ground-state/"
cd ./Na2p/ground-state/
export OMP_NUM_THREADS=6
../../qdd > /dev/null
rm wisdom*
rm info*
rm out*
cd ../..

echo "now running: Na2/ionic-BO-surface/"
cd ./Na2/ionic-BO-surface/
export OMP_NUM_THREADS=6
./scanBO.bat
rm wisdom*
rm info*
rm out*
cd ../..

echo "now running: Na2/ground-state/"
cd ./Na2/ground-state/
export OMP_NUM_THREADS=6
../../qdd > /dev/null
rm wisdom*
rm info*
rm out*
cd ../..

echo "now running: H2O/ground-state-convergence/"
cd ./H2O/ground-state-convergence/
export OMP_NUM_THREADS=6
../../qdd > /dev/null
rm wisdom*
rm info*
rm out*
cd ../..

echo "now running: H2O/laser-pespad/"
cd ./H2O/laser-pespad/
export OMP_NUM_THREADS=6
../../qdd > /dev/null
rm wisdom*
rm info*
rm out*
cd ../..

echo "now running: H2O/boost/"
cd ./H2O/boost/
export OMP_NUM_THREADS=6
../../qdd > /dev/null
rm wisdom*
rm info*
rm out*
cd ../..

echo "now running: H2O/varygrid/"
cd ./H2O/varygrid/
export OMP_NUM_THREADS=6
../../qdd > /dev/null
rm wisdom*
rm info*
rm out*
cd ../..

echo "now running: H2O/laser/Onres-rta/"
cd ./H2O/laser/Onres-rta/
export OMP_NUM_THREADS=6
../../../qdd > /dev/null
rm wisdom*
rm info*
rm out*
cd ../../..

echo "now running: H2O/laser/Onres-tdlda/"
cd ./H2O/laser/Onres-tdlda/
export OMP_NUM_THREADS=6
../../../qdd > /dev/null
rm wisdom*
rm info*
rm out*
cd ../../..

echo "now running: H2O/laser/Offres-rta/"
cd ./H2O/laser/Offres-rta/
export OMP_NUM_THREADS=6
../../../qdd > /dev/null
rm wisdom*
rm info*
rm out*
cd ../../..

echo "now running: H2O/laser/Offres-tdlda/"
cd ./H2O/laser/Offres-tdlda/
export OMP_NUM_THREADS=6
../../../qdd > /dev/null
rm wisdom*
rm info*
rm out*
cd ../../..

echo "now running: H2O/boost-ionmd/"
cd ./H2O/boost-ionmd/
export OMP_NUM_THREADS=6
../../qdd > /dev/null
rm wisdom*
rm info*
rm out*
cd ../..

echo "now running: Na9p/PandP/"
cd ./Na9p/PandP/
export OMP_NUM_THREADS=6
../../qdd > /dev/null
rm wisdom*
rm info*
rm out*
cd ../..

echo "now running: Na9p/TV-4.8as/"
cd ./Na9p/TV-4.8as/
export OMP_NUM_THREADS=6
../../qdd > /dev/null
rm wisdom*
rm info*
rm out*
cd ../..

echo "now running: Na9p/TV-2.4as/"
cd ./Na9p/TV-2.4as/
export OMP_NUM_THREADS=6
../../qdd > /dev/null
rm wisdom*
rm info*
rm out*
cd ../..

echo "now running: Na9p/Exp-3.57as/"
cd ./Na9p/Exp-3.57as/
export OMP_NUM_THREADS=6
../../qdd > /dev/null
rm wisdom*
rm info*
rm out*
cd ../..

echo "now running: Na9p/Exp-3.56as/"
cd ./Na9p/Exp-3.56as/
export OMP_NUM_THREADS=6
../../qdd > /dev/null
rm wisdom*
rm info*
rm out*
cd ../..

echo "now running: C60/boost/"
cd ./C60/boost/
export OMP_NUM_THREADS=6
../../qdd > /dev/null
rm wisdom*
rm info*
rm out*
cd ../..

echo "now running: C3/boost/"
cd ./C3/boost/
export OMP_NUM_THREADS=6
../../qdd > /dev/null
rm wisdom*
rm info*
rm out*
cd ../..

echo "now running: C3/laser/RTA/"
cd ./C3/laser/RTA/
export OMP_NUM_THREADS=6
../../../qdd > /dev/null
rm wisdom*
rm info*
rm out*
cd ../../..

echo "now running: C3/laser/TDLDA/"
cd ./C3/laser/TDLDA/
export OMP_NUM_THREADS=6
../../../qdd > /dev/null
rm wisdom*
rm info*
rm out*
cd ../../..

echo "now running: C3/ground-state/init_ho_deformed/"
cd ./C3/ground-state/init_ho_deformed/
export OMP_NUM_THREADS=6
../../../qdd > /dev/null
rm wisdom*
rm info*
rm out*
cd ../../..

echo "now running: C3/ground-state/init_ho_unocc/"
cd ./C3/ground-state/init_ho_unocc/
export OMP_NUM_THREADS=6
../../../qdd > /dev/null
rm wisdom*
rm info*
rm out*
cd ../../..

echo "now running: C3/ground-state/init_ho_occ/"
cd ./C3/ground-state/init_ho_occ/
export OMP_NUM_THREADS=6
../../../qdd > /dev/null
rm wisdom*
rm info*
rm out*
cd ../../..

echo "now running: C3/ground-state/init_ao/"
cd ./C3/ground-state/init_ao/
export OMP_NUM_THREADS=6
../../../qdd > /dev/null
rm wisdom*
rm info*
rm out*
cd ../../..

echo "now running: Na8-jellium/laser-tdlda/"
cd ./Na8-jellium/laser-tdlda/
export OMP_NUM_THREADS=6
../../qdd > /dev/null
rm wisdom*
rm info*
rm out*
cd ../..

echo "now running: Na8-jellium/laser-rta/"
cd ./Na8-jellium/laser-rta/
export OMP_NUM_THREADS=6
../../qdd > /dev/null
rm wisdom*
rm info*
rm out*
cd ../..

echo "now running: Na8-jellium/ground-state/"
cd ./Na8-jellium/ground-state/
export OMP_NUM_THREADS=6
../../qdd > /dev/null
rm wisdom*
rm info*
rm out*
cd ../..

echo "now running: Na11p/boost-015-tdlda/"
cd ./Na11p/boost-015-tdlda/
export OMP_NUM_THREADS=6
../../qdd > /dev/null
rm wisdom*
rm info*
rm out*
cd ../..

echo "now running: Na11p/boost-015-rta/"
cd ./Na11p/boost-015-rta/
export OMP_NUM_THREADS=6
../../qdd > /dev/null
rm wisdom*
rm info*
rm out*
cd ../..

echo "now running: Na11p/boost-020-tdlda/"
cd ./Na11p/boost-020-tdlda/
export OMP_NUM_THREADS=6
../../qdd > /dev/null
rm wisdom*
rm info*
rm out*
cd ../..

echo "now running: Na11p/boost-020-rta/"
cd ./Na11p/boost-020-rta/
export OMP_NUM_THREADS=6
../../qdd > /dev/null
rm wisdom*
rm info*
rm out*
cd ../..

echo "now running: Na11p/boost-025-tdlda/"
cd ./Na11p/boost-025-tdlda/
export OMP_NUM_THREADS=6
../../qdd > /dev/null
rm wisdom*
rm info*
rm out*
cd ../..

echo "now running: Na11p/boost-025-rta/"
cd ./Na11p/boost-025-rta/
export OMP_NUM_THREADS=6
../../qdd > /dev/null
rm wisdom*
rm info*
rm out*
cd ../..

echo "now running: Na8-ioncool/"
cd ./Na8-ioncool/
export OMP_NUM_THREADS=6
../qdd > /dev/null
rm wisdom*
rm info*
rm out*
cd ..

echo "now running: Na41p/boost/"
cd ./Na41p/boost/
export OMP_NUM_THREADS=6
../../qdd > /dev/null
rm wisdom*
rm info*
rm out*
cd ../..

