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
lea addresses_A_ht+0xd2fb, %rcx
nop
nop
nop
nop
nop
dec %r10
mov (%rcx), %r9d
nop
nop
nop
nop
nop
xor $31571, %rax
lea addresses_normal_ht+0x976f, %r9
nop
nop
nop
nop
nop
add %r12, %r12
movb $0x61, (%r9)
nop
add %rdi, %rdi
lea addresses_normal_ht+0xae6f, %r9
add %r13, %r13
mov (%r9), %rax
nop
add %rax, %rax
lea addresses_UC_ht+0x11eaf, %r9
nop
nop
cmp %rax, %rax
movw $0x6162, (%r9)
nop
nop
nop
nop
sub $30769, %r9
lea addresses_WT_ht+0x1882f, %rsi
lea addresses_UC_ht+0xde2f, %rdi
and $56463, %rax
mov $63, %rcx
rep movsb
nop
nop
nop
nop
inc %r13
lea addresses_UC_ht+0x1b60f, %r12
clflush (%r12)
nop
nop
and %rcx, %rcx
vmovups (%r12), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rdi
nop
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_UC_ht+0x502f, %rsi
lea addresses_UC_ht+0x1d39, %rdi
nop
nop
nop
nop
nop
xor $64078, %r9
mov $35, %rcx
rep movsw
nop
nop
xor $22560, %rdi
lea addresses_UC_ht+0xdc2f, %rsi
lea addresses_WT_ht+0xd8f7, %rdi
nop
nop
dec %r13
mov $50, %rcx
rep movsw
cmp $24575, %r9
lea addresses_UC_ht+0x11e67, %r9
cmp $45860, %rcx
movb $0x61, (%r9)
nop
nop
nop
nop
sub $41912, %r9
lea addresses_normal_ht+0x146af, %r9
nop
and %r12, %r12
mov $0x6162636465666768, %r13
movq %r13, (%r9)
nop
nop
inc %r13
lea addresses_WC_ht+0xb32f, %r12
nop
nop
nop
nop
nop
sub $23073, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, (%r12)
nop
sub %r12, %r12
lea addresses_UC_ht+0x4af, %rsi
lea addresses_D_ht+0xc3ef, %rdi
clflush (%rsi)
sub $37035, %r9
mov $107, %rcx
rep movsb
nop
xor %rax, %rax
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
push %r10
push %r12
push %r13
push %r14
push %r15
push %r9
push %rax

// Store
lea addresses_UC+0x1cd99, %r14
nop
nop
nop
nop
inc %r15
mov $0x5152535455565758, %r10
movq %r10, %xmm1
vmovups %ymm1, (%r14)
cmp %r10, %r10

// Faulty Load
lea addresses_WC+0x1e02f, %r9
nop
nop
nop
nop
nop
cmp $10654, %rax
vmovups (%r9), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %r15
lea oracles, %r9
and $0xff, %r15
shlq $12, %r15
mov (%r9,%r15,1), %r15
pop %rax
pop %r9
pop %r15
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 2, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 6, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': True, 'congruent': 6, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 6, 'size': 2, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 3, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': True, 'congruent': 3, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 7, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 7, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'49': 2157, '47': 1774, '16': 3, '00': 17895}
00 00 00 49 00 00 49 00 00 00 00 47 00 00 00 00 00 47 00 00 00 47 00 47 00 00 00 00 00 00 49 00 47 00 00 47 00 00 47 00 00 47 00 47 00 00 00 00 00 00 00 00 00 00 49 00 00 49 00 00 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 49 00 00 49 00 00 49 00 00 49 00 00 00 00 00 00 00 00 47 00 00 47 00 00 00 49 00 00 49 00 00 47 00 00 00 47 00 47 47 00 00 49 00 00 49 00 00 49 00 00 00 00 00 00 47 00 00 00 49 00 00 49 00 00 49 00 00 49 00 00 00 00 00 00 00 00 00 00 47 00 00 00 49 00 00 49 00 00 00 00 00 00 00 00 47 00 00 47 47 00 00 00 00 00 00 49 00 00 49 00 47 00 00 00 47 00 47 00 49 00 00 49 00 00 49 00 00 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 49 00 00 00 00 47 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 47 00 00 00 47 00 00 47 00 00 00 00 49 00 00 49 00 00 00 00 00 00 00 47 00 00 47 00 00 00 00 49 00 00 49 00 00 49 00 00 00 00 47 00 00 00 47 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 47 00 47 00 47 00 00 00 00 47 00 00 00 00 00 49 00 00 47 00 00 00 47 00 00 00 00 00 49 00 00 49 00 00 47 00 00 00 47 00 00 00 47 00 00 00 47 00 47 00 47 00 47 00 00 49 00 00 49 00 00 49 00 00 49 00 00 49 00 00 00 00 49 00 00 49 00 00 49 00 00 00 00 47 00 47 00 47 47 00 00 00 49 00 00 49 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 47 00 00 00 00 00 00 47 00 47 00 47 47 00 00 00 00 00 00 00 00 49 00 00 00 00 00 49 00 00 49 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 49 00 00 49 00 00 00 00 00 47 00 47 00 47 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 47 00 47 00 00 00 00 49 00 00 49 00 00 49 00 00 00 00 00 00 47 47 00 00 00 00 00 49 00 00 49 00 00 00 00 00 00 00 47 00 47 00 00 47 00 00 00 00 00 00 00 00 00 47 00 00 47 00 00 00 00 00 00 00 00 49 00 00 49 00 00 00 00 00 00 47 00 00 00 00 00 00 47 00 00 00 00 00 49 00 00 49 00 00 49 00 00 00 00 47 00 47 00 00 00 47 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 49 00 00 49 00 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 49 00 00 49 00 00 00 00 00 00 47 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 49 00 00 00 00 47 00 00 00 00 00 47 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 49 00 00 49 00 00 00 00 00 49 00 00 49 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 49 00 00 49 00 00 00 00 00 00 00 00 47 00 47 00 47 47 00 00 47 00 00 00 00 00 49 00 00 00 00 47 00 00 00 47 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 49 00 00 49 00 00 49 00 00 49 00 00 00 00 00 00 00 00 00 47 00 00 00 47 00 47 00 00 00 00 00 00 00 00 00 49 00 00 49 00 00 00 00 00 00 00 47 00 00 47 00 00 00 00 00 49 00 00 00 00 47 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 49 00 00 49 00 00 00 00 00 00 00 00 00 00 00 49 00 00 49 00 00 49 00 00 00 00 00 00 00 47 00 00 00 00
*/
