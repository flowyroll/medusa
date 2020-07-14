.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x10039, %rsi
nop
nop
nop
nop
add $33126, %rbp
mov $0x6162636465666768, %r13
movq %r13, (%rsi)
nop
dec %rbp
lea addresses_WT_ht+0x3a1, %r9
nop
nop
nop
nop
add $60923, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm0
vmovups %ymm0, (%r9)
nop
nop
nop
nop
nop
add $29585, %rcx
lea addresses_A_ht+0xc2e1, %rcx
nop
nop
sub %r12, %r12
mov $0x6162636465666768, %rdi
movq %rdi, %xmm7
vmovups %ymm7, (%rcx)
nop
nop
nop
and $53838, %rbp
lea addresses_D_ht+0x5ba1, %rcx
nop
nop
nop
add %rsi, %rsi
movb $0x61, (%rcx)
nop
nop
nop
dec %rsi
lea addresses_A_ht+0x1dba1, %r12
and $36171, %rsi
mov $0x6162636465666768, %r13
movq %r13, (%r12)
dec %rdi
lea addresses_D_ht+0x105c1, %rsi
lea addresses_UC_ht+0x5d21, %rdi
nop
nop
nop
nop
cmp $64895, %r8
mov $7, %rcx
rep movsl
nop
nop
nop
nop
nop
sub %rbp, %rbp
lea addresses_D_ht+0xdf61, %rcx
nop
and $35142, %r9
mov (%rcx), %r12w
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_WC_ht+0x1d661, %rcx
clflush (%rcx)
xor %r12, %r12
movw $0x6162, (%rcx)
nop
lfence
lea addresses_WC_ht+0x1afa1, %r12
xor %r9, %r9
mov (%r12), %r8d
nop
nop
sub %rsi, %rsi
lea addresses_A_ht+0x13b41, %rdi
nop
nop
nop
dec %rcx
mov $0x6162636465666768, %rbp
movq %rbp, (%rdi)
nop
nop
nop
nop
add $27510, %rdi
lea addresses_normal_ht+0x15e05, %rsi
nop
nop
nop
nop
nop
lfence
movb (%rsi), %r8b
nop
cmp %rcx, %rcx
lea addresses_WT_ht+0x2da1, %r8
add %r13, %r13
mov $0x6162636465666768, %rcx
movq %rcx, (%r8)
nop
nop
sub $9673, %rbp
lea addresses_normal_ht+0xfce1, %rdi
clflush (%rdi)
sub %r8, %r8
movb (%rdi), %cl
nop
nop
lfence
lea addresses_WT_ht+0xa55b, %rbp
sub $14951, %r13
mov $0x6162636465666768, %rsi
movq %rsi, (%rbp)
nop
and $57709, %r9
lea addresses_UC_ht+0x191d1, %rdi
nop
nop
nop
nop
dec %rbp
mov (%rdi), %r8d
inc %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %r9
push %rax
push %rcx

// Load
lea addresses_US+0xbda1, %r9
nop
nop
nop
sub %r14, %r14
mov (%r9), %r15w
nop
nop
nop
inc %rax

// Faulty Load
lea addresses_D+0x67a1, %r15
nop
nop
nop
nop
nop
cmp %r11, %r11
mov (%r15), %r9w
lea oracles, %rax
and $0xff, %r9
shlq $12, %r9
mov (%rax,%r9,1), %r9
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'36': 33}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
