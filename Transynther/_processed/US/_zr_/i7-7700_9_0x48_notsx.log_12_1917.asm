.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1d020, %r13
clflush (%r13)
nop
and $45863, %r8
mov $0x6162636465666768, %r14
movq %r14, (%r13)
nop
sub $13682, %rdx
lea addresses_UC_ht+0x74ee, %r10
nop
nop
nop
nop
nop
add %rdx, %rdx
movups (%r10), %xmm4
vpextrq $0, %xmm4, %r14
nop
nop
nop
nop
sub $20190, %r10
lea addresses_D_ht+0x1c3a4, %rsi
lea addresses_UC_ht+0x16170, %rdi
clflush (%rdi)
nop
add %r14, %r14
mov $63, %rcx
rep movsl
nop
nop
dec %rdi
lea addresses_WC_ht+0x15470, %rsi
lea addresses_normal_ht+0x1dcb0, %rdi
nop
nop
xor %r8, %r8
mov $37, %rcx
rep movsb
nop
nop
nop
nop
nop
sub $60178, %r13
lea addresses_D_ht+0x9960, %rsi
sub $18815, %r14
mov (%rsi), %dx
add %r13, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %rbx
push %rcx
push %rdi

// Load
lea addresses_WT+0x1100c, %rdi
nop
nop
nop
nop
nop
inc %rbx
movb (%rdi), %r15b
nop
and $12824, %rbx

// Faulty Load
lea addresses_US+0x18470, %rdi
nop
nop
nop
nop
cmp $46308, %r10
mov (%rdi), %rcx
lea oracles, %rbx
and $0xff, %rcx
shlq $12, %rcx
mov (%rbx,%rcx,1), %rcx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_US', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT', 'congruent': 2}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT_ht', 'congruent': 3}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 1}}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D_ht', 'congruent': 4}}
{'00': 12}
00 00 00 00 00 00 00 00 00 00 00 00
*/
