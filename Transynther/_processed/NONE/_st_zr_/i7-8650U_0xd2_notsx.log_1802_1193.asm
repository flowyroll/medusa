.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x1404, %rdx
nop
nop
nop
nop
nop
sub %r10, %r10
mov (%rdx), %r11
nop
nop
nop
nop
nop
and %rax, %rax
lea addresses_UC_ht+0x129a4, %rsi
and $63302, %r11
mov (%rsi), %r13w
cmp %rax, %rax
lea addresses_normal_ht+0x94d4, %rsi
lea addresses_A_ht+0x3304, %rdi
nop
nop
nop
nop
nop
xor %r10, %r10
mov $120, %rcx
rep movsb
xor %rsi, %rsi
lea addresses_WC_ht+0x1c604, %rdx
clflush (%rdx)
inc %rdi
movb (%rdx), %al
cmp %r11, %r11
lea addresses_WT_ht+0x1b604, %rcx
clflush (%rcx)
nop
and $44691, %r11
mov (%rcx), %r13w
nop
nop
nop
nop
add %rax, %rax
lea addresses_D_ht+0x17c84, %rsi
lea addresses_WC_ht+0x278c, %rdi
clflush (%rdi)
xor $62020, %r13
mov $99, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp $50210, %rsi
lea addresses_UC_ht+0x504, %r11
nop
nop
nop
sub %rcx, %rcx
movb (%r11), %al
nop
add %rdx, %rdx
lea addresses_D_ht+0x1625d, %rdx
sub %rdi, %rdi
mov (%rdx), %r10d
nop
nop
and %r10, %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r8
push %rbp
push %rcx
push %rdi

// Store
lea addresses_WC+0x6764, %rbp
nop
add $36667, %rdi
mov $0x5152535455565758, %rcx
movq %rcx, (%rbp)
nop
nop
xor %r12, %r12

// Store
lea addresses_PSE+0x5de4, %rdi
nop
nop
xor %rbp, %rbp
movw $0x5152, (%rdi)
nop
nop
nop
xor %r12, %r12

// Store
lea addresses_normal+0x1d388, %rdi
nop
inc %r8
movl $0x51525354, (%rdi)
nop
nop
and %rdi, %rdi

// Store
lea addresses_UC+0x1f404, %rdi
nop
nop
nop
xor $25735, %r11
mov $0x5152535455565758, %r12
movq %r12, %xmm1
vmovups %ymm1, (%rdi)
dec %r8

// Store
mov $0xe86, %rbp
clflush (%rbp)
xor %r8, %r8
movb $0x51, (%rbp)
nop
nop
inc %rbp

// Store
lea addresses_D+0x111fc, %rdi
nop
nop
nop
nop
and $51364, %r10
mov $0x5152535455565758, %r12
movq %r12, %xmm3
vmovntdq %ymm3, (%rdi)
nop
nop
nop
add $14044, %rcx

// Faulty Load
lea addresses_A+0x16404, %r10
nop
cmp $34539, %r12
mov (%r10), %ecx
lea oracles, %r11
and $0xff, %rcx
shlq $12, %rcx
mov (%r11,%rcx,1), %rcx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'58': 1164, '00': 638}
58 58 58 58 58 58 58 58 00 58 58 58 00 58 00 00 00 00 00 00 00 58 00 58 58 00 00 00 00 58 58 58 00 58 00 58 58 58 58 58 00 58 00 00 58 58 58 58 00 00 58 58 58 00 58 58 58 58 00 00 00 00 58 00 58 58 58 58 00 00 00 58 58 58 58 00 58 58 58 58 58 58 58 00 00 00 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 00 58 58 00 58 58 58 58 00 00 58 58 58 58 58 00 00 58 00 58 00 00 00 00 00 58 58 58 58 58 58 00 58 00 58 00 00 00 58 58 00 00 00 00 58 58 58 00 00 58 58 58 58 58 58 00 00 00 58 58 58 58 58 00 00 58 58 58 58 00 00 00 58 58 58 58 58 58 58 58 00 58 00 58 58 58 58 00 00 00 00 00 58 58 58 58 00 58 00 58 58 00 00 00 00 58 00 58 00 58 58 58 58 00 58 58 58 58 58 58 58 00 58 00 58 58 58 00 58 00 58 58 58 00 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 00 58 58 58 00 00 00 00 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 00 00 58 58 58 58 58 58 58 58 58 00 00 00 00 58 58 58 58 58 58 58 00 58 58 58 00 00 00 58 58 58 58 00 58 58 58 00 00 58 58 00 00 00 00 58 58 58 58 58 58 58 58 00 00 00 58 00 58 58 58 58 58 58 58 00 00 00 58 58 58 58 58 58 58 00 58 58 00 00 58 00 58 00 58 00 00 58 00 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 00 00 00 58 00 58 00 58 58 58 58 00 58 58 58 58 00 00 58 58 00 58 58 58 58 58 58 00 58 58 58 00 00 00 00 58 00 00 58 58 58 58 58 58 00 00 58 58 00 58 00 58 00 58 58 58 58 58 58 58 58 58 58 00 58 00 58 00 58 58 58 58 58 58 58 00 00 00 00 00 00 00 58 00 58 58 58 00 58 00 00 58 00 00 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 00 00 00 00 00 00 58 00 58 58 58 58 00 00 58 00 00 00 00 00 00 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 00 00 58 00 58 58 00 00 00 00 00 58 58 58 58 58 58 58 58 00 00 00 58 58 00 00 00 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 00 00 58 00 58 58 58 58 58 58 58 00 00 00 00 58 58 58 58 58 58 58 00 58 58 58 00 00 58 58 00 00 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 00 00 00 00 58 00 00 58 00 58 58 00 00 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 00 00 58 00 58 58 00 00 58 58 00 00 58 00 58 58 58 00 58 00 00 58 58 00 00 58 00 58 58 58 58 58 00 00 00 58 00 58 58 00 58 00 58 58 58 58 58 00 00 00 00 00 58 58 58 58 58 58 58 58 58 00 00 58 58 58 00 58 00 00 00 00 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 00 00 00 00 58 58 58 58 58 58 58 00 00 58 00 58 58 58 58 58 58 58 58 00 00 58 58 00 00 00 00 00 58 58 58 00 00 58 58 00 00 58 58 58 58 58 00 58 00 00 00 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 00 00 58 58 58 58 00 58 58 00 58 58 58 58 00 58 58 00 58 00 58 00 58 58 58 58 58 00 00 00 58 58 58 58 00 00 58 00 58 00 00 00 58 58 00 00 58 00 00 58 58 00 00 00 00 00 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 00 00 58 00 00 58 00 00 58 58 58 58 00 58 58 00 58 00 58 00 00 00 58 00 58 00 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 00 00 00 00 00 00 58 00 00 00 58 58 58 58 58 58 58 58 00 00 00 58 58 00 00 00 00 58 58 58 58 58 58 58 58 58
*/
