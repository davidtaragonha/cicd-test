package org.alonso.cicd_test.controller;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Tag;
import org.junit.jupiter.api.Test;

import static org.alonso.cicd_test.controller.TestCategories.IT;
import static org.junit.jupiter.api.Assertions.assertTrue;

@Tag(IT)
class HelloControllerITTest {
    @DisplayName("Dummy IT test successful")
    @Test
    void dummySuccessITTest() {
        assertTrue(true);
    }
}