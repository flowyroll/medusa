.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r8
push %rbp
push %rbx
lea addresses_D_ht+0x5e97, %rbx
nop
nop
nop
nop
sub $50914, %r8
mov $0x6162636465666768, %rbp
movq %rbp, (%rbx)
nop
nop
nop
sub $11301, %r12
pop %rbx
pop %rbp
pop %r8
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_normal+0x1f819, %rsi
lea addresses_WC+0x6a99, %rdi
inc %r12
mov $10, %rcx
rep movsb
nop
nop
nop
nop
and $12862, %rcx

// Store
lea addresses_RW+0x127cd, %rbp
clflush (%rbp)
nop
nop
nop
nop
nop
sub $35546, %r10
movb $0x51, (%rbp)
nop
nop
nop
nop
nop
and $40082, %r10

// Load
mov $0x24916a0000000ecd, %rsi
nop
add $28653, %rcx
movups (%rsi), %xmm6
vpextrq $0, %xmm6, %rdi
sub $18013, %rdi

// Store
lea addresses_normal+0xb87d, %rax
clflush (%rax)
cmp %rdi, %rdi
movb $0x51, (%rax)
nop
nop
nop
nop
nop
xor %rax, %rax

// Store
mov $0xfcd, %rsi
nop
nop
add %rbp, %rbp
mov $0x5152535455565758, %rdi
movq %rdi, (%rsi)
sub %r12, %r12

// Store
lea addresses_WT+0x2dcd, %rax
nop
nop
nop
nop
nop
dec %rcx
movw $0x5152, (%rax)
nop
nop
nop
add $11104, %rdi

// Faulty Load
mov $0x4f88f700000007cd, %rcx
nop
nop
nop
nop
cmp %rsi, %rsi
vmovntdqa (%rcx), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r12
lea oracles, %r10
and $0xff, %r12
shlq $12, %r12
mov (%r10,%r12,1), %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_normal'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WC'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 8}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_NC', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1}}
{'00': 81}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
