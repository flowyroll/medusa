.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x4672, %rsi
lea addresses_UC_ht+0x50ca, %rdi
nop
nop
nop
dec %r14
mov $81, %rcx
rep movsq
and %rdx, %rdx
lea addresses_UC_ht+0x41f6, %rsi
lea addresses_UC_ht+0x197ca, %rdi
nop
nop
xor %rbx, %rbx
mov $43, %rcx
rep movsw
nop
sub $10939, %r14
lea addresses_D_ht+0x266d, %rdi
nop
sub $5394, %rbx
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
movups %xmm3, (%rdi)
nop
nop
sub %r14, %r14
lea addresses_A_ht+0xf3ca, %rsi
clflush (%rsi)
nop
nop
dec %rcx
mov (%rsi), %r14w
nop
nop
nop
dec %r14
lea addresses_normal_ht+0x2fca, %rbx
nop
cmp $5954, %r12
mov $0x6162636465666768, %r14
movq %r14, %xmm3
movups %xmm3, (%rbx)
nop
add %rbx, %rbx
lea addresses_WC_ht+0x1865a, %rsi
lea addresses_A_ht+0x115ea, %rdi
nop
nop
nop
nop
sub %rbp, %rbp
mov $108, %rcx
rep movsl
nop
nop
cmp $55241, %rdx
lea addresses_D_ht+0xd89a, %rdi
nop
nop
add %rbp, %rbp
movb $0x61, (%rdi)
nop
nop
and $27520, %r12
lea addresses_A_ht+0x1708a, %r12
add $51565, %rbx
movw $0x6162, (%r12)
nop
nop
add %rcx, %rcx
lea addresses_A_ht+0xb3ca, %rdi
nop
nop
nop
cmp %rdx, %rdx
mov (%rdi), %rcx
sub %rbp, %rbp
lea addresses_WC_ht+0x781a, %rsi
lea addresses_UC_ht+0x8cca, %rdi
nop
nop
nop
nop
cmp %r12, %r12
mov $13, %rcx
rep movsl
nop
nop
nop
nop
nop
xor $46971, %rbp
lea addresses_A_ht+0x1b569, %rdi
nop
nop
xor %rdx, %rdx
movups (%rdi), %xmm1
vpextrq $0, %xmm1, %rsi
nop
nop
dec %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r14
push %rbx
push %rdx
push %rsi

// Store
mov $0x7239de0000000536, %r14
nop
inc %rsi
movw $0x5152, (%r14)
nop
nop
nop
nop
add $63102, %r14

// Faulty Load
lea addresses_A+0x67ca, %r12
nop
nop
nop
sub %rbx, %rbx
vmovups (%r12), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %r13
lea oracles, %rbx
and $0xff, %r13
shlq $12, %r13
mov (%rbx,%r13,1), %r13
pop %rsi
pop %rdx
pop %rbx
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 1}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 0, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}, 'dst': {'same': True, 'congruent': 8, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'00': 18, '48': 2}
00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00
*/
