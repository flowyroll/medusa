.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x53a2, %r12
nop
nop
nop
nop
nop
and $10382, %rdx
movb $0x61, (%r12)
nop
nop
nop
and $20014, %rax
lea addresses_A_ht+0xeddc, %rsi
lea addresses_A_ht+0xe212, %rdi
nop
nop
nop
nop
nop
add %rdx, %rdx
mov $70, %rcx
rep movsl
nop
nop
nop
xor %rdx, %rdx
lea addresses_WC_ht+0xa7e2, %rax
nop
nop
dec %r9
movups (%rax), %xmm3
vpextrq $1, %xmm3, %rcx
sub %r12, %r12
lea addresses_WT_ht+0x13cc6, %r12
nop
nop
xor $63556, %rdx
mov (%r12), %ax
nop
nop
nop
nop
nop
xor $55981, %rax
lea addresses_A_ht+0x17222, %rsi
lea addresses_UC_ht+0x6922, %rdi
nop
nop
nop
xor %rbx, %rbx
mov $54, %rcx
rep movsq
nop
xor $35306, %r9
lea addresses_normal_ht+0x1719e, %r12
nop
nop
nop
nop
add %rcx, %rcx
movl $0x61626364, (%r12)
nop
cmp $33071, %r12
lea addresses_UC_ht+0x7522, %rcx
nop
sub %rbx, %rbx
mov (%rcx), %ax
nop
cmp %rax, %rax
lea addresses_A_ht+0x18536, %rsi
lea addresses_A_ht+0x9d02, %rdi
clflush (%rsi)
sub %rax, %rax
mov $34, %rcx
rep movsb
nop
sub $62927, %rcx
lea addresses_D_ht+0x15922, %rsi
lea addresses_normal_ht+0x11922, %rdi
and %r9, %r9
mov $4, %rcx
rep movsq
nop
xor %rax, %rax
lea addresses_UC_ht+0x18a2, %rdx
nop
cmp $33798, %rsi
mov (%rdx), %r12
nop
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_UC_ht+0x178c2, %rcx
nop
nop
nop
xor $47852, %rdi
mov $0x6162636465666768, %rdx
movq %rdx, %xmm2
vmovups %ymm2, (%rcx)
nop
nop
nop
nop
nop
and %rax, %rax
lea addresses_WT_ht+0xca9a, %rsi
lea addresses_normal_ht+0x900a, %rdi
clflush (%rdi)
nop
xor $39943, %rax
mov $80, %rcx
rep movsl
nop
and $55053, %r9
lea addresses_D_ht+0x1e122, %r12
add $43521, %rdi
movw $0x6162, (%r12)
nop
nop
nop
and $64650, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WC+0x14822, %r15
nop
nop
nop
nop
xor $1397, %rsi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm1
movups %xmm1, (%r15)
nop
nop
nop
sub %rax, %rax

// REPMOV
lea addresses_normal+0x13d72, %rsi
lea addresses_WT+0xc33e, %rdi
clflush (%rsi)
nop
nop
cmp %r8, %r8
mov $31, %rcx
rep movsq
nop
nop
nop
nop
nop
add %r13, %r13

// Load
lea addresses_UC+0x1d1ae, %rcx
sub %rax, %rax
movups (%rcx), %xmm6
vpextrq $1, %xmm6, %r10
nop
nop
nop
nop
sub $61400, %rcx

