.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r15
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xc9d, %r15
nop
xor %r13, %r13
movl $0x61626364, (%r15)
nop
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_WC_ht+0xdbed, %rsi
lea addresses_UC_ht+0x931d, %rdi
clflush (%rsi)
nop
nop
nop
nop
add %r15, %r15
mov $44, %rcx
rep movsb
nop
nop
nop
nop
nop
and %r10, %r10
lea addresses_D_ht+0x1d61d, %rdi
nop
nop
nop
nop
nop
sub $46625, %rbp
movups (%rdi), %xmm3
vpextrq $0, %xmm3, %rcx
nop
nop
nop
nop
nop
xor $39791, %rbp
lea addresses_WC_ht+0x1991d, %rsi
lea addresses_normal_ht+0x11d1d, %rdi
nop
nop
and %r11, %r11
mov $90, %rcx
rep movsw
nop
sub %rsi, %rsi
lea addresses_WT_ht+0x7dd, %rdi
nop
nop
nop
sub %rbp, %rbp
mov $0x6162636465666768, %rsi
movq %rsi, (%rdi)
nop
sub %r15, %r15
lea addresses_A_ht+0xc11d, %rsi
lea addresses_WT_ht+0x234c, %rdi
xor $43463, %r11
mov $41, %rcx
rep movsw
sub %r15, %r15
lea addresses_D_ht+0x74fd, %rdi
clflush (%rdi)
nop
nop
add $54515, %r10
and $0xffffffffffffffc0, %rdi
vmovntdqa (%rdi), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rsi
nop
nop
nop
and $54385, %rbp
lea addresses_D_ht+0x13d95, %rdi
nop
nop
nop
nop
add %rsi, %rsi
mov (%rdi), %r15d
nop
xor $23347, %r11
lea addresses_UC_ht+0x1931d, %rsi
nop
nop
nop
xor $53173, %r15
and $0xffffffffffffffc0, %rsi
movaps (%rsi), %xmm5
vpextrq $0, %xmm5, %rdi
nop
nop
nop
nop
nop
cmp $17133, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r8
push %r9
push %rcx
push %rdi
push %rsi

// Store
mov $0x17c341000000031d, %r12
clflush (%r12)
nop
nop
cmp $12946, %rsi
mov $0x5152535455565758, %r9
movq %r9, %xmm1
vmovups %ymm1, (%r12)
nop
nop
nop
nop
cmp $33636, %r9

// Load
lea addresses_normal+0x1649d, %rsi
dec %r10
mov (%rsi), %r9d

// Exception!!!
nop
nop
mov (0), %r12
cmp %rdi, %rdi

// Store
lea addresses_WC+0x14e9d, %rcx
nop
nop
nop
nop
cmp %r12, %r12
movl $0x51525354, (%rcx)
and %r9, %r9

// Store
lea addresses_US+0x1b354, %r10
clflush (%r10)
nop
nop
xor $52189, %r12
mov $0x5152535455565758, %r9
movq %r9, %xmm3
movups %xmm3, (%r10)
nop
nop
nop
nop
nop
dec %r9

// Faulty Load
mov $0x17c341000000031d, %rcx
nop
inc %r8
movb (%rcx), %r9b
lea oracles, %r8
and $0xff, %r9
shlq $12, %r9
mov (%r8,%r9,1), %r9
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 2, 'NT': True, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}}
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 1, 'NT': True, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32, 'NT': True, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'AVXalign': True, 'size': 4, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 16, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'58': 117, '00': 30}
00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 00 00 00 58 00 58 00 58 58 58 58 00 58 58 58 58 00 58 00 58 00 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 58 58 00 00 58 58 00 00
*/
