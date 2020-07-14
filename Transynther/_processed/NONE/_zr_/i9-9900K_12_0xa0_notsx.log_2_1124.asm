.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %r8
push %rax
push %rbp
lea addresses_UC_ht+0x16d84, %rbp
nop
nop
nop
nop
nop
add %rax, %rax
mov $0x6162636465666768, %r15
movq %r15, %xmm5
and $0xffffffffffffffc0, %rbp
movaps %xmm5, (%rbp)
nop
nop
nop
nop
nop
lfence
lea addresses_WT_ht+0x10fbc, %rbp
nop
nop
nop
and $57452, %r11
movb (%rbp), %r12b
nop
nop
nop
xor $55728, %rbp
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r9
push %rbp
push %rbx
push %rdi

// Load
lea addresses_A+0x139bc, %rbp
nop
nop
sub %r11, %r11
mov (%rbp), %bx
nop
nop
nop
nop
nop
inc %rbx

// Store
lea addresses_PSE+0xae88, %r14
dec %r13
mov $0x5152535455565758, %rbx
movq %rbx, %xmm7
vmovups %ymm7, (%r14)
nop
nop
nop
nop
nop
cmp $3767, %rbx

// Store
lea addresses_RW+0x1d3c6, %r14
nop
nop
nop
xor %rbx, %rbx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm3
movups %xmm3, (%r14)
nop
nop
nop
cmp $8766, %rbx

// Load
mov $0x41d6f700000007bc, %r11
nop
nop
nop
nop
nop
cmp %rbp, %rbp
mov (%r11), %r9d
nop
xor %r14, %r14

// Store
lea addresses_WT+0x110fc, %r11
nop
nop
and $8765, %r9
mov $0x5152535455565758, %rbp
movq %rbp, (%r11)
and $40211, %r11

// Store
lea addresses_US+0x14e3c, %r13
nop
nop
nop
add $58749, %rbp
mov $0x5152535455565758, %r9
movq %r9, %xmm7
vmovups %ymm7, (%r13)
nop
nop
nop
nop
nop
xor $10770, %r14

// Store
mov $0x438e9b0000000160, %r11
nop
nop
sub %rbx, %rbx
mov $0x5152535455565758, %r9
movq %r9, (%r11)
nop
add %r9, %r9

// Faulty Load
lea addresses_A+0x67bc, %rbx
nop
nop
add %r13, %r13
vmovups (%rbx), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r14
lea oracles, %rbx
and $0xff, %r14
shlq $12, %r14
mov (%rbx,%r14,1), %r14
pop %rdi
pop %rbx
pop %rbp
pop %r9
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}}
[Faulty Load]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 16, 'NT': False, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'00': 2}
00 00
*/
