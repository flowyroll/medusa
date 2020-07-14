.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x8196, %rsi
lea addresses_WC_ht+0x1b056, %rdi
nop
nop
nop
nop
and %r9, %r9
mov $100, %rcx
rep movsq
nop
sub %r10, %r10
lea addresses_WC_ht+0x1e1a4, %r12
nop
nop
nop
nop
nop
sub %r13, %r13
mov (%r12), %rdi
nop
nop
nop
nop
nop
cmp $57862, %r10
lea addresses_UC_ht+0x2b56, %rsi
lea addresses_UC_ht+0x3596, %rdi
inc %rax
mov $38, %rcx
rep movsb
nop
cmp $5607, %r13
lea addresses_WT_ht+0x6d96, %r9
nop
cmp $31644, %r10
mov (%r9), %di
nop
nop
nop
nop
nop
sub $38146, %r9
lea addresses_WC_ht+0xe1d6, %r12
and $18654, %r10
mov $0x6162636465666768, %r13
movq %r13, %xmm3
vmovups %ymm3, (%r12)
nop
nop
nop
sub %rax, %rax
lea addresses_WT_ht+0x1b126, %r9
clflush (%r9)
xor %r12, %r12
movl $0x61626364, (%r9)
nop
sub $8253, %rdi
lea addresses_UC_ht+0x13496, %r12
nop
nop
nop
nop
xor %rax, %rax
movb $0x61, (%r12)
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_WC_ht+0x18296, %rsi
lea addresses_WC_ht+0x17996, %rdi
sub $11723, %r10
mov $125, %rcx
rep movsq
inc %rsi
lea addresses_A_ht+0x6816, %rsi
lea addresses_WC_ht+0x3e14, %rdi
nop
nop
cmp %r10, %r10
mov $71, %rcx
rep movsl
and $32289, %rcx
lea addresses_D_ht+0x1e56, %rsi
nop
nop
sub $61501, %rax
mov (%rsi), %r10
and %r12, %r12
lea addresses_WT_ht+0xe596, %r13
nop
nop
nop
nop
nop
sub $7082, %r9
mov (%r13), %cx
nop
and %r12, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %rax
push %rbx
push %rsi

// Load
lea addresses_PSE+0x11996, %r13
nop
dec %rax
movb (%r13), %r12b
nop
nop
nop
sub $60566, %rbx

// Faulty Load
lea addresses_WT+0x7d96, %r12
xor %rbx, %rbx
vmovaps (%r12), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r13
lea oracles, %rsi
and $0xff, %r13
shlq $12, %r13
mov (%rsi,%r13,1), %r13
pop %rsi
pop %rbx
pop %rax
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 6, 'size': 1, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': True, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 1, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 11, 'size': 2, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 6, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 4, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 8, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 6, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 11, 'size': 2, 'same': False, 'NT': True}}
{'48': 5975, '45': 836, '00': 15018}
00 00 00 00 00 48 48 00 48 00 00 00 00 00 48 00 45 00 00 00 00 48 00 48 45 48 00 00 00 48 48 00 00 00 00 00 00 00 48 48 45 00 00 00 00 48 48 48 00 00 00 00 00 48 48 48 48 00 00 00 48 00 48 00 00 00 00 00 48 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 48 00 48 00 48 00 00 00 00 48 48 00 00 00 00 00 00 00 00 00 00 45 00 00 00 48 48 48 00 00 00 00 00 00 48 00 48 00 00 00 00 00 48 48 00 00 00 00 00 00 48 45 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 48 00 00 00 00 00 48 00 48 00 00 00 00 00 48 48 45 00 00 00 00 48 48 48 00 00 00 00 48 48 45 00 00 00 00 00 48 48 00 00 00 00 00 00 48 48 48 00 00 00 00 48 48 48 00 00 00 48 00 48 48 48 00 00 00 00 00 48 48 48 00 45 00 00 00 00 48 48 48 00 00 00 00 00 48 48 45 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 48 45 00 00 00 00 00 48 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 48 48 00 45 00 00 00 00 00 48 48 48 00 00 00 00 48 00 45 48 00 00 00 00 48 48 45 45 00 00 00 00 00 48 48 48 00 00 00 00 00 00 48 00 00 48 00 00 00 00 48 48 48 48 00 00 00 00 00 00 00 00 45 00 00 00 00 48 00 45 00 00 00 00 00 48 48 00 48 00 00 00 00 00 00 00 48 48 00 00 00 00 48 48 48 48 45 00 00 00 00 48 00 48 45 00 00 00 00 00 00 48 00 45 00 00 00 48 48 48 48 00 00 00 00 48 00 48 48 00 00 00 48 48 48 00 00 00 00 00 48 00 48 00 00 00 48 48 48 00 48 00 00 00 00 00 00 00 45 48 00 00 00 00 00 00 48 00 45 00 00 00 00 00 48 48 00 00 00 00 00 00 48 00 48 00 00 00 00 48 00 48 48 00 00 00 00 00 00 00 48 00 48 00 00 00 00 48 48 45 45 00 00 00 00 48 00 48 00 00 00 00 00 00 00 00 48 45 00 00 00 00 48 00 00 00 00 00 00 45 48 00 00 00 00 48 48 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 48 00 00 00 00 48 48 48 00 48 00 00 00 00 00 48 00 00 00 00 48 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 48 48 00 00 00 00 00 48 48 48 00 00 00 00 00 48 48 00 48 00 00 00 00 48 48 48 48 00 00 00 00 00 00 48 00 00 00 00 48 00 48 00 00 00 00 48 48 48 00 00 00 00 00 00 45 00 00 00 00 00 48 48 45 48 00 00 00 00 48 00 48 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 48 48 00 00 00 00 00 48 48 48 00 00 00 00 48 48 48 00 00 00 00 48 48 00 48 45 00 00 00 00 00 48 00 48 00 00 00 48 48 00 00 00 00 00 00 00 00 48 48 48 00 00 00 00 48 00 00 00 00 00 00 48 00 48 48 00 00 00 00 00 00 48 00 00 00 00 00 00 00 48 48 48 00 00 00 00 00 48 00 45 00 00 00 00 00 00 48 00 48 00 00 00 00 48 48 48 45 00 00 00 00 48 45 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 48 48 00 00 00 00 00 48 00 00 48 00 00 00 00 48 00 48 00 00 00 00 00 48 48 48 00 48 00 00 00 00 48 48 00 00 00 00 00 48 48 00 48 00 00 00 00 48 00 48 48 00 00 00 00 00 00 00 48 00 00 00 00 00 48 00 00 00 00 00 48 00 48 48 45 00 00 00 00 00 48 00 45 00 00 00 00 00 00 00 00 48 48 00 00 00 00 48 00 00 00 00 00 00 48 48 48 00 45 00 00 00 00 48 48 45 48 00 00 00 00 00 48 00 48 00 00 00 00 48 00 48 48 00 00 00 00 48 00 00 48 00 00 00 00 00 00 00 00 48 00 00 00 00 00 48 00 45 45 00 00 00 00 00 00 48 00 00 00 00 48 48 00 48 48 00 00 00 00 00 48 45 48 00 00 00 00
*/
