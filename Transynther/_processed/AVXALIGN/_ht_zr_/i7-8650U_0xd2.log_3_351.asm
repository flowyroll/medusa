.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xae41, %rax
nop
dec %rcx
mov $0x6162636465666768, %r12
movq %r12, %xmm1
movups %xmm1, (%rax)
add %rax, %rax
lea addresses_UC_ht+0x195c1, %rdx
nop
nop
xor %r12, %r12
mov $0x6162636465666768, %rbp
movq %rbp, (%rdx)
nop
nop
inc %rdx
lea addresses_normal_ht+0x3641, %rsi
lea addresses_UC_ht+0x15641, %rdi
nop
nop
nop
nop
add $58894, %r10
mov $95, %rcx
rep movsq
nop
nop
nop
xor %rbp, %rbp
lea addresses_WT_ht+0xc641, %rcx
nop
nop
nop
nop
xor $64963, %r10
vmovups (%rcx), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rsi
nop
nop
nop
add %rdx, %rdx
lea addresses_WT_ht+0xb241, %rsi
nop
nop
nop
nop
nop
and %r10, %r10
mov $0x6162636465666768, %rax
movq %rax, %xmm3
vmovups %ymm3, (%rsi)
nop
nop
nop
nop
sub $28222, %rax
lea addresses_WT_ht+0xfc41, %r12
nop
nop
nop
nop
nop
cmp $5509, %rdx
mov $0x6162636465666768, %r10
movq %r10, (%r12)
nop
nop
and %rdi, %rdi
lea addresses_WT_ht+0x7c1, %r12
nop
nop
nop
nop
xor $53580, %r10
mov $0x6162636465666768, %rdx
movq %rdx, (%r12)
nop
nop
nop
nop
add %rdx, %rdx
lea addresses_normal_ht+0x3461, %rsi
lea addresses_WT_ht+0xfa1, %rdi
nop
nop
nop
nop
inc %r12
mov $36, %rcx
rep movsq
nop
nop
nop
sub %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r8
push %r9
push %rbp
push %rcx
push %rsi

// Store
lea addresses_UC+0x1f2f5, %rsi
nop
and $63252, %r11
mov $0x5152535455565758, %r14
movq %r14, %xmm0
movups %xmm0, (%rsi)
nop
nop
add $6911, %r8

// Faulty Load
lea addresses_UC+0x10641, %rsi
nop
nop
and $12894, %rcx
vmovaps (%rsi), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rbp
lea oracles, %r11
and $0xff, %rbp
shlq $12, %rbp
mov (%r11,%rbp,1), %rbp
pop %rsi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': True}}
{'00': 1, '49': 1, '44': 1}
00 49 44
*/
