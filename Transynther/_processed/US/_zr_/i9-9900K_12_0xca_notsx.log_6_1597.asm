.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x184a2, %rsi
lea addresses_A_ht+0xa4a2, %rdi
nop
nop
nop
add %r10, %r10
mov $47, %rcx
rep movsw
nop
and %r9, %r9
lea addresses_WT_ht+0xbe32, %rsi
lea addresses_WT_ht+0x91a2, %rdi
clflush (%rdi)
nop
sub $22124, %rbx
mov $11, %rcx
rep movsl
nop
nop
add %r10, %r10
lea addresses_WC_ht+0x1ae62, %rcx
nop
nop
nop
nop
nop
dec %r8
movb (%rcx), %bl
nop
nop
nop
nop
nop
dec %rdi
lea addresses_WT_ht+0x16008, %rsi
nop
nop
nop
nop
xor %r9, %r9
movb (%rsi), %r10b
sub %rdi, %rdi
lea addresses_normal_ht+0x121a2, %r10
nop
nop
nop
cmp %rsi, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm0
movups %xmm0, (%r10)
nop
nop
add $13151, %rbx
lea addresses_normal_ht+0x12a6a, %rsi
lea addresses_normal_ht+0x7fa2, %rdi
nop
nop
sub %r12, %r12
mov $75, %rcx
rep movsw
nop
nop
nop
nop
inc %r8
lea addresses_UC_ht+0xc122, %rsi
lea addresses_UC_ht+0xe3a2, %rdi
nop
nop
nop
inc %r8
mov $32, %rcx
rep movsl
nop
nop
nop
nop
add $28591, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r8
push %rax
push %rcx
push %rdi
push %rdx

// Faulty Load
lea addresses_US+0x2ba2, %rax
nop
nop
and %r8, %r8
mov (%rax), %r13
lea oracles, %rcx
and $0xff, %r13
shlq $12, %r13
mov (%rcx,%r13,1), %r13
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 1, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}}
{'00': 6}
00 00 00 00 00 00
*/
