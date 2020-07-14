.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x928, %rsi
lea addresses_D_ht+0x11cfd, %rdi
clflush (%rsi)
nop
nop
nop
nop
add $24329, %r15
mov $55, %rcx
rep movsl
nop
nop
sub $46031, %r10
lea addresses_WT_ht+0xad88, %rbp
nop
nop
nop
nop
nop
add $60097, %rbx
movb $0x61, (%rbp)
nop
inc %r15
lea addresses_WC_ht+0x1495e, %rbx
clflush (%rbx)
nop
nop
nop
nop
nop
cmp $32769, %rcx
movb $0x61, (%rbx)
nop
nop
sub $6627, %rdi
lea addresses_WT_ht+0xee88, %r15
nop
nop
nop
nop
xor %rcx, %rcx
mov $0x6162636465666768, %r10
movq %r10, (%r15)
nop
nop
nop
nop
cmp $27708, %rbx
lea addresses_A_ht+0x11d88, %r15
nop
nop
nop
and %rbp, %rbp
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
movups %xmm3, (%r15)
nop
nop
inc %rcx
lea addresses_WC_ht+0x5988, %rdi
nop
nop
nop
xor $13326, %r15
mov $0x6162636465666768, %r10
movq %r10, %xmm4
movups %xmm4, (%rdi)
nop
nop
sub %rbp, %rbp
lea addresses_UC_ht+0x1ec20, %rsi
lea addresses_WC_ht+0x19a88, %rdi
nop
cmp $836, %rbx
mov $43, %rcx
rep movsl
nop
nop
nop
add $17267, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r15
push %rbp
push %rdx

// Store
mov $0xc88, %r10
nop
nop
nop
nop
sub $37315, %rdx
mov $0x5152535455565758, %r12
movq %r12, %xmm0
movups %xmm0, (%r10)
nop
nop
add %r11, %r11

// Store
lea addresses_D+0x10ec8, %r15
nop
nop
xor $44932, %r13
movb $0x51, (%r15)
nop
nop
nop
nop
add $58351, %r10

// Store
lea addresses_RW+0x9688, %r15
clflush (%r15)
nop
nop
nop
nop
cmp %r10, %r10
mov $0x5152535455565758, %rbp
movq %rbp, %xmm3
movaps %xmm3, (%r15)
nop
nop
and $38561, %rbp

// Store
mov $0x308, %rdx
clflush (%rdx)
nop
nop
nop
inc %r15
mov $0x5152535455565758, %r12
movq %r12, (%rdx)
cmp $2907, %r11

// Store
lea addresses_A+0x19648, %r10
nop
cmp %r13, %r13
mov $0x5152535455565758, %r11
movq %r11, %xmm4
vmovups %ymm4, (%r10)
nop
nop
nop
nop
xor %rdx, %rdx

// Store
lea addresses_US+0x1ea68, %rdx
nop
nop
nop
nop
inc %r11
mov $0x5152535455565758, %rbp
movq %rbp, (%rdx)
nop
nop
nop
nop
sub %r15, %r15

// Store
mov $0x590f220000000188, %rbp
and $11486, %r11
movb $0x51, (%rbp)
nop
nop
sub $22721, %rdx

// Store
lea addresses_normal+0x19688, %r12
nop
and $30758, %rdx
movw $0x5152, (%r12)
nop
nop
nop
nop
nop
cmp $56680, %rdx

// Store
lea addresses_WT+0xa588, %r10
nop
nop
nop
nop
cmp %r13, %r13
mov $0x5152535455565758, %rbp
movq %rbp, %xmm4
movntdq %xmm4, (%r10)
sub $2890, %r11

// Faulty Load
lea addresses_US+0xbd88, %r11
nop
nop
nop
nop
nop
xor $56216, %r15
movups (%r11), %xmm0
vpextrq $1, %xmm0, %r12
lea oracles, %rdx
and $0xff, %r12
shlq $12, %r12
mov (%rdx,%r12,1), %r12
pop %rdx
pop %rbp
pop %r15
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': True, 'size': 16, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 16, 'NT': True, 'same': False, 'congruent': 10}}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1, 'NT': True, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 8, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'08': 11, '31': 3, '10': 1, 'd1': 4, '00': 18211, 'ff': 2}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
