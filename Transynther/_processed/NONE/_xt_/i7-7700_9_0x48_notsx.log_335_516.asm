.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r15
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x40d6, %r15
clflush (%r15)
nop
cmp $65365, %rcx
movups (%r15), %xmm0
vpextrq $1, %xmm0, %r13
cmp $56319, %r15
lea addresses_UC_ht+0x194f6, %rsi
lea addresses_A_ht+0x4fd6, %rdi
nop
nop
nop
nop
nop
add $34179, %r12
mov $29, %rcx
rep movsb
nop
nop
nop
xor %r12, %r12
lea addresses_normal_ht+0x16f36, %rsi
lea addresses_WC_ht+0x18e66, %rdi
nop
sub $18794, %r10
mov $127, %rcx
rep movsb
nop
sub %rcx, %rcx
lea addresses_WT_ht+0xe7ba, %rdi
nop
nop
nop
and $25012, %r10
movb (%rdi), %cl
cmp %rdi, %rdi
lea addresses_WC_ht+0x9ede, %r13
nop
nop
and $31089, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, (%r13)
nop
nop
and %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r15
push %r8
push %rsi

// Store
mov $0x6b8e3b0000000bd6, %r8
nop
sub $50913, %r10
movb $0x51, (%r8)

// Exception!!!
nop
mov (0), %r12
nop
nop
nop
nop
add %r8, %r8

// Faulty Load
lea addresses_WT+0xc3d6, %r10
nop
nop
dec %r15
movups (%r10), %xmm0
vpextrq $1, %xmm0, %rsi
lea oracles, %r12
and $0xff, %rsi
shlq $12, %rsi
mov (%r12,%rsi,1), %rsi
pop %rsi
pop %r8
pop %r15
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT', 'congruent': 0}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 1, 'type': 'addresses_NC', 'congruent': 8}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC_ht', 'congruent': 7}}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 5, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 2}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC_ht', 'congruent': 3}, 'OP': 'STOR'}
{'39': 335}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
