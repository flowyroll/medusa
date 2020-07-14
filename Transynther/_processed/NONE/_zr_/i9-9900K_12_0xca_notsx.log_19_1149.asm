.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r15
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xd538, %r15
nop
nop
nop
nop
cmp %r14, %r14
mov (%r15), %r13d
nop
nop
nop
nop
nop
add %r9, %r9
lea addresses_A_ht+0x14778, %rsi
lea addresses_D_ht+0x5d60, %rdi
nop
nop
nop
nop
nop
add $2349, %r10
mov $27, %rcx
rep movsw
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_WC_ht+0x2a30, %rsi
lea addresses_A_ht+0x12250, %rdi
nop
nop
nop
nop
add %r10, %r10
mov $49, %rcx
rep movsq
nop
nop
nop
nop
mfence
lea addresses_A_ht+0x1ae50, %r13
nop
nop
nop
nop
nop
sub $58401, %rsi
movb $0x61, (%r13)
nop
nop
nop
xor %r14, %r14
lea addresses_D_ht+0xd010, %r15
nop
nop
nop
nop
dec %rsi
vmovups (%r15), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rdi
nop
nop
nop
nop
nop
cmp $41852, %r10
lea addresses_normal_ht+0x13770, %rsi
lea addresses_UC_ht+0x8850, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
and $61447, %r14
mov $89, %rcx
rep movsl
and %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r8
push %r9
push %rbx
push %rcx
push %rdx

// Store
mov $0x4e23e60000000ed0, %r14
clflush (%r14)
nop
nop
nop
sub %rcx, %rcx
mov $0x5152535455565758, %rdx
movq %rdx, %xmm1
movups %xmm1, (%r14)
and %r8, %r8

// Faulty Load
lea addresses_A+0x14850, %rbx
nop
nop
nop
sub $36407, %r9
mov (%rbx), %ecx
lea oracles, %rbx
and $0xff, %rcx
shlq $12, %rcx
mov (%rbx,%rcx,1), %rcx
pop %rdx
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}}
{'00': 19}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
