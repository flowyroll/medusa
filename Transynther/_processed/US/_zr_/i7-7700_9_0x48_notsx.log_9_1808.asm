.global s_prepare_buffers
s_prepare_buffers:
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x1c84d, %rdi
nop
xor %rbp, %rbp
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
movups %xmm6, (%rdi)
nop
nop
nop
nop
nop
lfence
lea addresses_WT_ht+0x906d, %rsi
lea addresses_D_ht+0x8907, %rdi
clflush (%rdi)
nop
nop
nop
cmp $64735, %r9
mov $79, %rcx
rep movsb
nop
nop
nop
nop
nop
sub %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r8
push %r9
push %rbp
push %rdi
push %rsi

// Store
lea addresses_D+0x1cf45, %r10
xor $57993, %r8
movl $0x51525354, (%r10)
xor %r10, %r10

// Store
lea addresses_A+0x7095, %rdi
nop
nop
nop
nop
xor $54367, %r9
movb $0x51, (%rdi)
xor $34041, %r9

// Load
lea addresses_RW+0x2e25, %r8
nop
nop
nop
nop
add %rbp, %rbp
mov (%r8), %rsi
nop
nop
nop
nop
inc %r10

// Faulty Load
lea addresses_US+0x11625, %r14
nop
nop
nop
sub $36417, %r10
movb (%r14), %r9b
lea oracles, %r14
and $0xff, %r9
shlq $12, %r9
mov (%r14,%r9,1), %r9
pop %rsi
pop %rdi
pop %rbp
pop %r9
pop %r8
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_US', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A', 'congruent': 2}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_RW', 'congruent': 10}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': True, 'congruent': 1, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}}
{'00': 9}
00 00 00 00 00 00 00 00 00
*/
