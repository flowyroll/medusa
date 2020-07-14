.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1da37, %r8
nop
nop
nop
add %rdi, %rdi
mov $0x6162636465666768, %r9
movq %r9, %xmm1
movups %xmm1, (%r8)
nop
nop
cmp %r15, %r15
lea addresses_UC_ht+0x11f37, %rbp
and %r10, %r10
movb (%rbp), %r8b
nop
nop
nop
nop
nop
add %r9, %r9
lea addresses_WC_ht+0x4117, %rsi
nop
and %r9, %r9
mov (%rsi), %r10d
add $34211, %r9
lea addresses_D_ht+0xd937, %rsi
nop
nop
nop
nop
nop
lfence
mov (%rsi), %r8d
nop
sub $42301, %r10
lea addresses_D_ht+0x545a, %r8
nop
nop
sub $62180, %r15
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
and $0xffffffffffffffc0, %r8
movntdq %xmm1, (%r8)
nop
nop
nop
nop
nop
dec %r15
lea addresses_normal_ht+0xb737, %r15
nop
nop
nop
nop
nop
sub $42477, %rsi
movb $0x61, (%r15)
nop
nop
nop
nop
and $21578, %r9
lea addresses_WT_ht+0xb7, %rsi
lea addresses_WT_ht+0xcb37, %rdi
nop
nop
nop
nop
sub %r8, %r8
mov $46, %rcx
rep movsw
nop
nop
nop
sub %r8, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r15
push %rdi
push %rdx
push %rsi

// Store
lea addresses_RW+0x11e51, %r10
nop
nop
nop
nop
nop
inc %rdx
movw $0x5152, (%r10)
nop
nop
nop
nop
nop
add %rdx, %rdx

// Store
lea addresses_RW+0x8d37, %rsi
nop
xor $23848, %r13
mov $0x5152535455565758, %rdx
movq %rdx, %xmm1
movups %xmm1, (%rsi)
nop
cmp $1590, %r10

// Store
lea addresses_normal+0xc277, %r13
nop
nop
cmp %r12, %r12
mov $0x5152535455565758, %r15
movq %r15, %xmm4
vmovups %ymm4, (%r13)
nop
nop
nop
dec %rdx

// Store
lea addresses_UC+0x2d37, %r10
nop
nop
nop
nop
inc %rsi
mov $0x5152535455565758, %r13
movq %r13, %xmm1
movups %xmm1, (%r10)
nop
nop
nop
nop
xor %r13, %r13

// Load
lea addresses_A+0x5fbd, %r13
nop
nop
nop
nop
nop
and $5526, %rdi
mov (%r13), %rsi
and $15005, %rdi

// Load
lea addresses_D+0x5704, %r12
add $51960, %rdi
mov (%r12), %edx
nop
nop
nop
add %r12, %r12

// Faulty Load
lea addresses_UC+0x2d37, %rsi
nop
nop
nop
nop
nop
cmp $13233, %r15
mov (%rsi), %edx
lea oracles, %rsi
and $0xff, %rdx
shlq $12, %rdx
mov (%rsi,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %r15
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_UC', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_UC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': True, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': True, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': True, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': True, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 7}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 6}}
{'58': 18}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
