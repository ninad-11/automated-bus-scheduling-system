function isOverlap(start1, end1, start2, end2) {

    return start1 < end2 && end1 > start2;
}

test("detects overlapping schedules", () => {

    expect(
        isOverlap(
            "06:00",
            "10:00",
            "09:00",
            "11:00"
        )
    ).toBe(true);
});

test("detects non-overlapping schedules", () => {

    expect(
        isOverlap(
            "06:00",
            "08:00",
            "09:00",
            "11:00"
        )
    ).toBe(false);
});