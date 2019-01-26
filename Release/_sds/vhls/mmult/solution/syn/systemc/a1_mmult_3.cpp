#include "a1_mmult.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

void a1_mmult::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"ap_rst_n\" :  \"" << ap_rst_n.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ap_start\" :  \"" << ap_start.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"ap_done\" :  \"" << ap_done.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_idle\" :  \"" << ap_idle.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_ready\" :  \"" << ap_ready.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"A_dout\" :  \"" << A_dout.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"A_empty_n\" :  \"" << A_empty_n.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"A_read\" :  \"" << A_read.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"B_dout\" :  \"" << B_dout.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"B_empty_n\" :  \"" << B_empty_n.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"B_read\" :  \"" << B_read.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"C_din\" :  \"" << C_din.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"C_full_n\" :  \"" << C_full_n.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"C_write\" :  \"" << C_write.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

