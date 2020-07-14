.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x16052, %rsi
lea addresses_A_ht+0x1c852, %rdi
nop
nop
nop
nop
xor $27455, %r15
mov $43, %rcx
rep movsb
nop
nop
add $23467, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r8
push %r9
push %rbp
push %rbx
push %rdi

// Store
lea addresses_D+0x15292, %r13
nop
nop
nop
nop
nop
xor %r9, %r9
mov $0x5152535455565758, %rbx
movq %rbx, %xmm1
vmovups %ymm1, (%r13)
nop
nop
nop
dec %rdi

// Load
lea addresses_PSE+0x1c952, %r11
nop
nop
and $19141, %rbp
movups (%r11), %xmm0
vpextrq $0, %xmm0, %r13
nop
xor %rbp, %rbp

// Faulty Load
lea addresses_UC+0x5052, %r8
nop
nop
nop
nop
dec %rdi
movb (%r8), %r11b
lea oracles, %rbx
and $0xff, %r11
shlq $12, %r11
mov (%rbx,%r11,1), %r11
pop %rdi
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 5, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 4, 'size': 16, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'00': 10}
00 00 00 00 00 00 00 00 00 00
*/
