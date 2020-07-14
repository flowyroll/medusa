.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x10d23, %rcx
nop
nop
nop
nop
cmp $35841, %r15
movl $0x61626364, (%rcx)
nop
xor %r14, %r14
lea addresses_normal_ht+0x7623, %r14
nop
xor $61050, %rbx
mov $0x6162636465666768, %rax
movq %rax, (%r14)
nop
nop
nop
cmp $60768, %rbx
lea addresses_A_ht+0x1144b, %rax
clflush (%rax)
nop
nop
and $63011, %r8
vmovups (%rax), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rcx
nop
inc %rcx
lea addresses_WC_ht+0x15923, %rsi
lea addresses_WT_ht+0x15ca7, %rdi
nop
nop
xor %rax, %rax
mov $31, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp $63632, %r14
lea addresses_A_ht+0x19a83, %rsi
lea addresses_A_ht+0x8393, %rdi
nop
nop
nop
nop
and $34635, %rbx
mov $69, %rcx
rep movsl
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_WC_ht+0x2d23, %rsi
lea addresses_A_ht+0x1bfdb, %rdi
clflush (%rsi)
nop
nop
nop
sub $28420, %r15
mov $49, %rcx
rep movsw
add $880, %rdi
lea addresses_UC_ht+0x5523, %rsi
lea addresses_normal_ht+0x1523, %rdi
xor $21726, %rax
mov $11, %rcx
rep movsq
nop
nop
nop
cmp %rdi, %rdi
lea addresses_UC_ht+0x1e323, %rbx
nop
nop
nop
nop
nop
cmp %r14, %r14
movb $0x61, (%rbx)
nop
nop
nop
sub $18297, %r15
lea addresses_normal_ht+0x14b23, %rbx
nop
and $18366, %rsi
mov $0x6162636465666768, %rax
movq %rax, %xmm3
and $0xffffffffffffffc0, %rbx
movntdq %xmm3, (%rbx)
nop
nop
xor %r15, %r15
lea addresses_UC_ht+0x1691b, %rsi
lea addresses_A_ht+0x12a23, %rdi
add $32975, %r15
mov $27, %rcx
rep movsw
nop
nop
nop
and %r8, %r8
lea addresses_D_ht+0x13123, %rsi
add %rdi, %rdi
movb $0x61, (%rsi)
nop
nop
sub $2515, %rdi
lea addresses_A_ht+0x90ec, %rbx
nop
nop
nop
nop
sub %rax, %rax
mov $0x6162636465666768, %r14
movq %r14, %xmm7
vmovups %ymm7, (%rbx)
nop
nop
nop
nop
nop
xor $45074, %r14
lea addresses_normal_ht+0x1aaa3, %rsi
lea addresses_normal_ht+0xd723, %rdi
clflush (%rdi)
xor $14595, %rbx
mov $66, %rcx
rep movsw
nop
nop
nop
xor %rdi, %rdi
lea addresses_A_ht+0xb2cb, %r14
clflush (%r14)
nop
xor $52008, %rcx
movb $0x61, (%r14)
nop
nop
dec %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %r8
push %rax
push %rdi
push %rsi

// Store
lea addresses_normal+0x8f89, %r8
nop
nop
nop
xor $47455, %rdi
mov $0x5152535455565758, %rsi
movq %rsi, %xmm2
vmovups %ymm2, (%r8)
nop
nop
nop
nop
mfence

// Faulty Load
lea addresses_D+0x5d23, %r12
nop
nop
nop
nop
xor %r11, %r11
mov (%r12), %rax
lea oracles, %r12
and $0xff, %rax
shlq $12, %rax
mov (%r12,%rax,1), %rax
pop %rsi
pop %rdi
pop %rax
pop %r8
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
{'36': 181}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
