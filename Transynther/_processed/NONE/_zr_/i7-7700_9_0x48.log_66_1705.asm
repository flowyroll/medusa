.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xddbf, %r10
clflush (%r10)
nop
nop
nop
nop
xor $28845, %rsi
movl $0x61626364, (%r10)
nop
nop
nop
nop
nop
and $55818, %r14
lea addresses_D_ht+0x10803, %rax
nop
nop
cmp $62664, %r8
vmovups (%rax), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rcx
sub %r13, %r13
lea addresses_UC_ht+0x1a0f7, %rcx
and %r8, %r8
movb (%rcx), %r13b
sub $48064, %rsi
lea addresses_WT_ht+0x4cab, %rsi
add $15011, %r13
mov $0x6162636465666768, %r8
movq %r8, %xmm6
movups %xmm6, (%rsi)
nop
nop
nop
nop
sub %rax, %rax
lea addresses_A_ht+0xbcab, %rsi
lea addresses_UC_ht+0x1a51b, %rdi
nop
nop
nop
nop
nop
xor %r10, %r10
mov $94, %rcx
rep movsb
nop
nop
nop
nop
nop
dec %rcx
lea addresses_WC_ht+0x18cab, %r13
nop
nop
and $6724, %rax
movups (%r13), %xmm1
vpextrq $0, %xmm1, %rsi
nop
nop
and $2993, %rdi
lea addresses_WC_ht+0xcab, %r8
nop
nop
nop
nop
nop
cmp $38336, %rax
movb $0x61, (%r8)
nop
nop
nop
nop
inc %r10
lea addresses_UC_ht+0x1e5ab, %rcx
nop
dec %r8
mov (%rcx), %r13d
nop
nop
nop
inc %r14
lea addresses_WC_ht+0x1b82b, %rsi
lea addresses_WC_ht+0x143db, %rdi
nop
nop
nop
and $32744, %r14
mov $98, %rcx
rep movsw
nop
nop
nop
and $7640, %rdi
lea addresses_D_ht+0x1db2b, %r10
nop
add $19040, %rdi
movups (%r10), %xmm6
vpextrq $0, %xmm6, %rsi
nop
nop
nop
nop
nop
and $8097, %rax
lea addresses_UC_ht+0x104ab, %rax
nop
xor $37679, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, %xmm7
vmovups %ymm7, (%rax)
nop
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_D_ht+0x1a107, %rcx
nop
nop
nop
nop
nop
add $58142, %rsi
mov (%rcx), %r14w
nop
nop
nop
sub %r13, %r13
lea addresses_WT_ht+0x1eaab, %rcx
sub $16466, %rax
mov (%rcx), %r8d
nop
nop
nop
nop
add $52523, %rax
lea addresses_A_ht+0x81e3, %rcx
nop
nop
nop
nop
and %r10, %r10
mov $0x6162636465666768, %r8
movq %r8, %xmm3
movups %xmm3, (%rcx)
nop
nop
nop
nop
cmp %r14, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r8
push %r9
push %rbp
push %rbx

// Load
lea addresses_UC+0x1aeab, %rbx
nop
nop
nop
mfence
movups (%rbx), %xmm7
vpextrq $1, %xmm7, %r9
xor $35779, %r13

// Faulty Load
lea addresses_UC+0x14ab, %r9
nop
nop
nop
nop
nop
xor %r8, %r8
mov (%r9), %r15w
lea oracles, %r9
and $0xff, %r15
shlq $12, %r15
mov (%r9,%r15,1), %r15
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 9, 'size': 16, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 1, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 2, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 2, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 11, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 11, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 10, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': True, 'congruent': 8, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 5, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 11, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 1, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 8, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 1, 'size': 16, 'same': False, 'NT': False}}
{'00': 66}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
