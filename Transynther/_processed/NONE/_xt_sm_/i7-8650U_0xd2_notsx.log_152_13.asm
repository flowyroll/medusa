.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xc9e8, %rsi
nop
nop
nop
nop
cmp $19505, %rdi
movl $0x61626364, (%rsi)
nop
nop
nop
nop
and $56529, %rax
lea addresses_UC_ht+0x1ca1d, %rsi
lea addresses_WC_ht+0xa11d, %rdi
nop
nop
nop
and %r9, %r9
mov $10, %rcx
rep movsq
nop
nop
nop
add $56594, %rcx
lea addresses_normal_ht+0x1671d, %rsi
lea addresses_WC_ht+0x1159d, %rdi
clflush (%rsi)
nop
nop
sub $28066, %r9
mov $74, %rcx
rep movsb
nop
cmp $22766, %rax
lea addresses_WC_ht+0xde1d, %rsi
lea addresses_WC_ht+0xf89d, %rdi
nop
nop
nop
nop
nop
sub $13940, %rdx
mov $92, %rcx
rep movsl
nop
cmp $521, %rcx
lea addresses_WT_ht+0x1a8b5, %r9
nop
and $2425, %rcx
mov (%r9), %edx
nop
lfence
lea addresses_normal_ht+0x1a13d, %rsi
lea addresses_WC_ht+0x761d, %rdi
nop
nop
nop
xor %r10, %r10
mov $85, %rcx
rep movsl
nop
nop
nop
xor $52399, %rdi
lea addresses_UC_ht+0x61d, %rdx
nop
nop
xor %r13, %r13
mov $0x6162636465666768, %r10
movq %r10, %xmm7
movups %xmm7, (%rdx)
xor %rsi, %rsi
lea addresses_WC_ht+0x591d, %r13
nop
nop
nop
nop
nop
sub %rdi, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm2
vmovups %ymm2, (%r13)
nop
nop
add $22215, %r9
lea addresses_A_ht+0x1a65d, %rsi
and %r13, %r13
mov $0x6162636465666768, %rax
movq %rax, %xmm6
and $0xffffffffffffffc0, %rsi
movaps %xmm6, (%rsi)
nop
xor %rax, %rax
lea addresses_UC_ht+0x4ebd, %rsi
lea addresses_WC_ht+0xa61d, %rdi
nop
nop
cmp $48802, %rdx
mov $63, %rcx
rep movsl
nop
and %rdx, %rdx
lea addresses_D_ht+0x15e59, %rcx
clflush (%rcx)
nop
sub %rdx, %rdx
mov (%rcx), %r9w
nop
nop
nop
nop
nop
inc %r9
lea addresses_WC_ht+0x1afb9, %rsi
lea addresses_UC_ht+0x15431, %rdi
nop
nop
nop
nop
dec %rax
mov $82, %rcx
rep movsq
nop
nop
nop
nop
nop
sub $39962, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %rax
push %rbx
push %rcx
push %rdi

// Store
lea addresses_WC+0x11a1d, %rbx
nop
nop
sub $61799, %r15
movb $0x51, (%rbx)
nop
nop
nop
nop
dec %r14

// Store
lea addresses_D+0xf27d, %rbx
nop
nop
nop
add $23775, %rcx
mov $0x5152535455565758, %r15
movq %r15, %xmm2
vmovups %ymm2, (%rbx)
nop
nop
nop
sub $50361, %rcx

// Faulty Load
lea addresses_WC+0x11a1d, %r14
nop
nop
add %rcx, %rcx
mov (%r14), %r11w
lea oracles, %r14
and $0xff, %r11
shlq $12, %r11
mov (%r14,%r11,1), %r11
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'51': 152}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
