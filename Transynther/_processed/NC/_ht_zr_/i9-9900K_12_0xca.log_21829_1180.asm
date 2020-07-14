.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x450, %r10
nop
nop
nop
and %r9, %r9
movb $0x61, (%r10)
nop
nop
nop
cmp $52558, %r10
lea addresses_WC_ht+0x19a70, %rsi
lea addresses_normal_ht+0xf70, %rdi
nop
nop
nop
xor $32703, %rbp
mov $28, %rcx
rep movsw
nop
nop
nop
nop
nop
inc %rdi
lea addresses_A_ht+0x14bb0, %rsi
lea addresses_UC_ht+0x11970, %rdi
nop
nop
sub %rbp, %rbp
mov $77, %rcx
rep movsq
nop
nop
nop
nop
sub $1643, %rsi
lea addresses_WT_ht+0xe3a8, %r9
nop
sub $16740, %r12
mov (%r9), %r10
nop
nop
nop
add %rdi, %rdi
lea addresses_UC_ht+0x149f0, %rdi
nop
sub %r10, %r10
movw $0x6162, (%rdi)
nop
nop
nop
nop
inc %r10
lea addresses_WT_ht+0x1b93, %rsi
clflush (%rsi)
nop
add %rbp, %rbp
movb $0x61, (%rsi)
nop
nop
nop
cmp $60289, %r12
lea addresses_WT_ht+0xaa70, %r10
and $63698, %r12
movw $0x6162, (%r10)
nop
nop
nop
xor %r10, %r10
lea addresses_D_ht+0x1c830, %rbp
nop
nop
sub %r12, %r12
mov $0x6162636465666768, %rcx
movq %rcx, (%rbp)
nop
nop
nop
and %rcx, %rcx
lea addresses_normal_ht+0xd970, %r9
nop
nop
nop
nop
nop
add %rsi, %rsi
movb (%r9), %cl
nop
nop
cmp $23720, %rbp
lea addresses_normal_ht+0x116b0, %rsi
clflush (%rsi)
nop
nop
nop
add %rcx, %rcx
mov $0x6162636465666768, %rbp
movq %rbp, (%rsi)
nop
nop
nop
sub $29715, %r10
lea addresses_UC_ht+0x1a6d4, %rsi
lea addresses_A_ht+0x187d0, %rdi
clflush (%rdi)
nop
nop
xor %rbp, %rbp
mov $99, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp %r9, %r9
lea addresses_normal_ht+0x820c, %rsi
lea addresses_UC_ht+0x3f70, %rdi
nop
nop
nop
nop
cmp %r14, %r14
mov $122, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WT_ht+0x9fb0, %r12
nop
nop
nop
nop
nop
cmp %r10, %r10
movw $0x6162, (%r12)
nop
nop
nop
nop
nop
xor $30776, %rdi
lea addresses_UC_ht+0x1cf70, %r12
nop
nop
nop
cmp %r9, %r9
mov (%r12), %cx
nop
nop
and $5655, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r9
push %rax
push %rcx

