.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r14
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x922f, %r13
nop
and $48549, %r10
and $0xffffffffffffffc0, %r13
vmovaps (%r13), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rax
nop
lfence
lea addresses_normal_ht+0x16f7f, %r9
nop
nop
nop
dec %r14
mov (%r9), %r12w
cmp %rax, %rax
lea addresses_WC_ht+0x2de9, %rax
nop
nop
nop
and %rbp, %rbp
movl $0x61626364, (%rax)
nop
nop
nop
nop
sub $37612, %r9
lea addresses_A_ht+0x15655, %rax
add %r14, %r14
movb $0x61, (%rax)
nop
nop
nop
cmp $30899, %r10
lea addresses_A_ht+0x13e55, %r12
nop
nop
nop
and $8952, %r9
movb $0x61, (%r12)
nop
nop
nop
nop
xor %r12, %r12
lea addresses_A_ht+0x5855, %r9
nop
xor %r12, %r12
movb (%r9), %r10b
nop
nop
nop
nop
xor $20049, %r12
lea addresses_A_ht+0x19875, %rsi
lea addresses_normal_ht+0x1a055, %rdi
clflush (%rsi)
nop
nop
nop
xor %r14, %r14
mov $75, %rcx
rep movsq
nop
nop
nop
nop
xor $47710, %rdi
lea addresses_A_ht+0xceed, %rcx
nop
and %r12, %r12
mov (%rcx), %r14w
nop
nop
add $55737, %r14
lea addresses_D_ht+0xf035, %rsi
lea addresses_WC_ht+0x5e55, %rdi
nop
nop
add %r10, %r10
mov $17, %rcx
rep movsb
nop
nop
cmp $25657, %r12
lea addresses_normal_ht+0xd6dd, %rsi
lea addresses_A_ht+0x19f93, %rdi
nop
nop
nop
nop
and $58569, %r12
mov $7, %rcx
rep movsl
nop
xor $58524, %r13
lea addresses_A_ht+0x184fd, %rsi
lea addresses_UC_ht+0xb145, %rdi
nop
inc %r13
mov $94, %rcx
rep movsw
nop
nop
sub %r9, %r9
lea addresses_D_ht+0x12e55, %rsi
lea addresses_A_ht+0x2255, %rdi
nop
nop
nop
nop
nop
xor %rax, %rax
mov $5, %rcx
rep movsq
nop
nop
and %rax, %rax
lea addresses_D_ht+0xcb5, %rsi
lea addresses_UC_ht+0x83d5, %rdi
clflush (%rdi)
nop
nop
nop
inc %r9
mov $63, %rcx
rep movsl
nop
nop
nop
add $9516, %r12
lea addresses_normal_ht+0xd4b5, %r10
nop
nop
nop
nop
cmp %r14, %r14
mov (%r10), %r12w
and %r13, %r13
lea addresses_WT_ht+0x1aafd, %r14
nop
nop
nop
nop
nop
sub %rsi, %rsi
mov $0x6162636465666768, %r13
movq %r13, %xmm0
movups %xmm0, (%r14)
nop
sub $24606, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r9
push %rbp
push %rbx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WT+0x12385, %rsi
nop
nop
nop
nop
nop
and $55946, %rbp
mov $0x5152535455565758, %rdi
movq %rdi, %xmm2
movups %xmm2, (%rsi)
nop
nop
sub %rsi, %rsi

