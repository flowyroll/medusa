.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xcf85, %rax
nop
nop
nop
add $42911, %r13
mov (%rax), %dx
nop
nop
nop
add %r10, %r10
lea addresses_A_ht+0x1ccd, %rsi
lea addresses_normal_ht+0xf91d, %rdi
nop
nop
xor %r14, %r14
mov $119, %rcx
rep movsw
nop
nop
nop
cmp $60906, %r13
lea addresses_D_ht+0x50ad, %r14
inc %rsi
vmovups (%r14), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %r10
nop
nop
nop
nop
inc %rsi
lea addresses_WT_ht+0x1cecd, %rdx
nop
nop
xor %rdi, %rdi
and $0xffffffffffffffc0, %rdx
vmovaps (%rdx), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %r14
and %r10, %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %rax
push %rbx
push %rdi
push %rdx
push %rsi

// Store
mov $0x3e9fab000000014d, %r10
nop
nop
nop
and %rax, %rax
movb $0x51, (%r10)
nop
and $11067, %r10

// Load
lea addresses_WC+0x1f79, %rsi
nop
nop
sub %rdx, %rdx
mov (%rsi), %r12
nop
xor %rbx, %rbx

// Store
lea addresses_PSE+0x50cd, %rdi
nop
nop
nop
add %rdx, %rdx
movw $0x5152, (%rdi)
nop
nop
nop
nop
nop
sub %r12, %r12

// Faulty Load
mov $0x1ad72c0000000ccd, %rdx
nop
nop
cmp %rdi, %rdi
vmovups (%rdx), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rax
lea oracles, %r10
and $0xff, %rax
shlq $12, %rax
mov (%r10,%rax,1), %rax
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %rax
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 7, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 1, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 9, 'size': 2, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 2, 'size': 2, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 5, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': True, 'congruent': 6, 'size': 32, 'same': False, 'NT': False}}
{'49': 1519, '45': 8341, '46': 11969}
46 46 46 46 46 45 46 46 45 45 46 46 46 45 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 45 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 45 46 45 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 49 46 45 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 49 46 45 45 46 46 46 46 46 45 46 46 45 45 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 45 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 45 45 46 46 45 46 46 46 46 46 46 46 46 46 46 45 45 45 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 45 45 45 49 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 49 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 49 45 49 49 46 46 46 45 46 45 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 45 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 45 46 46 45 46 46 46 49 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 45 46 45 46 46 46 46 46 46 46 46 46 45 45 46 46 45 46 46 45 45 46 46 46 45 46 46 46 46 45 46 45 46 46 46 46 46 45 45 46 46 45 45 46 46 45 46 45 45 45 45 45 45 45 45 45 49 45 45 45 49 45 45 45 45 45 49 49 49 49 45 45 45 45 45 45 49 45 49 45 45 45 45 45 45 45 49 45 45 49 45 45 45 45 45 49 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 49 45 49 45 45 46 45 45 49 45 45 45 45 45 45 49 45 45 45 49 45 45 45 45 45 45 45 49 49 49 49 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 46 46 45 46 46 46 46 46 46 46 46 46 46 45 46 46 45 45 46 46 45 46 46 46 46 46 46 46 46 46 46 46 46 45 45 46 46 46 45 46 46 46 45 46 46 46 46 45 46 46 46 46 46 46 46 46 45 45 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 45 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 45 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 45 45 46 46 46 46 46 46 45 46 46 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 49 45 49 45 45 45 45 45 45 49 45 45 45 45 49 45 49 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 49 45 45 46 46 46 45 46 45 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 45 46 46 45 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 45 45 45 45 49 45 45 49 45 45 45 45 45 49 45 45 49 45 45 45 45 45 45 45 45 45 45 49 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 49 45 49 49 45 45 45 45 49 45 45 45 49 49 49 45 45 45 45 45 45 45 45 45 46 46 46 46 46 46 46 45 45 46 46 46 46 46 46 46 46 46 46
*/
