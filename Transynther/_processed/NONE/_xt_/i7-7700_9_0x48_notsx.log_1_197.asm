.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1d2b6, %rsi
lea addresses_A_ht+0x1ebb6, %rdi
and $64844, %rbp
mov $12, %rcx
rep movsl
nop
sub %rdi, %rdi
lea addresses_D_ht+0x75b6, %rsi
lea addresses_D_ht+0x19ff6, %rdi
nop
nop
nop
nop
and $36340, %r13
mov $22, %rcx
rep movsw
nop
nop
nop
add $14227, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %r8
push %r9
push %rbx
push %rsi

// Store
lea addresses_PSE+0x1a384, %r15
nop
nop
inc %r8
mov $0x5152535455565758, %rsi
movq %rsi, %xmm3
movntdq %xmm3, (%r15)
nop
nop
nop
nop
nop
inc %r9

// Load
lea addresses_WT+0xedb6, %r14
clflush (%r14)
nop
nop
xor $50082, %r10
movb (%r14), %bl
nop
nop
nop
nop
nop
dec %r10

// Store
lea addresses_D+0x6db6, %r8
nop
nop
nop
nop
dec %r9
movw $0x5152, (%r8)
nop
nop
nop
nop
cmp %r8, %r8

// Faulty Load
lea addresses_RW+0x2ab6, %r15
nop
nop
nop
add $12922, %r8
mov (%r15), %esi
lea oracles, %r15
and $0xff, %rsi
shlq $12, %rsi
mov (%r15,%rsi,1), %rsi
pop %rsi
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_RW', 'congruent': 0}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_PSE', 'congruent': 1}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT', 'congruent': 8}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D', 'congruent': 8}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_RW', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 10, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}}
{'32': 1}
32
*/