// Faulty Load
mov $0x7604e70000000655, %rdi
nop
nop
xor $51529, %r9
movups (%rdi), %xmm1
vpextrq $1, %xmm1, %rbp
lea oracles, %r9
and $0xff, %rbp
shlq $12, %rbp
mov (%r9,%rbp,1), %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %r9
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': True, 'NT': True, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'00': 1529, '45': 9363, '46': 10824, '47': 28, '44': 80, '7f': 5}
00 45 46 46 46 45 46 46 45 46 46 46 45 45 45 00 46 46 45 00 46 45 45 00 46 45 46 46 46 46 46 00 45 45 46 45 46 45 45 46 45 45 46 46 46 46 46 45 45 45 46 46 46 46 46 46 45 46 46 45 46 45 45 45 45 46 45 00 46 45 45 45 46 45 00 45 46 45 45 45 46 45 00 46 46 46 46 46 46 47 46 46 45 45 46 46 45 45 00 46 45 46 45 45 45 45 45 45 45 00 45 46 46 46 46 46 47 46 46 45 45 46 46 46 46 45 45 46 45 46 45 45 45 45 45 45 46 46 45 46 46 46 46 45 45 45 45 46 45 46 46 45 46 45 46 45 46 45 46 46 45 46 46 46 45 00 46 45 00 46 45 45 46 46 46 45 46 45 00 45 46 46 45 00 45 46 45 46 45 00 46 45 00 46 46 45 46 45 00 46 45 00 46 45 46 45 00 46 45 00 46 45 46 46 45 46 45 46 45 45 45 46 46 45 45 45 45 46 46 45 46 46 46 00 45 45 46 45 46 46 45 45 46 45 00 46 46 46 46 46 45 45 46 45 46 45 46 46 46 45 45 45 45 45 46 45 45 46 45 46 45 45 46 45 45 46 46 46 45 00 45 46 46 46 46 45 45 46 45 46 45 46 46 45 46 45 45 46 45 45 46 46 00 46 46 46 45 46 45 45 45 00 46 46 46 46 46 46 45 46 46 45 46 45 45 46 45 45 45 46 45 46 46 45 00 46 45 46 45 45 45 45 46 45 00 46 45 45 46 45 00 46 45 00 46 45 45 46 45 46 45 44 45 45 46 45 00 46 45 46 46 46 46 46 45 00 46 45 46 45 00 46 45 47 46 45 00 46 45 46 45 00 46 45 00 46 46 45 46 45 45 45 46 46 46 46 46 46 45 45 46 45 46 46 45 45 46 45 00 45 45 45 45 45 46 00 46 46 45 45 46 45 46 46 45 46 46 46 45 00 45 00 46 46 45 00 45 46 45 46 45 45 45 45 45 46 45 00 46 45 46 45 46 45 00 46 45 46 46 45 46 45 46 45 45 46 45 45 45 00 46 45 46 45 46 46 45 46 45 46 00 45 45 46 45 46 45 46 45 46 46 46 45 46 46 45 46 45 46 45 46 46 46 45 45 46 45 45 46 45 46 45 46 46 46 45 46 44 45 46 45 46 46 45 45 46 45 46 45 46 45 46 45 46 45 45 46 45 46 45 45 46 45 46 46 45 46 45 46 45 46 45 45 45 46 46 46 45 46 46 46 45 46 46 45 46 46 45 45 45 45 45 46 00 00 46 46 46 45 46 46 45 46 45 46 46 45 46 46 45 46 00 46 46 46 45 46 46 45 46 45 45 45 45 45 46 46 46 45 46 46 46 46 45 46 46 46 45 46 46 46 46 46 45 45 45 46 45 46 45 46 46 45 46 45 46 46 46 45 00 45 00 46 46 46 46 45 46 46 45 45 46 45 45 46 45 45 45 45 46 46 00 46 46 45 45 45 46 46 45 45 46 45 45 46 46 45 46 45 46 46 46 45 46 00 46 46 46 00 46 46 46 45 45 45 46 46 46 45 00 46 45 45 46 45 00 46 45 46 46 45 46 46 45 46 46 46 45 46 46 46 45 45 46 46 00 46 45 46 45 00 46 45 45 46 46 46 45 45 45 46 45 46 45 45 45 45 46 46 45 45 45 46 45 45 46 45 46 45 46 46 45 46 46 45 46 45 46 46 45 45 46 45 46 46 45 46 46 00 46 45 45 46 45 45 46 45 46 45 46 45 46 46 45 00 45 00 45 46 46 46 45 46 45 46 45 46 46 46 46 45 00 45 46 46 45 45 45 45 46 45 45 46 45 45 45 46 45 45 46 45 46 45 46 45 46 46 46 45 46 45 45 00 45 46 45 46 45 46 46 46 45 46 45 46 46 46 45 46 46 46 46 45 46 45 46 46 46 46 00 46 45 45 46 46 46 45 46 45 45 45 46 45 46 45 46 45 46 45 46 45 46 46 45 45 45 46 46 45 46 45 46 45 46 46 45 46 46 45 46 46 45 46 46 45 46 45 46 45 46 45 46 45 46 46 45 46 45 46 46 46 46 45 46 45 45 46 46 46 46 46 45 45 45 46 45 45 46 46 46 46 46 45 46 45 46 45 46 45 46 46 45 46 45 46 46 45 46 45 46 45 46 45 45 46 45 46 45 46 46 46 00 46 46 46 00 46 45 46 44
*/
