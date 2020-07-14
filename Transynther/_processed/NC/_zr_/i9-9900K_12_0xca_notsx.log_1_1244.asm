.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xed87, %r13
nop
nop
nop
and $2274, %rbp
movb (%r13), %bl
nop
inc %rbp
lea addresses_normal_ht+0x33c8, %rcx
cmp %rsi, %rsi
mov (%rcx), %eax
nop
nop
nop
cmp $32438, %rdi
lea addresses_UC_ht+0x9638, %rbp
nop
nop
nop
nop
and $42783, %rdi
movups (%rbp), %xmm5
vpextrq $0, %xmm5, %rsi
nop
nop
nop
nop
nop
inc %rdi
lea addresses_normal_ht+0xc9d4, %r13
nop
nop
nop
nop
xor $44606, %rax
vmovups (%r13), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rcx
nop
xor %rdi, %rdi
lea addresses_WT_ht+0x11d18, %rsi
lea addresses_A_ht+0x1e238, %rdi
nop
nop
add $51097, %rax
mov $38, %rcx
rep movsb
nop
nop
nop
nop
nop
sub $64866, %rbx
lea addresses_UC_ht+0x13238, %rsi
lea addresses_normal_ht+0xa38, %rdi
nop
and $27680, %r8
mov $68, %rcx
rep movsq
nop
nop
nop
nop
inc %rax
lea addresses_A_ht+0x3f2a, %r8
nop
add %rsi, %rsi
movl $0x61626364, (%r8)
nop
nop
nop
nop
nop
xor $38898, %rbx
lea addresses_UC_ht+0x1a378, %rsi
lea addresses_WC_ht+0x91d8, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
add $57087, %rbp
mov $24, %rcx
rep movsw
nop
nop
inc %rcx
lea addresses_D_ht+0xe198, %rcx
nop
nop
nop
sub %rbp, %rbp
mov (%rcx), %rdi
nop
nop
nop
nop
nop
inc %r8
lea addresses_normal_ht+0x14238, %rsi
lea addresses_UC_ht+0x15478, %rdi
nop
nop
cmp $30913, %rbx
mov $69, %rcx
rep movsq
and %rbp, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_PSE+0x11838, %rsi
mov $0x3097b40000000238, %rdi
nop
xor %rbx, %rbx
mov $7, %rcx
rep movsl
and %rdi, %rdi

// Faulty Load
mov $0x3097b40000000238, %rsi
clflush (%rsi)
nop
xor %rdi, %rdi
movups (%rsi), %xmm2
vpextrq $1, %xmm2, %rdx
lea oracles, %rcx
and $0xff, %rdx
shlq $12, %rdx
mov (%rcx,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_PSE'}, 'dst': {'same': True, 'congruent': 0, 'type': 'addresses_NC'}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}}
{'00': 1}
00
*/
