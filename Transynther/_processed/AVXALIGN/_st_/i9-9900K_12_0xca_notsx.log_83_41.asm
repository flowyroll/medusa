.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xd438, %rsi
lea addresses_D_ht+0x5290, %rdi
nop
nop
nop
nop
nop
cmp $13855, %rbp
mov $12, %rcx
rep movsb
nop
nop
sub $32310, %r10
lea addresses_D_ht+0x71fa, %rdx
clflush (%rdx)
nop
nop
nop
nop
nop
and $6232, %r14
movb $0x61, (%rdx)
sub %rbp, %rbp
lea addresses_UC_ht+0x18ff8, %rsi
lea addresses_WC_ht+0x176f8, %rdi
nop
nop
xor $39323, %rdx
mov $110, %rcx
rep movsw
xor $42419, %rdx
lea addresses_WT_ht+0x1b798, %rsi
lea addresses_WT_ht+0x1d878, %rdi
nop
nop
nop
nop
nop
xor $61590, %r9
mov $127, %rcx
rep movsb
nop
nop
add %r9, %r9
lea addresses_D_ht+0x113f8, %rsi
lea addresses_normal_ht+0x17778, %rdi
nop
nop
inc %r9
mov $112, %rcx
rep movsb
nop
nop
and $18244, %rcx
lea addresses_normal_ht+0x93d4, %r10
nop
nop
nop
nop
nop
cmp %rcx, %rcx
mov $0x6162636465666768, %rdx
movq %rdx, %xmm4
vmovups %ymm4, (%r10)
nop
nop
nop
xor %rsi, %rsi
lea addresses_normal_ht+0x1aff8, %rdi
nop
xor $7499, %r14
movl $0x61626364, (%rdi)
nop
nop
nop
nop
add %r10, %r10
lea addresses_A_ht+0x1b738, %rdi
nop
nop
nop
nop
nop
xor $62075, %r10
movw $0x6162, (%rdi)
nop
nop
nop
nop
sub $3551, %rsi
lea addresses_WT_ht+0xb278, %rsi
lea addresses_normal_ht+0xbe28, %rdi
nop
and $7486, %rbp
mov $120, %rcx
rep movsb
sub %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %r9
push %rax
push %rdx
push %rsi

// Store
mov $0x6a7e950000000df8, %r8
nop
nop
nop
sub $11710, %rax
movw $0x5152, (%r8)
nop
nop
nop
add %r14, %r14

// Faulty Load
lea addresses_WT+0x15ff8, %rdx
nop
xor $10845, %r9
mov (%rdx), %esi
lea oracles, %r12
and $0xff, %rsi
shlq $12, %rsi
mov (%r12,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rax
pop %r9
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WT', 'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}}
{'39': 83}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
