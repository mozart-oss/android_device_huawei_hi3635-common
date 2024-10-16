/*
   Copyright (C) 2024, The Lineage OS Project
   Redistribution and use in source and binary forms, with or without
   modification, are permitted provided that the following conditions are
   met:
    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above
      copyright notice, this list of conditions and the following
      disclaimer in the documentation and/or other materials provided
      with the distribution.
    * Neither the name of The Linux Foundation nor the names of its
      contributors may be used to endorse or promote products derived
      from this software without specific prior written permission.
   THIS SOFTWARE IS PROVIDED "AS IS" AND ANY EXPRESS OR IMPLIED
   WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
   MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT
   ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS
   BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
   CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
   SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
   BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
   WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
   OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN
   IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#include <fstream>
#include <string>

#include "vendor_init.h"
#include "property_service.h"
#include "log.h"
#include "util.h"

#include "init_huawei.h"

void init_target_properties()
{
    std::ifstream fin;
    std::string buf;

    fin.open("/sys/firmware/devicetree/base/hisi,boardname");
    while (getline(fin, buf))
        if ((buf.find("801W") != std::string::npos) || (buf.find("801L") != std::string::npos) || (buf.find("802L") != std::string::npos) || (buf.find("803L") != std::string::npos))
            break;
    fin.close();

    property_set("ro.build.description", "MOZART-user 6.0 MRA58K eng.huawei.20161129.130256 test-keys");
    property_set("ro.build.fingerprint", "Huawei/MOZART/hi3635:6.0/MRA58K/huawei11291304:user/test-keys");

    if (buf.find("801W") != std::string::npos) {
        property_set("ro.product.model", "M2-801W");
        property_set("ro.boardid.product", "61537");
    }
    else if (buf.find("801L") != std::string::npos) {
        property_set("ro.product.model", "M2-801L");
        property_set("ro.boardid.product", "61537");
    }
    else if (buf.find("802L") != std::string::npos) {
        property_set("ro.product.model", "M2-802L");
        property_set("ro.boardid.product", "61537");
    }
    else if (buf.find("803L") != std::string::npos) {
        property_set("ro.product.model", "M2-803L");
        property_set("ro.boardid.product", "61537");
    }
    else {
	property_set("ro.product.model", "mozart");
    }
}
