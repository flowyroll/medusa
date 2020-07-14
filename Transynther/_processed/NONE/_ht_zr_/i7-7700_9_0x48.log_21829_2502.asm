.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x14775, %r10
nop
nop
nop
nop
nop
inc %rax
mov (%r10), %r14d
nop
nop
cmp %r12, %r12
lea addresses_D_ht+0x5cbd, %r14
nop
nop
nop
nop
nop
xor $10990, %rax
mov (%r14), %bp
nop
nop
nop
cmp %r12, %r12
lea addresses_UC_ht+0x9bbd, %rsi
lea addresses_A_ht+0x1a03d, %rdi
nop
nop
nop
add $41828, %r14
mov $65, %rcx
rep movsl
nop
nop
nop
add $12027, %r14
lea addresses_WC_ht+0x1d9bd, %rsi
lea addresses_normal_ht+0x14bbd, %rdi
add %r12, %r12
mov $70, %rcx
rep movsl
nop
nop
nop
lfence
lea addresses_D_ht+0xd9bb, %rdi
nop
nop
sub %rsi, %rsi
mov $0x6162636465666768, %r12
movq %r12, (%rdi)
xor $13415, %r10
lea addresses_WT_ht+0xd7bd, %rsi
lea addresses_UC_ht+0xe296, %rdi
nop
nop
nop
nop
nop
and %rax, %rax
mov $66, %rcx
rep movsl
nop
nop
nop
nop
xor $26850, %r12
lea addresses_WC_ht+0x2690, %rsi
lea addresses_WT_ht+0x14edd, %rdi
nop
nop
add %rax, %rax
mov $37, %rcx
rep movsw
and $17882, %r12
lea addresses_A_ht+0x6fed, %rcx
nop
nop
nop
and %rax, %rax
mov (%rcx), %ebp
nop
add $20501, %r10
lea addresses_D_ht+0x187bd, %rsi
lea addresses_WT_ht+0x1643d, %rdi
and $64338, %rax
mov $45, %rcx
rep movsw
nop
nop
nop
nop
nop
add %rbp, %rbp
lea addresses_D_ht+0x1152d, %rcx
nop
mfence
and $0xffffffffffffffc0, %rcx
vmovntdqa (%rcx), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r12
add %r10, %r10
lea addresses_normal_ht+0x47bd, %rsi
lea addresses_WT_ht+0xd411, %rdi
nop
nop
nop
add $31654, %r12
mov $39, %rcx
rep movsq
nop
nop
nop
nop
nop
xor %rax, %rax
lea addresses_WT_ht+0x1857d, %rdi
nop
nop
dec %r14
movb $0x61, (%rdi)
nop
nop
nop
add $6078, %rdi
lea addresses_normal_ht+0x7bbd, %r12
cmp $37481, %r10
mov $0x6162636465666768, %rcx
movq %rcx, (%r12)
nop
nop
nop
nop
nop
and $49643, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %rbp
push %rbx
push %rcx

