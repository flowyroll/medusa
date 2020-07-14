.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x44ba, %rsi
lea addresses_UC_ht+0x1adba, %rdi
nop
cmp %r8, %r8
mov $116, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp %r14, %r14
lea addresses_WT_ht+0x183a2, %r13
nop
mfence
movl $0x61626364, (%r13)
sub $19522, %r8
lea addresses_A_ht+0xa2fa, %r14
nop
nop
xor $63963, %rdx
movb $0x61, (%r14)
nop
nop
nop
nop
cmp $65199, %rsi
lea addresses_normal_ht+0x28be, %rsi
nop
nop
nop
nop
add %rdi, %rdi
movl $0x61626364, (%rsi)
sub %r8, %r8
lea addresses_A_ht+0x1cfda, %r14
nop
nop
nop
nop
add %rdi, %rdi
and $0xffffffffffffffc0, %r14
movntdqa (%r14), %xmm5
vpextrq $0, %xmm5, %rsi
nop
nop
nop
nop
nop
and $31849, %rdi
lea addresses_WC_ht+0x158a, %r8
nop
nop
nop
nop
sub %r13, %r13
movb $0x61, (%r8)
nop
nop
nop
nop
nop
cmp $13821, %r8
lea addresses_normal_ht+0x1dcba, %r13
nop
cmp $32148, %r8
vmovups (%r13), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rcx
nop
and $28453, %r14
lea addresses_D_ht+0x150ba, %rcx
nop
nop
cmp $35422, %rsi
vmovups (%rcx), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rdi
nop
cmp $28128, %r14
lea addresses_WC_ht+0xde2a, %rsi
lea addresses_WC_ht+0x10a20, %rdi
dec %r14
mov $64, %rcx
rep movsb
nop
nop
nop
xor $49745, %r13
lea addresses_WT_ht+0x697a, %rsi
lea addresses_WC_ht+0x1ceba, %rdi
nop
nop
nop
nop
cmp %r14, %r14
mov $69, %rcx
rep movsb
nop
nop
nop
nop
and %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %r9
push %rbx
push %rdx
push %rsi

// Store
mov $0x46c73c0000000b7a, %r10
nop
add $41610, %r9
movl $0x51525354, (%r10)
nop
xor %rsi, %rsi

// Store
lea addresses_WT+0x1e3e, %r10
clflush (%r10)
nop
xor $56224, %rdx
movb $0x51, (%r10)
nop
nop
nop
nop
xor %r15, %r15

// Store
lea addresses_WT+0x42ba, %r15
nop
nop
nop
nop
nop
and %r9, %r9
movw $0x5152, (%r15)
nop
nop
nop
xor $30873, %rsi

// Store
lea addresses_normal+0x179e4, %rdx
nop
nop
nop
nop
xor %r9, %r9
mov $0x5152535455565758, %rsi
movq %rsi, (%rdx)
nop
nop
add $52335, %r15

// Faulty Load
lea addresses_D+0x18ba, %r9
nop
nop
xor $24051, %rbx
mov (%r9), %dx
lea oracles, %r13
and $0xff, %rdx
shlq $12, %rdx
mov (%r13,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rbx
pop %r9
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_NC', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': True, 'size': 8, 'type': 'addresses_normal', 'congruent': 1}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 9, 'type': 'addresses_A_ht'}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A_ht', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal_ht', 'congruent': 1}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_A_ht', 'congruent': 4}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC_ht', 'congruent': 4}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 8}}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}}
{'36': 4}
36 36 36 36
*/
