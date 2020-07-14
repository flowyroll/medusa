.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x6810, %rsi
lea addresses_A_ht+0x14a80, %rdi
nop
nop
nop
cmp %rbp, %rbp
mov $104, %rcx
rep movsb
nop
sub $11822, %r8
lea addresses_A_ht+0x17f42, %rsi
lea addresses_normal_ht+0xc980, %rdi
xor %r13, %r13
mov $102, %rcx
rep movsw
nop
nop
sub %rbp, %rbp
lea addresses_A_ht+0x1c180, %rsi
lea addresses_WT_ht+0x1d580, %rdi
nop
add $565, %rbx
mov $34, %rcx
rep movsq
nop
nop
nop
nop
add $53056, %rdi
lea addresses_UC_ht+0x153e0, %rsi
lea addresses_A_ht+0x2230, %rdi
and $46427, %r14
mov $125, %rcx
rep movsb
nop
nop
nop
nop
cmp $16698, %r13
lea addresses_WC_ht+0xe590, %rcx
cmp %r13, %r13
mov $0x6162636465666768, %r8
movq %r8, %xmm7
movups %xmm7, (%rcx)
nop
cmp %rdi, %rdi
lea addresses_D_ht+0x12b7a, %rsi
lea addresses_WT_ht+0x14d80, %rdi
nop
nop
nop
nop
cmp $30261, %rbx
mov $119, %rcx
rep movsw
nop
nop
cmp $38685, %rcx
lea addresses_D_ht+0x13000, %rcx
nop
nop
nop
inc %rdi
mov $0x6162636465666768, %r13
movq %r13, (%rcx)
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_WT_ht+0x1e180, %rsi
lea addresses_normal_ht+0x9500, %rdi
clflush (%rsi)
nop
nop
cmp %rbp, %rbp
mov $5, %rcx
rep movsw
nop
nop
nop
nop
xor $4224, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r8
push %r9
push %rdi
push %rsi

// Faulty Load
lea addresses_US+0x4180, %rdi
nop
nop
add $7691, %r10
movups (%rdi), %xmm2
vpextrq $1, %xmm2, %rsi
lea oracles, %r13
and $0xff, %rsi
shlq $12, %rsi
mov (%r13,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %r9
pop %r8
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_US', 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': True, 'congruent': 8, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}}
{'dst': {'same': True, 'congruent': 11, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_A_ht'}}
{'dst': {'same': True, 'congruent': 10, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}}
{'dst': {'same': True, 'congruent': 4, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC_ht', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D_ht', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}}
{'00': 1}
00
*/