// Faulty Load
mov $0x6f22660000000b70, %r13
inc %rax
vmovups (%r13), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rcx
lea oracles, %r9
and $0xff, %rcx
shlq $12, %rcx
mov (%r9,%rcx,1), %rcx
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_A_ht', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WT_ht', 'same': True, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': True, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_normal_ht', 'same': True, 'AVXalign': False, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 1}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 1}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': True, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'44': 14416, '45': 7213, '00': 94, '48': 106}
45 44 44 45 44 44 44 44 44 45 45 44 44 44 44 45 45 44 44 44 44 45 45 45 44 44 44 44 44 44 44 44 45 44 45 44 44 44 44 44 45 45 45 45 44 45 45 44 44 45 45 44 44 45 45 44 44 45 45 44 44 44 00 45 44 44 44 45 44 45 45 44 44 45 44 44 45 44 44 44 44 45 44 44 45 44 44 44 44 45 44 45 44 45 44 44 44 45 44 44 44 45 44 44 44 44 44 44 44 45 45 44 44 44 44 45 45 44 44 44 45 45 44 44 44 45 44 45 45 44 45 44 45 45 45 44 44 45 45 44 44 44 44 45 44 44 45 44 45 44 45 45 44 44 44 44 45 45 44 44 45 45 44 44 44 44 45 44 44 45 44 44 44 44 44 45 45 44 44 44 45 44 45 45 44 44 44 45 44 45 44 44 45 45 45 44 44 44 44 45 45 44 44 44 44 45 44 44 44 45 44 44 44 45 44 44 44 44 45 45 45 44 44 45 45 44 44 44 44 44 44 44 44 45 44 44 45 45 45 44 44 44 45 45 45 44 44 44 45 44 44 44 44 45 44 44 44 45 45 44 44 44 45 44 44 45 45 44 44 44 44 44 44 45 45 45 44 44 45 44 44 45 44 44 44 44 45 45 45 45 44 45 44 48 44 44 44 44 45 44 44 45 44 44 44 45 44 44 44 44 44 45 45 44 44 45 45 44 44 44 00 45 44 44 44 45 45 44 45 44 44 44 44 44 45 45 45 44 44 44 44 45 44 44 45 45 44 44 45 45 45 45 44 44 45 45 44 45 48 44 44 44 44 44 45 45 45 44 44 45 45 44 44 44 45 45 44 44 45 44 45 45 44 44 44 44 45 44 44 44 44 45 44 45 44 44 45 44 44 44 44 44 44 45 44 44 44 45 44 44 44 44 45 44 45 44 44 45 44 44 45 44 44 44 44 45 44 44 44 45 44 45 45 44 44 44 45 44 45 44 44 45 44 45 45 45 44 44 44 44 44 44 44 44 45 44 44 45 44 44 44 44 45 44 44 44 45 44 44 45 44 44 44 44 45 45 45 44 45 45 45 44 44 44 44 44 45 45 44 44 44 44 45 44 44 44 44 45 44 44 45 44 45 45 45 44 44 44 45 44 44 44 44 45 44 44 44 44 44 45 44 44 45 45 44 44 45 44 45 45 44 44 44 45 45 45 44 44 45 44 45 45 45 44 44 44 44 45 44 44 44 45 44 44 44 44 45 45 44 44 44 45 44 44 44 45 44 44 44 45 44 44 44 44 44 45 45 44 44 45 45 44 44 44 45 44 44 44 44 45 44 44 45 45 44 44 44 44 44 44 44 45 44 45 45 44 44 45 45 44 44 44 44 45 44 44 44 45 44 44 44 45 44 44 44 45 44 44 44 45 44 44 44 45 44 45 44 44 45 45 45 44 44 45 45 44 44 44 44 45 44 44 44 44 44 44 44 44 45 44 44 44 44 45 44 44 44 45 44 44 44 45 44 44 44 45 44 44 44 44 44 44 44 45 45 45 44 44 44 45 44 45 44 44 44 45 45 44 45 45 44 44 44 45 45 44 45 45 44 45 45 45 45 44 44 44 45 44 44 44 44 45 45 44 44 44 44 45 45 45 44 44 44 44 44 45 45 44 44 45 45 44 44 45 45 44 44 44 44 45 44 44 44 45 44 44 44 45 45 45 44 44 44 44 45 44 44 45 44 44 44 44 45 44 44 45 44 44 44 44 44 44 44 45 44 44 45 44 45 44 44 44 45 44 44 44 44 45 44 45 44 44 45 44 45 45 45 44 44 44 44 45 44 45 44 48 44 44 44 44 45 44 45 45 45 44 44 44 45 44 44 44 45 44 44 44 45 00 44 44 45 44 45 00 44 44 45 44 44 44 45 44 44 45 45 44 45 45 44 44 44 44 44 45 44 44 44 45 45 44 44 44 44 45 44 45 44 45 44 45 44 44 45 45 48 45 44 44 44 44 45 44 44 44 45 44 44 44 45 44 44 45 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 45 44 44 45 44 44 44 45 44 45 44 44 44 45 45 44 44 44 44 45 44 45 44 45 44 44 45 45 44 44 44 44 45 44 44 44 45 45 44 44 44 44 44 44 45 44 44 44 45 45 44 44 44 44 44 45 45 45 44 44 45 44 44 44 45 44 45 45 44 44 44 45 45 44 45 44 45 44 44 44 44 44 45
*/
