.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x18b17, %rsi
lea addresses_A_ht+0x47f7, %rdi
nop
nop
nop
sub $7062, %rbp
mov $103, %rcx
rep movsw
nop
nop
nop
nop
nop
inc %r15
lea addresses_UC_ht+0x91a7, %r11
nop
nop
add %r14, %r14
and $0xffffffffffffffc0, %r11
movaps (%r11), %xmm3
vpextrq $1, %xmm3, %rcx
nop
nop
nop
cmp %r14, %r14
lea addresses_normal_ht+0x15217, %r11
nop
nop
nop
nop
nop
add $61582, %rbp
mov $0x6162636465666768, %r14
movq %r14, (%r11)
nop
and $6144, %rcx
lea addresses_D_ht+0x30d7, %rsi
lea addresses_A_ht+0x1e817, %rdi
nop
cmp %r15, %r15
mov $113, %rcx
rep movsl
nop
nop
nop
lfence
lea addresses_A_ht+0x7617, %rsi
lea addresses_WT_ht+0x12d67, %rdi
nop
cmp %rdx, %rdx
mov $123, %rcx
rep movsq
and %rdi, %rdi
lea addresses_D_ht+0x10817, %r11
nop
nop
inc %rdi
movl $0x61626364, (%r11)
nop
nop
nop
dec %rdi
lea addresses_UC_ht+0xbc17, %rbp
nop
nop
nop
nop
nop
add $20616, %rdi
mov $0x6162636465666768, %r14
movq %r14, %xmm1
vmovups %ymm1, (%rbp)
cmp $35137, %rcx
lea addresses_D_ht+0xfad7, %rsi
lea addresses_WC_ht+0xac17, %rdi
sub $1532, %r15
mov $98, %rcx
rep movsl
nop
xor $37664, %rcx
lea addresses_WT_ht+0x1db57, %rdx
nop
nop
nop
nop
nop
cmp $45325, %r14
movw $0x6162, (%rdx)
nop
nop
nop
nop
cmp $30749, %rdx
lea addresses_WC_ht+0x11717, %r11
nop
nop
nop
cmp %r15, %r15
mov $0x6162636465666768, %rsi
movq %rsi, (%r11)
nop
nop
xor %r14, %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r8
push %r9
push %rbp
push %rbx

// Store
mov $0x136570000000597, %r11
nop
nop
nop
nop
nop
cmp %r9, %r9
movl $0x51525354, (%r11)
add %r9, %r9

// Store
lea addresses_PSE+0x7077, %rbx
nop
nop
nop
nop
nop
inc %r13
mov $0x5152535455565758, %r9
movq %r9, %xmm1
vmovups %ymm1, (%rbx)

// Exception!!!
nop
nop
nop
nop
mov (0), %r11
nop
nop
nop
nop
nop
xor $26628, %rbx

// Store
lea addresses_WT+0xc617, %r9
dec %r11
movl $0x51525354, (%r9)
nop
nop
nop
nop
nop
inc %rbx

// Store
lea addresses_RW+0xa897, %r12
nop
inc %r8
movw $0x5152, (%r12)
nop
nop
xor $61598, %r8

// Store
lea addresses_normal+0xd35f, %r11
nop
nop
nop
nop
sub %r9, %r9
mov $0x5152535455565758, %r8
movq %r8, (%r11)
nop
nop
cmp %rbp, %rbp

// Store
lea addresses_D+0x401, %rbx
nop
nop
xor $19255, %r12
mov $0x5152535455565758, %r11
movq %r11, %xmm5
movups %xmm5, (%rbx)
cmp %r9, %r9

// Faulty Load
lea addresses_D+0x16417, %r11
dec %r13
movb (%r11), %r9b
lea oracles, %r12
and $0xff, %r9
shlq $12, %r9
mov (%r12,%r9,1), %r9
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 1}}
[Faulty Load]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 16, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 8}}
{'36': 1}
36
*/
