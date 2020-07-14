.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xe84f, %rsi
lea addresses_normal_ht+0x24f, %rdi
clflush (%rdi)
nop
nop
cmp %r12, %r12
mov $27, %rcx
rep movsl
sub %r14, %r14
lea addresses_WC_ht+0xfe57, %rsi
lea addresses_D_ht+0x1b6cf, %rdi
nop
nop
nop
cmp $46136, %rax
mov $104, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp $59370, %rdi
lea addresses_A_ht+0x1709f, %rsi
lea addresses_WC_ht+0x1ab5f, %rdi
sub $33307, %r10
mov $16, %rcx
rep movsl
nop
nop
nop
nop
sub $31882, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %rax
push %rbx
push %rdi
push %rdx

// Store
lea addresses_WT+0x1624f, %rax
and $368, %rdi
mov $0x5152535455565758, %rbx
movq %rbx, %xmm0
vmovups %ymm0, (%rax)
sub $43489, %r14

// Store
mov $0x7e66cc0000000c73, %r13
clflush (%r13)
nop
nop
nop
nop
xor $45777, %rbx
mov $0x5152535455565758, %rdx
movq %rdx, (%r13)
nop
nop
sub $49747, %r13

// Faulty Load
lea addresses_PSE+0x724f, %r14
clflush (%r14)
nop
nop
nop
and %r13, %r13
mov (%r14), %rax
lea oracles, %r14
and $0xff, %rax
shlq $12, %rax
mov (%r14,%rax,1), %rax
pop %rdx
pop %rdi
pop %rbx
pop %rax
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': True, 'congruent': 9, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}}
{'33': 12}
33 33 33 33 33 33 33 33 33 33 33 33
*/
