.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x12b32, %r15
nop
nop
sub %rbx, %rbx
mov (%r15), %r14w
nop
nop
nop
nop
add $7952, %r15
lea addresses_D_ht+0x13f92, %rsi
lea addresses_WT_ht+0xe972, %rdi
nop
nop
nop
nop
nop
and %rax, %rax
mov $125, %rcx
rep movsw
nop
xor %rbx, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_RW+0x1ad72, %rcx
clflush (%rcx)
sub %r8, %r8
mov (%rcx), %dx
nop
nop
nop
inc %r15

// Store
lea addresses_D+0x1eade, %r10
nop
inc %r9
mov $0x5152535455565758, %r13
movq %r13, (%r10)
nop
nop
nop
and %rdx, %rdx

// REPMOV
lea addresses_WT+0x18872, %rsi
lea addresses_UC+0x1e1b2, %rdi
clflush (%rsi)
nop
sub %r13, %r13
mov $123, %rcx
rep movsw
nop
nop
nop
nop
xor %rsi, %rsi

// Store
mov $0x41ec120000000b72, %rdx
nop
add %rcx, %rcx
movl $0x51525354, (%rdx)
nop
and $29430, %r13

// Faulty Load
lea addresses_UC+0x14172, %r10
nop
nop
nop
and %r9, %r9
movntdqa (%r10), %xmm2
vpextrq $0, %xmm2, %rcx
lea oracles, %r13
and $0xff, %rcx
shlq $12, %rcx
mov (%r13,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_RW', 'congruent': 9}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_D', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_UC'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_WT'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_NC', 'congruent': 5}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT_ht', 'congruent': 5}}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 0, 'type': 'addresses_D_ht'}}
{'00': 1}
00
*/
