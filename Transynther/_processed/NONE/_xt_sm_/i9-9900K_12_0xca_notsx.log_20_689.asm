.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0xfe3a, %rsi
nop
nop
cmp %rcx, %rcx
movw $0x6162, (%rsi)
nop
nop
nop
xor $2342, %r11
lea addresses_normal_ht+0x1d63a, %r15
nop
nop
nop
cmp %r9, %r9
mov $0x6162636465666768, %rdx
movq %rdx, %xmm7
vmovups %ymm7, (%r15)
nop
nop
nop
nop
inc %rsi
lea addresses_A_ht+0xbe3a, %rsi
lea addresses_D_ht+0x1c21a, %rdi
nop
sub $34333, %r8
mov $7, %rcx
rep movsq
nop
nop
cmp $24550, %rdi
lea addresses_UC_ht+0x19bb2, %rdi
nop
nop
nop
add $55766, %rsi
vmovups (%rdi), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rdx
nop
nop
nop
nop
inc %r9
lea addresses_A_ht+0x11a82, %rdi
nop
nop
cmp $34087, %rdx
movups (%rdi), %xmm6
vpextrq $1, %xmm6, %rsi
nop
nop
cmp $22082, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %rax
push %rbp
push %rbx
push %rsi

// Store
lea addresses_UC+0x14e3a, %rbx
nop
nop
nop
nop
add $61295, %r15
mov $0x5152535455565758, %rax
movq %rax, %xmm2
vmovntdq %ymm2, (%rbx)
nop
sub %rbx, %rbx

// Store
lea addresses_WT+0x1309a, %rbp
nop
and $11969, %rsi
movb $0x51, (%rbp)
nop
nop
nop
nop
nop
sub %rsi, %rsi

// Store
lea addresses_WC+0x14c3a, %r12
nop
nop
nop
nop
nop
sub $46997, %r15
mov $0x5152535455565758, %rbx
movq %rbx, (%r12)
cmp %r15, %r15

// Store
lea addresses_A+0xf63a, %r15
nop
nop
nop
add %rax, %rax
mov $0x5152535455565758, %rsi
movq %rsi, %xmm6
vmovups %ymm6, (%r15)
nop
and $1266, %r13

// Faulty Load
lea addresses_A+0xf63a, %rbp
nop
nop
nop
nop
nop
and %r15, %r15
movb (%rbp), %r13b
lea oracles, %rsi
and $0xff, %r13
shlq $12, %r13
mov (%rsi,%r13,1), %r13
pop %rsi
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3}}
{'58': 20}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
