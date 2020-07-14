.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0xba2a, %rsi
lea addresses_UC_ht+0x5aba, %rdi
nop
nop
nop
nop
sub %r8, %r8
mov $41, %rcx
rep movsb
nop
and $33471, %rdx
lea addresses_WT_ht+0x1253a, %r14
clflush (%r14)
and %r15, %r15
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
movups %xmm3, (%r14)
nop
nop
sub $15232, %r14
lea addresses_D_ht+0x8b7a, %r15
nop
nop
nop
nop
xor %r14, %r14
mov $0x6162636465666768, %rsi
movq %rsi, %xmm0
vmovups %ymm0, (%r15)
nop
nop
nop
nop
nop
add $23937, %rdx
lea addresses_normal_ht+0x19aba, %rsi
lea addresses_UC_ht+0xe13a, %rdi
clflush (%rsi)
nop
nop
xor %r14, %r14
mov $103, %rcx
rep movsl
nop
nop
nop
and %r14, %r14
lea addresses_WT_ht+0xdf43, %r14
nop
nop
nop
nop
sub %rdx, %rdx
vmovups (%r14), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r15
nop
nop
nop
nop
nop
and %r14, %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r8
push %rax
push %rbp
push %rcx
push %rsi

// Store
lea addresses_WC+0x28ba, %r10
nop
nop
cmp $31116, %r11
movl $0x51525354, (%r10)
nop
nop
nop
add %rbp, %rbp

// Store
lea addresses_A+0x130a, %rax
nop
cmp $27011, %r8
mov $0x5152535455565758, %rbp
movq %rbp, %xmm5
movups %xmm5, (%rax)
sub %rcx, %rcx

// Faulty Load
lea addresses_US+0x4aba, %rcx
nop
sub $25447, %rsi
mov (%rcx), %eax
lea oracles, %rbp
and $0xff, %rax
shlq $12, %rax
mov (%rbp,%rax,1), %rax
pop %rsi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 3}}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 4}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'00': 1}
00
*/
