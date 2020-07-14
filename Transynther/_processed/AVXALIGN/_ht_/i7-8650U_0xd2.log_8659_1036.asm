.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x190f1, %r9
nop
nop
nop
and %rcx, %rcx
mov $0x6162636465666768, %rdx
movq %rdx, %xmm3
movups %xmm3, (%r9)
nop
sub %r15, %r15
lea addresses_WT_ht+0x82f7, %rsi
lea addresses_WT_ht+0xd71, %rdi
nop
nop
nop
nop
nop
add %r15, %r15
mov $75, %rcx
rep movsl
nop
nop
add %r9, %r9
lea addresses_A_ht+0x26f7, %r15
nop
nop
nop
nop
nop
add $38455, %r12
movb $0x61, (%r15)
nop
nop
nop
xor %rdx, %rdx
lea addresses_A_ht+0x11651, %rdx
nop
nop
nop
nop
nop
dec %rsi
mov $0x6162636465666768, %r12
movq %r12, %xmm4
movups %xmm4, (%rdx)
dec %rdx
lea addresses_D_ht+0x3af7, %r15
clflush (%r15)
xor $25259, %r9
movl $0x61626364, (%r15)
nop
nop
xor $29556, %r9
lea addresses_WT_ht+0x14e92, %rcx
nop
xor $31471, %rdx
vmovups (%rcx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r15
xor %rdi, %rdi
lea addresses_WT_ht+0x3017, %rsi
lea addresses_A_ht+0xbe5, %rdi
nop
nop
cmp $36931, %r14
mov $46, %rcx
rep movsq
nop
nop
dec %rcx
lea addresses_D_ht+0x3203, %rsi
nop
nop
nop
and %r12, %r12
vmovups (%rsi), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %r9
nop
nop
nop
nop
mfence
lea addresses_D_ht+0x57f7, %r12
nop
nop
nop
sub %r15, %r15
vmovups (%r12), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %r14
nop
nop
nop
cmp %r15, %r15
lea addresses_normal_ht+0x1bf1, %rsi
nop
nop
nop
nop
nop
dec %rdx
movb $0x61, (%rsi)
nop
nop
nop
nop
nop
dec %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r9
push %rax
push %rbx
push %rcx
push %rdx

// Load
lea addresses_WT+0x10687, %rbx
nop
nop
xor $51307, %rdx
mov (%rbx), %r15
nop
nop
nop
nop
dec %rax

// Store
lea addresses_US+0xa247, %rbx
nop
nop
nop
nop
nop
sub %rcx, %rcx
movw $0x5152, (%rbx)

// Exception!!!
nop
nop
mov (0), %rbx
nop
nop
sub %rdx, %rdx

// Store
mov $0x1b7, %rdx
nop
nop
xor $57141, %r13
mov $0x5152535455565758, %r15
movq %r15, %xmm3
movaps %xmm3, (%rdx)
nop
nop
nop
cmp %rdx, %rdx

// Store
lea addresses_WT+0x1b7f7, %rdx
nop
nop
nop
nop
nop
cmp $58345, %rax
movb $0x51, (%rdx)
nop
nop
nop
nop
cmp $30313, %rcx

// Load
lea addresses_WT+0x12f7, %rcx
add $53268, %r9
mov (%rcx), %r15w
nop
nop
nop
nop
nop
xor %rcx, %rcx

// Faulty Load
mov $0x1199130000000ef7, %r9
nop
nop
nop
nop
and %r13, %r13
vmovaps (%r9), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rbx
lea oracles, %rcx
and $0xff, %rbx
shlq $12, %rbx
mov (%rcx,%rbx,1), %rbx
pop %rdx
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'49': 6646, '46': 2013}
49 49 49 46 49 49 46 49 46 49 46 49 46 49 46 49 46 49 46 49 46 49 49 49 49 49 49 46 49 49 46 49 49 49 49 49 49 46 49 49 49 49 49 46 49 49 49 46 49 46 49 49 49 49 49 49 46 49 46 46 49 49 46 49 49 46 49 49 49 49 49 49 49 46 49 49 49 49 46 49 49 49 49 46 46 49 49 49 49 49 49 49 49 49 49 49 49 46 46 49 46 49 49 49 46 49 46 46 46 49 49 46 49 49 49 49 46 49 49 49 46 46 49 49 46 49 49 49 46 49 49 49 46 49 46 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 46 49 46 49 49 49 49 46 49 49 49 46 49 49 49 46 49 49 46 49 49 49 46 49 46 49 49 49 49 49 49 46 49 46 49 49 49 46 49 49 49 49 49 49 49 46 49 49 49 49 49 46 49 46 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 46 46 46 49 46 46 46 46 49 49 46 49 49 49 49 46 49 49 49 49 46 49 49 46 49 46 49 49 49 49 49 49 46 46 49 49 46 46 49 49 49 46 49 49 46 46 49 49 49 49 46 49 46 49 46 49 49 46 49 46 49 49 46 46 49 49 46 49 49 46 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 46 49 49 49 46 46 49 49 49 46 46 49 49 49 46 49 49 49 49 46 49 49 49 49 49 49 49 49 46 49 46 49 49 49 46 49 49 49 49 46 49 46 49 49 46 49 49 49 49 49 49 49 46 49 49 46 49 49 46 49 49 49 49 49 46 49 49 46 46 49 49 46 49 49 46 49 46 49 49 49 46 49 49 49 46 49 46 49 49 46 49 49 49 49 49 49 49 49 46 46 46 46 49 49 49 49 46 49 46 49 49 49 46 49 49 49 46 49 49 49 46 49 49 46 46 49 49 49 49 46 49 46 49 49 46 49 49 49 49 49 49 49 49 46 49 49 49 46 46 49 46 49 49 46 49 49 49 49 46 49 49 46 49 49 46 49 46 49 49 49 49 49 49 46 49 49 46 49 49 49 46 49 46 49 49 49 49 49 49 49 49 46 49 49 49 49 46 49 49 46 49 49 49 49 46 46 49 49 49 46 49 49 49 49 49 49 46 49 46 49 49 49 49 46 46 49 46 46 49 49 49 49 49 46 46 49 49 49 49 49 46 49 49 49 49 46 49 46 49 49 49 49 46 49 46 49 49 49 46 46 49 49 49 49 46 49 49 49 49 49 49 49 49 49 46 49 49 49 46 49 46 49 49 49 49 49 49 49 46 49 46 49 49 49 49 46 49 49 49 49 49 49 46 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 49 49 49 46 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 46 49 49 46 49 46 49 49 46 49 49 49 46 49 49 49 46 49 49 49 49 49 46 49 49 49 49 46 49 49 49 49 46 49 49 49 49 49 46 46 46 49 46 49 49 49 46 49 46 49 46 49 46 49 49 49 46 49 49 46 49 46 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 46 46 49 49 46 49 49 49 49 46 49 49 49 46 49 49 46 46 46 49 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 46 49 46 49 49 46 49 49 49 49 49 49 49 49 46 49 49 49 46 46 49 49 46 49 49 46 49 49 49 49 49 49 49 49 49 49 46 49 46 46 46 49 49 46 46 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 46 49 49 49 49 46 49 49 49 49 46 49 46 49 49 49 49 49 49 46 46 49 49 49 49 49 49 46 49 49 49 49 49 49 49 46 49 46 49 49 49 46 49 46 49 46 49 46 49 49 49 46 49 49 46 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 46 46 49 49 49 49 49 46 49 49 46 49 46 49 49 49 49 49 49 46 49 46 49 46 49 49 49 49 49 49 46 49 46 46 49 49 49 49 49 49 49 46 49 49 49 49 49 49 46 49 49 49 49 49 49 49 49
*/
