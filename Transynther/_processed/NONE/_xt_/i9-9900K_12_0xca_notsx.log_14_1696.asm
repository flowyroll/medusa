.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x13d00, %rax
nop
nop
nop
nop
nop
add $62112, %r13
movb (%rax), %r12b
nop
dec %rbp
lea addresses_D_ht+0x11520, %rsi
lea addresses_normal_ht+0x20e0, %rdi
nop
nop
nop
nop
nop
xor $48450, %r15
mov $66, %rcx
rep movsq
nop
nop
nop
nop
nop
and %r15, %r15
lea addresses_normal_ht+0x1ad00, %rcx
nop
nop
nop
nop
nop
xor %rax, %rax
movw $0x6162, (%rcx)
nop
nop
nop
nop
nop
cmp $6683, %r12
lea addresses_WT_ht+0x16900, %r13
xor %rcx, %rcx
mov (%r13), %r12w
nop
nop
nop
cmp %r13, %r13
lea addresses_normal_ht+0x6028, %rsi
lea addresses_A_ht+0x1d350, %rdi
nop
and %r12, %r12
mov $76, %rcx
rep movsl
nop
nop
nop
nop
xor %r12, %r12
lea addresses_WC_ht+0x3f01, %r13
nop
sub $3861, %r12
movb (%r13), %r15b
nop
nop
nop
dec %rbp
lea addresses_UC_ht+0x1b190, %rax
nop
and $36644, %rbp
mov (%rax), %ecx
nop
nop
nop
and %rbp, %rbp
lea addresses_WC_ht+0x11d00, %rsi
lea addresses_UC_ht+0x1d940, %rdi
nop
inc %r13
mov $114, %rcx
rep movsb
nop
nop
nop
nop
lfence
lea addresses_normal_ht+0x12c84, %rsi
lea addresses_normal_ht+0x8688, %rdi
nop
nop
nop
nop
xor %r13, %r13
mov $9, %rcx
rep movsq
nop
nop
nop
nop
cmp $2288, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r8
push %r9
push %rax
push %rcx
push %rdi

// Store
mov $0x3fb4170000000b10, %r8
nop
nop
nop
add %rcx, %rcx
movw $0x5152, (%r8)
nop
nop
nop
nop
dec %rax

// Faulty Load
lea addresses_WT+0xc500, %rdi
nop
nop
nop
nop
add %r13, %r13
vmovups (%rdi), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %r15
lea oracles, %r13
and $0xff, %r15
shlq $12, %r15
mov (%r13,%r15,1), %r15
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 3}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 2, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}}
{'39': 14}
39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
