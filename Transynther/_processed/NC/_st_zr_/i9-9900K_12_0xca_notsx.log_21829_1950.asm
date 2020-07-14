.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1b8cd, %r15
nop
nop
nop
sub %rbp, %rbp
mov (%r15), %rax
and $7934, %rbp
lea addresses_WC_ht+0x1c6cd, %r13
nop
nop
nop
and %r8, %r8
movl $0x61626364, (%r13)
nop
nop
nop
nop
sub %rax, %rax
lea addresses_normal_ht+0x8ccd, %rsi
lea addresses_D_ht+0x7f0d, %rdi
nop
nop
nop
nop
nop
add %r15, %r15
mov $57, %rcx
rep movsq
nop
nop
nop
nop
and %rbp, %rbp
lea addresses_WC_ht+0x950d, %r15
nop
nop
nop
sub %rsi, %rsi
mov (%r15), %ecx
nop
inc %r15
lea addresses_D_ht+0xa3cd, %r8
nop
nop
cmp %rdi, %rdi
movb $0x61, (%r8)
mfence
lea addresses_WT_ht+0xd8cd, %rsi
lea addresses_A_ht+0xc4cd, %rdi
clflush (%rdi)
nop
nop
xor $23621, %r8
mov $14, %rcx
rep movsq
and %r11, %r11
lea addresses_A_ht+0x13bcd, %r13
nop
nop
xor $31458, %r11
movups (%r13), %xmm5
vpextrq $0, %xmm5, %rdi
nop
nop
nop
xor %r11, %r11
lea addresses_WT_ht+0xcd, %rsi
lea addresses_WT_ht+0x7b0d, %rdi
and $9032, %r15
mov $13, %rcx
rep movsl
nop
nop
dec %rcx
lea addresses_WT_ht+0x30ad, %rsi
lea addresses_WC_ht+0x1366d, %rdi
clflush (%rdi)
nop
nop
nop
nop
cmp %r8, %r8
mov $82, %rcx
rep movsl
xor $2965, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_PSE+0xdccd, %r14
nop
nop
nop
nop
add %r8, %r8
mov $0x5152535455565758, %rdi
movq %rdi, %xmm3
movups %xmm3, (%r14)
add $14726, %r14

// Store
lea addresses_normal+0x48cd, %rsi
nop
nop
nop
and %rdx, %rdx
mov $0x5152535455565758, %r14
movq %r14, %xmm7
vmovups %ymm7, (%rsi)
nop
and %rcx, %rcx

// Store
lea addresses_D+0xd96d, %r12
nop
inc %rsi
mov $0x5152535455565758, %r8
movq %r8, (%r12)
nop
nop
nop
nop
nop
cmp $65403, %rcx

// Store
mov $0xccd, %rsi
nop
nop
nop
nop
nop
sub %r12, %r12
mov $0x5152535455565758, %r14
movq %r14, (%rsi)
nop
nop
nop
nop
cmp $46043, %rdx

// Store
lea addresses_D+0xb70d, %rdx
dec %r12
mov $0x5152535455565758, %rsi
movq %rsi, %xmm6
vmovups %ymm6, (%rdx)
nop
nop
nop
nop
add $49324, %rcx

// Store
lea addresses_normal+0xdd4d, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
dec %rdi
movw $0x5152, (%rsi)
nop
nop
nop
and $25859, %rsi

// Store
lea addresses_WT+0xe05, %r14
nop
nop
and $20354, %rsi
mov $0x5152535455565758, %rdi
movq %rdi, %xmm5
vmovntdq %ymm5, (%r14)
nop
xor %r12, %r12

// Store
lea addresses_A+0xaaed, %r8
nop
nop
nop
nop
nop
inc %rdi
movl $0x51525354, (%r8)
cmp %rdx, %rdx

// Load
lea addresses_UC+0x18b1d, %rdx
nop
nop
nop
add %rcx, %rcx
mov (%rdx), %r14w

// Exception!!!
nop
nop
nop
mov (0), %r12
inc %rdx

// Faulty Load
mov $0x26693e00000008cd, %r12
nop
nop
sub $56977, %rdx
mov (%r12), %r8
lea oracles, %r12
and $0xff, %r8
shlq $12, %r8
mov (%r12,%r8,1), %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}}
{'00': 6902, '58': 14927}
00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 00 00 58 58 58 58 00 00 58 58 58 00 58 00 00 58 58 58 58 58 58 58 58 58 00 58 58 58 00 00 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 00 58 58 58 58 00 00 58 58 58 58 00 00 00 00 58 58 58 58 00 00 00 00 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 00 00 00 58 58 00 58 58 58 58 58 58 00 00 58 58 58 00 00 58 58 00 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 58 58 58 00 00 58 58 58 58 00 58 58 58 58 58 58 00 58 58 00 00 00 58 58 00 58 58 58 58 58 00 00 00 00 00 58 00 00 58 58 58 58 58 58 58 58 58 00 00 00 00 00 58 58 58 00 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 00 00 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 00 00 00 00 58 58 58 00 58 58 58 58 58 00 00 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 00 00 58 58 58 58 00 58 00 00 00 00 58 58 58 58 58 58 58 58 58 58 58 00 00 00 58 58 58 00 00 58 58 58 58 58 58 00 00 58 58 58 58 58 00 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 00 00 58 58 58 58 58 00 58 58 58 58 00 58 58 58 00 00 58 58 58 58 58 58 00 00 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 00 58 00 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 00 00 58 58 58 58 00 58 00 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 00 58 58 00 00 00 00 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 00 00 58 58 58 58 58 00 58 00 00 00 00 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 58 58 00 00 00 00 00 00 00 00 00 00 00 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 00 00 58 58 00 00 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 00 58 00 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 00 00 58 58 58 00 00 00 00 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 00 00 58 00 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 00 00 00 00 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 00 00 00 00 58 58 58 58 58 58 58 58 58 00 58 00 00 58 58 58 58 00 00 58 58 58 00 00 00 58 58 58 58 00 00 00 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 00 00 00 00 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 00 00 00 58 00 00 58 58 00 00 00 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 00 00 58 58 00 00 00 58 58 58 00 00 58 00 00 00 58 58 00 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 00 00 00 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 00 00 00 58 58 58 00 58 00 58 58 00 00 58 58 58 58 00 58 58 58 58 58 58 58 00 00 00 00 58 58 58 58 58 00 00 58 58 58 58 58 00 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 00 58 00 58 58 58 58 00 58 00 58 00 58 58 00 58 58 58 58 00 00 58 00 00 00 58 58 58 58 58 00 58 00 00 58 58 00 58 00 58 58 58 58 58 00 00 58 00 58 58 58
*/
