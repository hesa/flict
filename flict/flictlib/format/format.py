#!/usr/bin/python3

###################################################################
#
# flict - FOSS License Compatibility Tool
#
# SPDX-FileCopyrightText: 2020 Henrik Sandklef
#
# SPDX-License-Identifier: GPL-3.0-or-later
#
###################################################################


class FormatInterface:

    def format_support_licenses(self, supported_licenses):
        return "default implmentation | format_support_licenses(): " + str(supported_licenses)

    def format_license_list(self, license_list):
        return "default implmentation | format_license_list(): " + str(license_list)
        
    def format_report(self, report):
        return "default implmentation | format_report(): " + str(report)

    def format_license_combinations(self, project):
        return "default implmentation | format_license_combinations(): " + str(project)
        
    def format_outbound_license(self, outbounds):
        return "default implmentation | format_outbound_license(): " + str(outbounds)
        
    def format_license_combinations(self, combinations):
        return "default implmentation | format_license_combinations(): " + str(combinations)
        
    def format_compats(self, compats):
        return "default implmentation | format_compats(): " + str(compats)
        
    
