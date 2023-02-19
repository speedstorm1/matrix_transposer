#!/usr/bin/env python3
#
# grade_trans.py - This driver tests the correctness and performance of their transpose
#     function. It runs ./test-trans on three different sized
#     matrices (32x32, 64x64, and 63x67) to test the correctness and
#     performance of the transpose function.
#
import subprocess;
import re;
import os;
import sys;
import optparse;

#
# computeMissScore - compute the score depending on the number of
# cache misses
#
def computeMissScore(miss, lower, upper, full_score):
    if miss <= lower:
        return full_score
    if miss >= upper:
        return 0

    score = (miss - lower) * 1.0
    range = (upper- lower) * 1.0
    return round((1 - score / range) * full_score, 2)

#
# main - Main function
#
def main():

    # Configure maxscores here
    maxscore= {};
    maxscore['trans32'] = 5
    maxscore['trans64'] = 5
    # maxscore['trans63'] = 5

    # Parse the command line arguments
    p = optparse.OptionParser()
    p.add_option("-A", action="store_true", dest="autograde",
                 help="emit autoresult string for Autolab");
    opts, args = p.parse_args()
    autograde = opts.autograde

    # Check the correctness and performance of the transpose function
    # 32x32 transpose
    print("Part B: Testing transpose function")
    print("Running ./test-trans -M 32 -N 32")
    p = subprocess.Popen("./test-trans -M 32 -N 32 | grep TEST_TRANS_RESULTS",
                         shell=True, stdout=subprocess.PIPE)
    stdout_data = p.communicate()[0].decode("utf-8")
    result32 = re.findall(r'(\d+)', stdout_data)

    # 64x64 transpose
    print("Running ./test-trans -M 64 -N 64")
    p = subprocess.Popen("./test-trans -M 64 -N 64 | grep TEST_TRANS_RESULTS",
                         shell=True, stdout=subprocess.PIPE)
    stdout_data = p.communicate()[0].decode("utf-8")
    result64 = re.findall(r'(\d+)', stdout_data)

    # 63x67 transpose
    # print "Running ./test-trans -M 63 -N 67"
    # p = subprocess.Popen("./test-trans -M 63 -N 67 | grep TEST_TRANS_RESULTS",
    #                      shell=True, stdout=subprocess.PIPE)
    # stdout_data = p.communicate()[0]
    # result63 = re.findall(r'(\d+)', stdout_data)

    # Compute the scores for each step
    trans_cscore = int(result32[0]) * int(result64[0]);
    #trans_cscore = int(result32[0]) * int(result64[0]) * int(result63[0]);
    miss32 = int(result32[1])
    miss64 = int(result64[1])
    # miss63 = int(result63[1])
    trans32_score = computeMissScore(miss32, 288, 600, maxscore['trans32']) * int(result32[0])
    trans64_score = computeMissScore(miss64, 1699, 2400, maxscore['trans64']) * int(result64[0])
    # trans63_score = computeMissScore(miss63, 2350, 3200, maxscore['trans63']) * int(result63[0])
    total_score = trans32_score + trans64_score# + trans63_score

    # Summarize the results
    print("\nCache Lab summary:")
    print("%-22s%8s%10s%12s" % ("", "Points", "Max pts", "Misses"))

    misses = str(miss32)
    if miss32 == 2**31-1 :
        misses = "invalid"
    print("%-22s%8.2f%10d%12s" % ("Trans perf 32x32", trans32_score,
                                  maxscore['trans32'], misses))

    misses = str(miss64)
    if miss64 == 2**31-1 :
        misses = "invalid"
    print("%-22s%8.2f%10d%12s" % ("Trans perf 64x64", trans64_score,
                                  maxscore['trans64'], misses))

    # misses = str(miss63)
    # if miss63 == 2**31-1 :
    #     misses = "invalid"
    # print "%-22s%8.2f%10d%12s" % ("Trans perf 63x67", trans63_score,
    #                               maxscore['trans63'], misses)

    print("%22s%8.2f%10d" % ("Total points", total_score,
                             maxscore['trans32'] +
                             maxscore['trans64'])) #+ maxscore['trans63'])

    # Emit autoresult string for Autolab if called with -A option
    # if autograde:
    #     autoresult="%.1f:%d:%d:%d" % (total_score, miss32, miss64, miss63)
    #     print "\nAUTORESULT_STRING=%s" % autoresult
    if autograde:
        autoresult="%.1f:%d:%d" % (total_score, miss32, miss64)
        print("\nAUTORESULT_STRING=%s" % autoresult)


# execute main only if called as a script
if __name__ == "__main__":
    main()

