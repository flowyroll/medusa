#!/usr/bin/python

import threading
import select
import sys
import time
import operator
import queue

input_queue = queue.Queue()
results = {}

def print_result_as_str(result):
    result_str = ""
    for i in range(0, len(result), 2):
        value = int(result[i:i+2].strip(), 16)
        if value <= 32 or value >= 176:
            result_str += "<%d>" % value
        else:
            result_str += "%c" % value

    print(result_str)

def match(a, b):
    if a[:4] == b[-4:]:
        return 1
    elif a[-4:] == b[:4]:
        return -1

    return 0

def test_prediction_idx(sorted_results, idx):
    # pick first
    first = sorted_results[idx]
    sorted_results.remove(first)

    result = first[0]

    while len(sorted_results) > 0:
        nothing_matches = False

        # find matching
        for entry in sorted_results:
            r = match(result, entry[0])
            if r == -1:
                result = result + entry[0][0:2]
                sorted_results.remove(entry)
                nothing_matches = True
            elif r == 1:
                result = entry[0][0:2] + result
                sorted_results.remove(entry)
                nothing_matches = True
            else:
                pass

        if nothing_matches is False:
            break

    print_result_as_str(result)


def update_prediction():
    # start with first input
    sorted_results = sorted(results.items(), key=operator.itemgetter(1), reverse=True)

    for i,_ in enumerate(sorted_results):
        if sorted_results[i][1] > 10:
            print("Starting with %s" % sorted_results[i][0])
            r = sorted_results
            test_prediction_idx(r, i)


def parse_line(line):
    try:
        # convert to bytes
        if False:
            line_hex = [int(x, 16) for x in line.split(":")[0].split(" ")]

            f = bytearray()
            f.append(line_hex[0])
            f.append(line_hex[1])
            f.append(line_hex[2])
            f = bytes(f)
            key = f
        else:
            key = "".join(line.split(":")[0].split(" "))

        if key in results:
            results[key] += 1
        else:
            results[key] = 1

        return True
    except:
        return False

def idle():
    time.sleep(0.001)

def read_input():
    if select.select([sys.stdin,],[],[],0.0)[0]:
        for line in sys.stdin:
            line = line.strip()
            input_queue.put(line)
    else:
        idle()

def main():
    # Start input thread
    input_thread = threading.Thread(target=read_input)
    input_thread.start()

    try:
        while True:
            try:
                line = input_queue.get(timeout=1)
                if not parse_line(line):
                    continue
            except queue.Empty:
                update_prediction()
                idle()
    except KeyboardInterrupt:
        return

if __name__ == "__main__":
    main()