// Faulty Load
lea addresses_WC+0x187bd, %rbp
nop
nop
nop
cmp %rbx, %rbx
movups (%rbp), %xmm7
vpextrq $1, %xmm7, %r10
lea oracles, %rcx
and $0xff, %r10
shlq $12, %r10
mov (%rcx,%r10,1), %r10
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 3, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 8, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': True, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 4, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 3, 'size': 32, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 5, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 10, 'size': 8, 'same': False, 'NT': False}}
{'49': 2336, '48': 1518, '46': 4474, '44': 6957, '00': 6544}
00 49 00 00 44 44 46 00 00 00 44 44 46 46 48 00 44 44 46 46 00 00 00 44 44 46 00 49 48 44 46 46 00 49 00 44 44 46 00 00 48 44 44 46 46 00 49 00 44 44 46 46 00 49 48 44 44 46 49 00 44 46 46 00 49 48 00 44 46 49 00 44 46 46 46 00 49 00 44 44 44 46 00 49 00 44 44 46 00 48 00 44 44 49 48 00 44 46 00 48 00 44 44 44 46 46 00 49 00 44 44 46 46 49 48 00 44 44 46 49 48 00 44 44 00 00 00 49 00 44 44 46 00 48 00 44 44 46 00 00 00 44 44 46 00 49 00 44 44 44 46 49 00 44 44 00 00 49 48 00 44 44 46 46 49 48 44 44 46 49 48 00 44 44 46 46 49 48 00 44 44 46 00 49 00 44 44 46 00 00 48 00 44 44 44 00 00 49 00 44 44 44 00 00 00 48 44 44 44 46 00 00 49 00 00 44 46 46 46 00 00 44 44 46 00 48 44 44 46 00 49 00 44 44 46 00 48 00 44 44 00 49 00 44 46 00 00 49 00 44 46 00 48 00 44 44 46 46 00 49 00 44 44 46 46 00 00 00 00 44 44 46 00 48 00 44 44 46 00 49 48 44 44 46 00 00 49 00 00 44 44 46 00 49 00 44 44 46 00 00 00 44 44 44 46 00 49 48 00 44 44 46 00 00 00 44 44 46 00 49 48 44 44 44 46 49 49 48 00 44 44 46 49 48 44 44 46 00 49 00 44 44 46 46 00 49 48 44 44 46 00 46 49 00 44 44 44 46 00 48 00 44 44 46 00 49 00 44 44 46 00 00 00 44 44 46 00 00 49 00 44 44 46 00 00 44 46 46 00 00 00 00 44 44 46 00 00 44 44 44 46 00 00 00 44 44 46 00 49 00 44 46 00 49 48 44 44 44 00 49 00 00 44 44 46 00 49 00 44 44 46 49 48 44 44 44 46 00 49 00 44 44 46 46 00 49 00 44 44 46 46 00 49 00 44 44 44 46 00 49 00 44 44 46 00 00 00 44 44 46 00 49 48 44 44 46 00 48 00 44 44 00 46 00 48 00 44 44 46 49 49 48 44 44 00 49 00 44 44 46 46 00 49 00 44 46 49 00 44 44 46 49 00 44 44 46 00 48 00 44 44 46 00 49 48 44 44 46 00 49 00 44 44 46 00 48 44 44 44 46 00 00 48 00 44 44 46 00 48 44 44 46 46 00 49 00 44 44 00 46 46 48 00 44 44 46 49 00 00 44 46 00 48 00 44 44 46 00 49 48 44 44 46 00 48 00 44 44 46 46 46 48 44 44 46 46 49 48 44 44 46 00 00 00 44 44 44 46 00 49 00 44 44 00 46 49 48 00 44 44 46 46 00 49 00 44 44 46 00 00 49 00 44 44 44 46 00 00 00 44 46 46 00 49 48 00 44 44 46 49 48 44 44 46 46 00 49 00 00 44 44 46 00 00 48 00 44 44 46 46 46 49 00 44 44 44 46 00 00 49 44 44 44 46 00 48 00 44 44 46 46 00 49 00 44 44 46 46 00 49 48 44 44 46 46 00 49 00 44 44 46 46 00 00 00 44 46 00 49 48 00 44 44 46 00 49 00 44 44 46 49 00 00 44 46 00 49 00 44 46 00 00 00 44 44 46 46 46 00 48 00 44 44 46 46 00 44 44 44 46 46 00 49 00 44 44 46 00 00 00 44 46 46 00 49 48 00 44 44 46 00 48 00 44 44 46 46 00 00 48 44 44 44 46 46 00 49 00 44 00 46 00 00 44 44 46 46 00 48 00 44 44 46 00 49 00 00 44 44 46 46 49 48 44 44 44 46 00 49 00 44 44 46 00 00 00 44 44 49 00 44 44 46 46 00 48 44 44 49 00 44 44 46 46 49 00 44 44 46 46 49 48 44 44 44 46 49 00 44 46 49 48 44 44 46 49 00 44 44 46 00 48 44 44 46 00 00 49 00 00 44 44 46 00 48 00 00 44 46 00 49 00 44 44 46 00 49 48 44 44 44 46 49 48 44 44 46 00 00 48 00 44 44 46 46 49 48 44 44 46 00 49 00 44 00 46 46 49 48 00 44 44 46 00 49 48 00 44 44 46 49 00 44 44 46 46 00 49 00 44 44 00 46 00 49 00 44 44 46 49 48 44 44 46 00 48 44 44 46 00 00 00 44 44 46 00 49 48 44 44 46 46 00 49 48 00 44 44 00 46
*/
