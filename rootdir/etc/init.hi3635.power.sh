#!/system/bin/sh
#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

export PATH=/system/bin

for ddrfreq_gov in /sys/class/devfreq/ddrfreq/governor
do
	echo "pm_qos" > $ddrfreq_gov
done

for ddrfreq_up_threshold_gov in /sys/class/devfreq/ddrfreq_up_threshold/governor
do
	echo "pm_qos" > $ddrfreq_up_threshold_gov
done

for gpufreq_gov in /sys/class/devfreq/gpufreq/governor
do
        echo "mali_ondemand" > $gpufreq_gov
done
