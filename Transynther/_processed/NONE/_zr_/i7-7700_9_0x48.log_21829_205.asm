.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1921b, %rbx
nop
nop
nop
inc %rdi
movl $0x61626364, (%rbx)
nop
nop
nop
sub $18396, %r10
lea addresses_UC_ht+0x4f1b, %r8
sub $49530, %rbx
movl $0x61626364, (%r8)
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_WC_ht+0x1de5, %rax
clflush (%rax)
nop
nop
nop
nop
and $57946, %rbp
mov $0x6162636465666768, %rcx
movq %rcx, %xmm4
movups %xmm4, (%rax)
nop
nop
nop
sub $16070, %r8
lea addresses_A_ht+0x1c31b, %r10
add $48404, %rax
movb $0x61, (%r10)
nop
dec %rdi
lea addresses_normal_ht+0xca9b, %r10
nop
inc %rdi
mov $0x6162636465666768, %r8
movq %r8, %xmm1
vmovups %ymm1, (%r10)
nop
nop
nop
nop
inc %r10
lea addresses_WT_ht+0x1181b, %rsi
lea addresses_WT_ht+0x1871b, %rdi
nop
nop
nop
nop
nop
add %rax, %rax
mov $14, %rcx
rep movsb
nop
nop
nop
nop
nop
dec %rbp
lea addresses_UC_ht+0x6f6b, %rsi
lea addresses_WC_ht+0x10b9b, %rdi
nop
nop
cmp %rbx, %rbx
mov $34, %rcx
rep movsq
cmp %rdi, %rdi
lea addresses_WT_ht+0x12007, %rsi
lea addresses_WT_ht+0x1931b, %rdi
nop
nop
nop
nop
nop
xor $18866, %rax
mov $90, %rcx
rep movsb
inc %r8
lea addresses_A_ht+0x182db, %rbp
add $23200, %rax
mov (%rbp), %rbx
nop
nop
and %r10, %r10
lea addresses_A_ht+0x12a9b, %rsi
lea addresses_A_ht+0x1619b, %rdi
inc %rax
mov $74, %rcx
rep movsw
nop
nop
nop
add $24356, %rbp
lea addresses_normal_ht+0x1da5b, %rcx
nop
nop
nop
nop
sub $43632, %r10
movw $0x6162, (%rcx)
nop
nop
nop
nop
cmp %rbp, %rbp
lea addresses_WT_ht+0x15b9b, %rbx
nop
nop
nop
sub %rdi, %rdi
mov $0x6162636465666768, %rax
movq %rax, %xmm1
vmovups %ymm1, (%rbx)
nop
nop
nop
dec %r10
lea addresses_WC_ht+0x771b, %rdi
clflush (%rdi)
nop
nop
sub $33009, %rbx
movb $0x61, (%rdi)
nop
nop
nop
and %rdi, %rdi
lea addresses_D_ht+0xa71b, %rsi
lea addresses_D_ht+0x439b, %rdi
clflush (%rdi)
nop
inc %rbp
mov $57, %rcx
rep movsw
nop
nop
nop
nop
nop
and $31426, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %rax
push %rbx
push %rdi
push %rsi

// Store
lea addresses_normal+0x951b, %rax
nop
nop
nop
add $11848, %rdi
mov $0x5152535455565758, %r12
movq %r12, %xmm6
movntdq %xmm6, (%rax)
nop
nop
nop
add $53196, %r14

// Faulty Load
lea addresses_A+0x13f1b, %rbx
clflush (%rbx)
nop
nop
add $5745, %r15
vmovups (%rbx), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rax
lea oracles, %r12
and $0xff, %rax
shlq $12, %rax
mov (%r12,%rax,1), %rax
pop %rsi
pop %rdi
pop %rbx
pop %rax
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 9, 'size': 16, 'same': False, 'NT': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 8, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 11, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 7, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 6, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 4, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 6, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 5, 'size': 32, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': True, 'congruent': 11, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