// Faulty Load
lea addresses_US+0x17122, %r8
clflush (%r8)
nop
nop
nop
nop
cmp $39621, %r10
movntdqa (%r8), %xmm3
vpextrq $1, %xmm3, %r13
lea oracles, %r10
and $0xff, %r13
shlq $12, %r13
mov (%r10,%r13,1), %r13
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 16, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 6, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'48': 459, 'ad': 3, '46': 2, '49': 111, '00': 5180, '45': 4895, '34': 11179}
00 34 45 45 45 34 34 34 00 00 45 48 00 34 34 45 00 45 34 34 34 45 00 48 34 00 00 34 34 34 45 34 00 34 34 45 34 34 34 34 00 34 00 34 34 34 34 34 34 45 34 48 45 00 00 34 00 34 48 34 45 45 45 34 34 34 34 34 00 34 34 34 45 45 34 34 45 34 45 34 00 34 45 34 00 00 34 45 34 34 34 45 34 45 34 00 34 34 34 34 34 45 34 34 34 34 45 34 45 34 45 00 34 34 34 00 45 45 34 45 45 34 48 00 34 45 34 00 00 34 48 00 34 34 34 34 00 45 00 45 34 34 00 45 00 00 34 34 45 34 34 34 34 34 34 34 34 45 45 45 34 45 34 34 34 34 00 45 34 34 34 45 34 45 34 34 00 00 34 00 34 34 45 45 00 34 34 34 34 00 34 45 34 34 00 34 34 45 34 00 00 34 45 00 34 45 45 34 00 00 45 34 00 34 34 34 34 00 00 45 34 34 00 34 34 00 00 34 00 34 45 34 00 45 34 34 34 34 00 34 45 34 34 45 34 00 34 34 34 45 34 45 45 45 45 34 00 45 34 34 45 00 34 34 34 34 00 45 34 45 00 45 45 34 45 45 34 34 34 34 45 34 34 45 34 34 34 34 34 34 34 34 45 34 34 34 34 34 34 34 45 45 34 45 34 34 34 34 45 45 34 45 34 00 00 34 00 00 34 34 48 34 48 34 34 34 34 34 34 34 45 34 45 34 34 34 45 00 34 34 34 00 34 48 34 34 00 45 34 00 45 45 34 48 34 45 00 00 34 00 34 34 45 34 48 00 00 00 34 34 45 34 34 34 48 34 34 45 34 34 45 45 45 45 34 45 34 48 34 00 34 00 34 00 34 34 34 00 00 45 48 34 34 34 34 34 45 34 45 00 00 34 45 45 34 34 34 00 00 45 34 34 34 34 00 45 34 45 34 34 34 00 48 45 45 45 34 00 34 45 34 34 45 45 34 34 00 45 34 34 34 45 00 00 45 34 00 34 45 34 00 00 34 45 34 45 00 34 45 34 34 00 34 34 00 34 34 34 34 34 00 34 34 34 45 00 00 34 34 00 48 00 34 34 00 34 00 34 45 00 34 00 45 45 45 34 45 00 34 34 00 45 34 34 45 34 34 34 00 34 00 45 34 34 00 34 00 45 45 00 34 00 34 00 34 34 00 34 34 45 34 45 34 45 45 34 45 45 45 34 34 34 00 00 45 45 00 00 34 00 34 34 00 34 00 00 34 45 34 45 00 00 34 00 34 45 34 34 45 34 45 45 45 45 34 34 34 45 34 00 45 34 45 00 45 34 34 34 34 34 00 00 34 34 34 34 34 34 45 34 34 45 45 00 34 45 34 45 45 45 45 34 34 34 00 45 45 34 34 34 48 00 34 45 00 45 45 45 34 34 34 34 34 00 00 48 34 45 00 34 34 45 34 34 45 34 34 45 00 00 34 48 34 00 34 34 45 45 45 34 00 34 34 45 00 00 34 00 00 34 00 00 34 34 34 34 34 34 34 34 00 45 00 34 00 34 34 45 45 00 45 34 00 00 00 34 00 34 00 34 34 00 34 00 45 34 45 45 34 45 34 45 34 00 34 34 48 00 34 34 45 34 34 34 34 00 00 45 34 00 34 00 34 00 00 45 34 45 34 00 34 34 34 34 00 34 00 34 34 34 45 34 34 45 00 45 34 34 45 00 00 34 34 48 34 34 34 00 34 34 48 00 45 45 34 45 34 45 45 34 00 00 34 00 45 34 00 34 45 45 34 34 34 34 45 34 34 00 34 00 34 45 45 45 34 34 34 34 00 34 45 34 34 34 34 34 34 34 34 00 45 34 45 45 00 45 00 00 34 00 45 34 00 00 00 34 00 34 45 34 45 00 00 34 34 34 45 34 00 45 00 00 34 00 45 34 00 34 48 00 34 45 45 34 34 45 00 00 34 45 34 34 00 34 34 34 00 34 00 34 34 34 00 45 34 45 34 34 45 45 34 45 00 45 34 34 34 00 34 00 00 34 45 34 34 45 34 00 34 34 34 00 48 00 00 45 34 34 34 34 34 34 45 34 45 34 00 34 34 34 34 34 00 45 34 48 34 00 00 34 34 00 34 45 34 34 34 34 00 00 45 34 00 45 00 34 00 00 45 34 45 34 34 00 45 34 45 34 34 00 45 00 00 49 34 45 34 00 34 00 00 34 00 34 45 34 34 00 34 45
*/
